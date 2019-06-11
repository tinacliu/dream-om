// import swal from 'sweetalert';

// const initSweetalert = (selector, options = {}, callback = () => {}) => {
//   const swalButton = document.querySelector(selector);
//   if (swalButton) { // protect other pages
//     swalButton.addEventListener('click', () => {
//       swal(options).then(callback); // <-- add the `.then(callback)`
//     });
//   }
// };

// export { initSweetalert };


import swal from 'sweetalert';

const initSweetalert = (selector, options = {}, callback = () => {}) => {
  const swalButton = document.querySelectorAll(selector);
  if (swalButton) { // protect other pages
    swalButton.forEach(function(element) {
      element.addEventListener('click', () => {
      swal(options).then(callback); // <-- add the `.then(callback)`
    });
  })};
};

export { initSweetalert };
