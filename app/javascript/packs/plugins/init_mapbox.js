// import mapboxgl from 'mapbox-gl';

// const mapElement = document.getElementById('pills-map');

// const buildMap = () => {
//   mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
//   return new mapboxgl.Map({
//     container: 'pills-map',
//     style: 'mapbox://styles/tinacliu/cjwgi4nmj3pn91cs7td92c9hk'
//   });
// };

// const addMarkersToMap = (map, markers) => {
//   markers.forEach((marker) => {
//     new mapboxgl.Marker()
//       .setLngLat([ marker.lng, marker.lat ])
//       .addTo(map);
//   });
// };

// const fitMapToMarkers = (map, markers) => {
//   const bounds = new mapboxgl.LngLatBounds();
//   markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
//   map.fitBounds(bounds, { padding: 70, zoom:7, minZoom: 5, maxZoom: 15 });
// };

// const initMapbox = () => {
//   if (mapElement) {
//     const map = buildMap();
//     const markers = JSON.parse(mapElement.dataset.markers);
//     addMarkersToMap(map, markers);
//     fitMapToMarkers(map, markers);
//     map.addControl(new mapboxgl.NavigationControl());
//     map.resize();
//    // $(window).resize(function(){map.resize()});
//     // const canvasElement = mapElement.querySelector(".mapboxgl-canvas")
//     // mapElement.style.width = "100%";
//     // mapElement.style.height = "700px";
//     // map.resize();
//  }
// };

// export { initMapbox };
