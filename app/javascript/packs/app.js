// Add event listener to all trigger buttons for showing target hidden element
// Should have .js-trigger-show class
const showBoxElements = document.querySelectorAll('.js-trigger-show');
showBoxElements.forEach((element, index) => {
  element.addEventListener('click', (event) => {
    var target = element.getAttribute("data-target");
    document.getElementById(target).style.display = 'block';
  });
});

// Add event listener to all trigger buttons for hiding target element
// Should have .js-trigger-hide class
const hideBoxElements = document.querySelectorAll('.js-trigger-hide');
hideBoxElements.forEach((element, index) => {
  element.addEventListener('click', (event) => {
    var target = element.getAttribute("data-target");
    document.getElementById(target).style.display = 'none';
  });
});