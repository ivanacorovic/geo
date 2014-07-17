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
  
  geojsonFeature =
    type: "Feature",
    properties: 
      name: "Coors Field",
      amenity: "Baseball Stadium",
      popupContent: "This is where the Rockies play!"
    geometry:
      type: "Point",
      coordinates: [-104.99404, 39.75621]

  myLines =
    type: "LineString",
    coordinates: [[-100, 40], [-105, 45], [-110, 55]],
    type: "LineString",
    coordinates: [[-105, 40], [-110, 45], [-115, 55]]

  myStyle = 
    color: "#ff7800",
    weight: 5,
    opacity: 0.65

  myLineData = L.geoJson(myLines, {
    style: myStyle
  })
  myLineData.addData(myLines)

  myLayer = L.geoJson()
  myLayer.addData(geojsonFeature)

  map = L.map('map', {
    center: [39.73, -104.99],
    zoom: 5,
    layers: [cities, my_data, myLayer, myLineData]
  });

  baseMaps = 
    My_data: my_data

  overlayMaps = 
    Cities: cities
    MyLayer: myLayer
    MyLineData:  myLineData

  L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
      attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
  }).addTo(map);

 

  

  L.control.layers(baseMaps, overlayMaps, myLayer).addTo(map)