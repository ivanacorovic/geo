$ ->

  if($('#map2').length) > 0 
   
    for company in $(".company_id li")
      lat = $(company).data("latitude")
      lon = $(company).data("longitude")
      name = $(company).data("name")
      if lat and lon
        map = L.map('map2', {
          center: [lat, lon],
          zoom: 15
        });

        L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
          attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors', max_zoom: 18
        }).addTo(map);
        marker = L.marker([lat, lon]).bindPopup("<b>#{name}</b>").addTo(map)
