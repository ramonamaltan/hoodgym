const initGeoLocation = () => {
  const options = {
    enableHighAccuracy: true,
    timeout: 5000,
    maximumAge: 0
  };
  
  const success = (pos) => {
    const coordinates = pos.coords;
  
    console.log(`Latitude : ${coordinates.latitude}`);
    console.log(`Longitude: ${coordinates.longitude}`);
    console.log(`Accuracy: ${coordinates.accuracy}`);
  }
  
  const error = (err) => {
    console.warn(`ERROR(${err.code}): ${err.message}`);
  }
  
  const geolocator = document.getElementById('geolocator');
  geolocator.addEventListener('click', () => {
    navigator.geolocation.getCurrentPosition(success, error, options);
  })
  
}

export { initGeoLocation };