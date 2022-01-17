let markers = [];
let map ;

window.initMap = function () {
  const uluru = { lat: -25.344, lng: 131.036 };

  map = new google.maps.Map(document.getElementById("contact-map"), {
    center: uluru,
    zoom: 8,
  })

  const marker = new google.maps.Marker({
    position: uluru,
    map: map,
    draggable: false,
    animation: google.maps.Animation.DROP
  });
  markers.push(marker)

  google.maps.event.addListener(map, 'click', function(event) {
    placeMarker(event.latLng);
  })

  
}

// Removes the markers from the map, but keeps them in the array.
window.hideMarkers = function() {
  setMapOnAll(null);
}

// Sets the map on all markers in the array.
window.setMapOnAll = function(map) {
  for (let i = 0; i < markers.length; i++) {
    markers[i].setMap(map);
  } 
}

window.placeMarker =  function(location) {
  hideMarkers()
  marker = new google.maps.Marker({
    position: location,
    map: map
  })
  markers.push(marker)
  console.log(location);
  $("input#marker_lat").val(location.lat())
  $("input#marker_lng").val(location.lng())
}
