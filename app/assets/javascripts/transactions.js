var geojson;

  if ($("#transactions_map").length>0) {
    var map = L.map('transactions_map').setView([42.908846, 19.231684], 8);
    L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png').addTo(map); 

    $.ajax({
        dataType: 'text',
        url: 'transactions.json',
        success: function(data) {
          geojson = $.parseJSON(data);
          return map.featureLayer.setGeoJSON(geojson);
        },
      });

    var popup, transaction, lat, lon;
    var popups = [];
  alert("ivana");
    for (var i = 0; i< geojson.length; i++) {

      transaction = geojson[i];
      [lat, lon] = transaction.properties.geometry.coordinates;

      if (lat && lon) {
        popup = new L.Popup();
        popup.setLatLng(new L.LatLng(lat, lon));
        popup.setContent(transaction.properties.name);
        popups.push(popup);
      }
    }

    for (var i = 0; i < popups.length; i++) {
      setTimeout(function(x) { return function () { map.addLayer(popups[x]);  }; }(i), 4000+i*2000);
    }
    for (var i = 0; i < popups.length; i++) {
      setTimeout(function(x) { return function () { map.removeLayer(popups[x]);  }; }(i), 10000+i*2000);
    }

  }