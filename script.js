const next = document.querySelector('.next')
const prev = document.querySelector('.prev')
const comment = document.querySelector('#list-comment')
const commentItem = document.querySelectorAll('#list-comment .item')
var translateY = 0
var count = commentItem.length

next.addEventListener('click', function (event) {
  event.preventDefault()
  if (count == 1) {
    return false
  }
  translateY += -400
  comment.style.transform = `translateY(${translateY}px)`
  count--
})

prev.addEventListener('click', function (event) {
  event.preventDefault()
  if (count == 3) {
    return false
  }
  translateY += 400
  comment.style.transform = `translateY(${translateY}px)`
  count++
})
document.addEventListener('DOMContentLoaded', function() {
  const compareCheckboxes = document.querySelectorAll('.compare-checkbox');
  let selectedProducts = [];

  compareCheckboxes.forEach(checkbox => {
      checkbox.addEventListener('change', () => {
          const product = checkbox.getAttribute('data-product');
          
          if (checkbox.checked) {
              if (selectedProducts.length < 2) {
                  selectedProducts.push(product);
              } else {
                  alert("Bạn chỉ có thể chọn tối đa 2 sản phẩm để so sánh");
                  checkbox.checked = false;
              }
          } else {
              selectedProducts = selectedProducts.filter(item => item !== product);
          }
          localStorage.setItem('selectedProducts', JSON.stringify(selectedProducts));
          if (selectedProducts.length === 2) {
              window.location.href = 'compare.html';
          }
      });
  });
});

document.addEventListener('DOMContentLoaded', function() {
  const compareCheckboxes = document.querySelectorAll('.compare-checkbox');
  const detailsButtons = document.querySelectorAll('.btn-details');
  detailsButtons.forEach((button, index) => {
      button.addEventListener('click', () => {
          const productID = index;  
          window.location.href = `details.html?id=${productID}`; 
          
      });
  });
  compareCheckboxes.forEach(checkbox => {
      checkbox.addEventListener('change', () => {
      });
  });
});

document.addEventListener('DOMContentLoaded', function() {
  const compareCheckboxes = document.querySelectorAll('.compare-checkbox');
  const detailsButtons = document.querySelectorAll('.btn-detail2');
  detailsButtons.forEach((button, index) => {
      button.addEventListener('click', () => {
          const productID = index;  
          window.location.href = `detail2.html?id=${productID}`; 
          
      });
  });
  compareCheckboxes.forEach(checkbox => {
      checkbox.addEventListener('change', () => {
      });
  });
});
//Asagi3
document.addEventListener('DOMContentLoaded', function() {
  const compareCheckboxes = document.querySelectorAll('.compare-checkbox');
  const detailsButtons = document.querySelectorAll('.btn-detail3');
  detailsButtons.forEach((button, index) => {
      button.addEventListener('click', () => {
          const productID = index;  
          window.location.href = `detail3.html?id=${productID}`; 
          
      });
  });
  compareCheckboxes.forEach(checkbox => {
      checkbox.addEventListener('change', () => {
      });
  });
});
//Asagi4
document.addEventListener('DOMContentLoaded', function() {
  const compareCheckboxes = document.querySelectorAll('.compare-checkbox');
  const detailsButtons = document.querySelectorAll('.btn-detail4');
  detailsButtons.forEach((button, index) => {
      button.addEventListener('click', () => {
          const productID = index;  
          window.location.href = `detail4.html?id=${productID}`; 
          
      });
  });
  compareCheckboxes.forEach(checkbox => {
      checkbox.addEventListener('change', () => {
      });
  });
});
//Asagi5
document.addEventListener('DOMContentLoaded', function() {
  const compareCheckboxes = document.querySelectorAll('.compare-checkbox');
  const detailsButtons = document.querySelectorAll('.btn-detail5');
  detailsButtons.forEach((button, index) => {
      button.addEventListener('click', () => {
          const productID = index;  
          window.location.href = `detail5.html?id=${productID}`; 
          
      });
  });
  compareCheckboxes.forEach(checkbox => {
      checkbox.addEventListener('change', () => {
      });
  });
});
//Asagi6
document.addEventListener('DOMContentLoaded', function() {
  const compareCheckboxes = document.querySelectorAll('.compare-checkbox');
  const detailsButtons = document.querySelectorAll('.btn-detail6');
  detailsButtons.forEach((button, index) => {
      button.addEventListener('click', () => {
          const productID = index;  
          window.location.href = `detail6.html?id=${productID}`; 
          
      });
  });
  compareCheckboxes.forEach(checkbox => {
      checkbox.addEventListener('change', () => {
      });
  });
});
//Asagi7
document.addEventListener('DOMContentLoaded', function() {
  const compareCheckboxes = document.querySelectorAll('.compare-checkbox');
  const detailsButtons = document.querySelectorAll('.btn-detail7');
  detailsButtons.forEach((button, index) => {
      button.addEventListener('click', () => {
          const productID = index;  
          window.location.href = `detail7.html?id=${productID}`; 
          
      });
  });
  compareCheckboxes.forEach(checkbox => {
      checkbox.addEventListener('change', () => {
      });
  });
});
//Asagi8
document.addEventListener('DOMContentLoaded', function() {
  const compareCheckboxes = document.querySelectorAll('.compare-checkbox');
  const detailsButtons = document.querySelectorAll('.btn-detail8');
  detailsButtons.forEach((button, index) => {
      button.addEventListener('click', () => {
          const productID = index;  
          window.location.href = `detail8.html?id=${productID}`; 
          
      });
  });
  compareCheckboxes.forEach(checkbox => {
      checkbox.addEventListener('change', () => {
      });
  });
});
