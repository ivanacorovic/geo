$ = jQuery

$ ->

  map = L.map('map', {
    center: [42.44, 19.26],
    zoom: 5
  });

  L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors', max_zoom: 18
  }).addTo(map);

  for company in $(".companies li")
    lat = $(company).data("latitude")
    lon = $(company).data("longitude")
    name = $(company).data("name")
    if lat and lon
      marker = L.marker([lat, lon]).bindPopup("<b>#{name}</b>").addTo(map)