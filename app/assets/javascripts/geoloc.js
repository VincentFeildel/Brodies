const form = document.getElementById("geoForm");
const coord = document.getElementById("coord");


  event.preventDefault();
  const adress = document.getElementById("adress").value.replace(/ /g, "%20");
  const url = `https://maps.googleapis.com/maps/api/geocode/json?address=${adress}`;
  fetch(url)
    .then(response => response.json())
    .then((data) => {
      console.log(data.results);
      const lat = (data.results[0].geometry.location.lat);
      const lng = (data.results[0].geometry.location.lng);
      coord.innerText = `${lat}, ${lng}`;
      const map = new google.maps.Map(document.getElementById('map'), {
        center: { lat: lat, lng: lng },
        zoom: 14
        // mapTypeId: 'satellite'
      });
      const marker = new google.maps.Marker({
        map: map,
        position: { lat: lat, lng: lng }
      });
    });

const map = new google.maps.Map(document.getElementById('map'), {
  center: { lat: 48.8648482, lng: 2.3798534 },
  zoom: 14
  // mapTypeId: 'satellite'
});
const marker = new google.maps.Marker({
  map: map,
  position: { lat: 48.8648482, lng: 2.3798534 }
});
// form.addEventListener('submit', (event)
