const address = `${@activity.address} ${@activity.city} ${@activity.zip_code}`;
const url = `https://maps.googleapis.com/maps/api/geocode/json?address=${address}`;
fetch(url)
  .then(response => response.json())
  .then((data) => {
    console.log(data.results);
    const lat = (data.results[0].geometry.location.lat);
    const lng = (data.results[0].geometry.location.lng);
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


