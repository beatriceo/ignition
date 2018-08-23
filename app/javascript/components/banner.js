import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Choose", "Book", "Drive"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
