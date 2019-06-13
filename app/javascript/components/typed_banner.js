import Typed from 'typed.js';

// const loadDynamicBannerText = () => {
// const bannerId = document.getElementById('typed-searched')
//   if (bannerId) {
//     new Typed('#typed-searched', {
//       strings: ["London", "NW10", "E2 8DY", "Paddington Station"],
//       typeSpeed: 80,
//       loop: true,
//       attr: 'placeholder'
//     });
//   };
// }


const loadDynamicBannerTagline = () => {
const bannerId = document.getElementById('typed-tagline')
  if (bannerId) {
    new Typed('#typed-tagline', {
      strings: [" Land", " Old Houses"],
      typeSpeed: 80,
      loop: true,
    });
  };
}

export { loadDynamicBannerTagline  };

