import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initUpdateNavbarOnScroll } from '../components/filterbar';
import { initMapbox, fitMapToMarkers } from '../plugins/init_mapbox';

initUpdateNavbarOnScroll();

// mapbox stuff
initMapbox();
const returnedMap = initMapbox();
console.log(returnedMap)

// returnedMap.resize();
document.querySelector("#pills-map-tab").addEventListener("click", (event) => {
  console.log("click tab")
  setTimeout(function() {
    returnedMap.resize();
    fitMapToMarkers(returnedMap, JSON.parse(document.getElementById("map").dataset.markers));
  }, 200);


})
