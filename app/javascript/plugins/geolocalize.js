const apiKey = "2c27197fe81e40ad82eb2bb38f1f5146";
const currentLocationLink = document.getElementById('current-location');
const cityForm = document.getElementById('city_form');

const fetchCity = (coordinates) => {
  fetch(`https://api.opencagedata.com/geocode/v1/json?q=${coordinates.lat}+${coordinates.lon}&key=${apiKey}`)
  .then(response => response.json())
  .then(data => {
    const city = data.results[0].components.city;
    cityForm.value = city;
  });
};

currentLocationLink.addEventListener('click', (event) => {
    event.preventDefault();
    navigator.geolocation.getCurrentPosition((data) => {
    const coordinates = { lat: data.coords.latitude, lon: data.coords.longitude };
    fetchCity(coordinates);
  });
});
