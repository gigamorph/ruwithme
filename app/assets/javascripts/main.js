window.ru = {};

(function (root) {

  var googleMapURL = 'https://www.google.com/maps/place/';

  $(document).ready(function () {
    genMapLinks();
    $('.dropdown').dropdown();
   });

  function genMapLinks() {
    $('.map-address').each(function (index, value) {
      $addressSpan = $(value);
      var address = $addressSpan.text();
      var mapURL = googleMapURL + address.replace(/ +/g, '+');
      var $mapAnchor = $('<a>')
        .addClass('sk-map-link')
        .attr('href', mapURL)
        .attr('target', '_blank')
        .text(' click open in google maps');
      $addressSpan.append($mapAnchor);
    });
  }

})(ru);
