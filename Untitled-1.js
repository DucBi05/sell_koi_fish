public/details.js
document.addEventListener('DOMContentLoaded', async () => {
    const urlParams = new URLSearchParams(window.location.search);
    const fishId = urlParams.get('id');

    try {
        const response = await fetch(`http://localhost:3000/fish/${fishId}`);
        const data = await response.json();

        document.getElementById('product-name').textContent = data.Name;
        document.getElementById('product-breed').textContent = data.Breed;
        document.getElementById('product-origin').textContent = data.Origin;
        document.getElementById('product-gender').textContent = data.Gender;
        document.getElementById('product-age').textContent = `${data.Age} tuổi`;
        document.getElementById('product-size').textContent = `${data.Size} cm`;
        document.getElementById('product-personality').textContent = data.Personality;
        document.getElementById('product-food').textContent = `${data.FoodAmountPerDay} g`;
        document.getElementById('product-selection-rate').textContent = `${data.SelectionRate * 100}%`;
        document.getElementById('product-price').textContent = `${data.Price} VND`;
        document.querySelector('.product-info img').src = data.Image;
    } catch (error) {
        console.error('Lỗi khi lấy dữ liệu cá Koi:', error);
    }
});
