details.js
const koiFishData = [
    {
        id: 0,
        name: "Asagi 1",
        breed: "Asagi",
        origin: "Nhật Bản",
        gender: "Đực",
        age: "2 năm",
        size: "30 cm",
        personality: "Hiền lành",
        food: "20g/ngày",
        selectionRate: "95%",
        price: "Liên hệ",
        image: "img/Asagi.jpg"
    },
    {
        id: 1,
        name: "Showa 1",
        breed: "Showa",
        origin: "Nhật Bản",
        gender: "Cái",
        age: "3 năm",
        size: "35 cm",
        personality: "Năng động",
        food: "25g/ngày",
        selectionRate: "90%",
        price: "Liên hệ",
        image: "img/Showa.jpg"
    }
];
const urlParams = new URLSearchParams(window.location.search);
const koiId = urlParams.get("id");
const koiFish = koiFishData.find(fish => fish.id == koiId);
if (koiFish) {
    document.getElementById("product-image").src = koiFish.image;
    document.getElementById("product-name").textContent = koiFish.name;
    document.getElementById("product-breed").textContent = koiFish.breed;
    document.getElementById("product-origin").textContent = koiFish.origin;
    document.getElementById("product-gender").textContent = koiFish.gender;
    document.getElementById("product-age").textContent = koiFish.age;
    document.getElementById("product-size").textContent = koiFish.size;
    document.getElementById("product-personality").textContent = koiFish.personality;
    document.getElementById("product-food").textContent = koiFish.food;
    document.getElementById("product-selection-rate").textContent = koiFish.selectionRate;
    document.getElementById("product-price").textContent = koiFish.price;
} else {
    document.getElementById("product-details").innerHTML = "<p>Không tìm thấy thông tin cá Koi.</p>";
}
c

