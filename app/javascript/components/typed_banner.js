import Typed from 'typed.js';

const loadDynamicBannerText = () => {
const bannerId = document.getElementById('typed-searched')
  if (bannerId) {
    new Typed('#typed-searched', {
      strings: ["London", "NW10", "E2 8DY", "Paddington Station"],
      typeSpeed: 80,
      loop: true,
      attr: 'placeholder'
    });
  };
}

export { loadDynamicBannerText };
