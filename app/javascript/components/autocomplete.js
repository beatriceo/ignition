function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var listingLocation = document.getElementById('listing_location');

    if (listingLocation) {
      var autocomplete = new google.maps.places.Autocomplete(listingLocation, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(listingLocation, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
