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

const initUpdateSearchBar = () => {
  const searchbar = document.querySelector(".form-inline");
  if (searchbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 20) {
        searchbar.classList.remove('search-bar-landing-page');
      }
      if (window.scrollY < 20) {
        searchbar.classList.add('search-bar-landing-page');
      }
    });
  }
}

export { initUpdateSearchBar };


