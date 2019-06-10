import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#typed-searched', {
    strings: ["London", "8DY", "E2 8DY", "Paddington Station"],
    typeSpeed: 80,
    loop: true,
    attr: 'placeholder'
  });
}

export { loadDynamicBannerText };
