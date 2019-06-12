import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { loadDynamicBannerText } from '../components/typed_banner';
import { initUpdateNavbarOnScroll } from '../components/filterbar';
import { initMapbox, fitMapToMarkers } from '../plugins/init_mapbox';
import { initSortable } from '../plugins/init_sortable';
import { initSweetalert } from '../plugins/init_sweetalert';

initUpdateNavbarOnScroll();
loadDynamicBannerText();

// mapbox stuff
initMapbox();
// initSortable();
const returnedMap = initMapbox();

// returnedMap.resize();
const pills = document.querySelector("#pills-map-tab");
if (pills) {
  pills.addEventListener("click", (event) => {
    setTimeout(function() {
      returnedMap.resize();
      fitMapToMarkers(returnedMap, JSON.parse(document.getElementById("map").dataset.markers));
    }, 200);
  });
}

// dismiss alerts after 3 seconds
const alertDismissBtn = document.querySelector('.alert button');
if (alertDismissBtn) {
  setTimeout(() => {
    alertDismissBtn.click();
  }, 3000);
}

initSweetalert('#sweet-alert-demo', {
  title: "Submission successful!",
  text: "Property information will be sent to the architect",
  icon: "success"
}, (value) => {
  if (value) {
    const link = document.querySelector('#delete-link');
    link.click();
  }
});
