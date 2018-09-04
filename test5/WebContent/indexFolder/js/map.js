document.write('<script type="text/javascript" src="js/markermanager' + (document.location.search.indexOf('packed') > -1 ? '_packed' : '') + '.js"><' + '/script>');

//<![CDATA[

    var IMAGES = [ "map-point"];
    var ICONS = [];
    var map = null;
    var mgr = null;

    function setupMap() {
      if (GBrowserIsCompatible()) {
        map = new GMap2(document.getElementById("map"));
        map.addControl(new GLargeMapControl());
        map.setCenter(new GLatLng(48.25, 11.00), 4);
        map.enableDoubleClickZoom();
        window.setTimeout(setupWeatherMarkers, 0);
      }
    }

    function getWeatherIcon() {
      var i = Math.floor(IMAGES.length*Math.random());
      if (!ICONS[i]) {
        var icon = new GIcon();
        icon.image = "images/" 
            + IMAGES[i] + ".png";
        icon.iconAnchor = new GPoint(16, 16);
        icon.infoWindowAnchor = new GPoint(16, 0);
        icon.iconSize = new GSize(32, 32);
        icon.shadow = "images/" 
            + IMAGES[i] + "-shadow.png";
        icon.shadowSize = new GSize(59, 32);
        ICONS[i] = icon;
      }
      return ICONS[i];
    }

    function getRandomPoint() {
      var lat = 48.25 + (Math.random() - 0.5)*14.5;
      var lng = 11.00 + (Math.random() - 0.5)*36.0;
      return new GLatLng(Math.round(lat*10)/10, Math.round(lng*10)/10);
    }

    function getWeatherMarkers(n) {
      var batch = [];
      for (var i = 0; i < n; ++i) {
        batch.push(new GMarker(getRandomPoint(), { icon: getWeatherIcon() }));
      }
      return batch;
    }

    function setupWeatherMarkers() {
      mgr = new MarkerManager(map);
      mgr.addMarkers(getWeatherMarkers(20), 3);
      mgr.addMarkers(getWeatherMarkers(200), 6);
      mgr.addMarkers(getWeatherMarkers(1000), 8);
      mgr.refresh();
    }
    //]]>
	
	
	