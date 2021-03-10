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

const appearOnScroll = () => {
  const button = document.querySelector(".buttons-dropdown");
  if (button) {
  window.addEventListener('scroll', () => {
    if (window.scrollY >= 20) {
      button.classList.remove('d-none');
    } else {
      button.classList.add('d-none');
    }
  });
	}
};

export { appearOnScroll };
