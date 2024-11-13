server.js
const express = require('express');
const mysql = require('mysql2');
const app = express();
const PORT = 3000;
const db = mysql.createConnection({
    host: 'localhost',
    user: 'yourUsername',    
    database: 'KoiShop'
});

db.connect((err) => {
    if (err) {
        console.error('Lỗi kết nối cơ sở dữ liệu:', err);
        return;
    }
    console.log('Đã kết nối đến cơ sở dữ liệu MySQL');
});

app.use(express.static('public'));
app.get('/fish/:id', (req, res) => {
    const fishId = req.params.id;
    const query = 'SELECT * FROM Fish WHERE KoiID = ?';

    db.query(query, [fishId], (err, result) => {
        if (err) {
            return res.status(500).json({ error: 'Lỗi truy vấn cơ sở dữ liệu' });
        }
        res.json(result[0]);
    });
});
app.get('/fish-comparison', (req, res) => {
    const fishIds = req.query.fishIds ? req.query.fishIds.split(',') : [];
    
    if (fishIds.length === 0) {
        return res.status(400).json({ error: 'Không có ID cá nào được cung cấp' });
    }

    const query = `
        SELECT Fish.*, KoiFishCategory.name AS CategoryName
        FROM Fish
        INNER JOIN KoiFishCategory ON Fish.idCategory = KoiFishCategory.id
        WHERE Fish.KoiID IN (${fishIds.map(() => '?').join(',')});
    `;

    db.query(query, fishIds, (err, results) => {
        if (err) {
            return res.status(500).json({ error: err.message });
        }
        res.json(results);
    });
});

app.listen(PORT, () => {
    console.log(`Server chạy tại http://localhost:${PORT}`);
});
