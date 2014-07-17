$ = jQuery

$ ->

  redIcon = L.icon({
    iconUrl: 'assets/leaf-red.png',
    shadowUrl: 'assets/leaf-shadow.png',

    iconSize:     [38, 95],
    shadowSize:   [50, 64], 
    iconAnchor:   [22, 94], 
    shadowAnchor: [4, 62],  
    popupAnchor:  [-3, -76] 
  });
  
  my_data = L.layerGroup([])
  for location in $(".locations li")
    lat = $(location).data("latitude")
    lon = $(location).data("longitude")
    name = $(location).data("name")
    marker = L.marker([lat, lon], {icon: redIcon})
    marker.bindPopup("<b>#{name}</b>")
    my_data.addLayer(marker)

  littleton = L.marker([39.61, -105.02]).bindPopup('This is Littleton, CO.')
  denver    = L.marker([39.74, -104.99]).bindPopup('This is Denver, CO.')
  aurora    = L.marker([39.73, -104.8]).bindPopup('This is Aurora, CO.')
  golden    = L.marker([39.77, -105.23]).bindPopup('This is Golden, CO.')

  cities = L.layerGroup([littleton, denver, aurora, golden])
  
  map = L.map('map', {
    center: [39.73, -104.99],
    zoom: 5,
    layers: [cities, my_data]
  });

  baseMaps = {
    "My_data": my_data
  };

  overlayMaps = {
      "Cities": cities
  };

  L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
      attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
  }).addTo(map);

  L.control.layers(baseMaps, overlayMaps).addTo(map);