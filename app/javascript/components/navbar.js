const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 20) {
        navbar.classList.add('navbar-lewagon-grey');
      } else {
        navbar.classList.remove('navbar-lewagon-grey');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
