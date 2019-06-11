const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.col-filter-bar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 140) {
        navbar.classList.add('col-filter-bar-top');
      } else {
        navbar.classList.remove('col-filter-bar-top');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
