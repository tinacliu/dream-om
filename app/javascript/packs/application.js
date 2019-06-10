import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { loadDynamicBannerText } from '../components/typed_banner';
import { initUpdateNavbarOnScroll } from '../components/filterbar';
import { initMapbox, fitMapToMarkers } from '../plugins/init_mapbox';
import { initSortable } from '../plugins/init_sortable';

initUpdateNavbarOnScroll();

// mapbox stuff
initMapbox();
initSortable();
const returnedMap = initMapbox();
console.log(returnedMap)

// returnedMap.resize();
const pills = document.querySelector("#pills-map-tab");
if (pills) {
  pills.addEventListener("click", (event) => {
    console.log("click tab")
    setTimeout(function() {
      returnedMap.resize();
      fitMapToMarkers(returnedMap, JSON.parse(document.getElementById("map").dataset.markers));
    }, 200);
  });
}

// dismiss alerts after 2 seconds
const alertDismissBtn = document.querySelector('.alert button');
if (alertDismissBtn) {
  setTimeout(() => {
    alertDismissBtn.click();
  }, 2000);
}

loadDynamicBannerText();
