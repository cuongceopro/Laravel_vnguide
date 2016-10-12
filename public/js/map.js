var map;
var latln, mapOptions;
var zoom;
var longtitude, latitude;

function initialize(link) {
	// 中心の位置座標を指定する
	//var $script     = $('#map');
	//var string      = JSON.parse($script.attr('data-string'));
	//var link = JSON.parse($script.attr('data-link'));


	switch(link){
		case 'all':
			longitude = 16;
			latitude = 107;
			zoom = 5;
			break;
		case 'spot_westen_north':
			longitude = 24.4;
			latitude = 102;
			zoom = 7;
			break;
	}

	latlng = new google.maps.LatLng(longitude , latitude);

	// 地図のオプションを設定する
	 mapOptions = {
		zoom: zoom ,				// ズーム値
		center: latlng ,		// 中心座標 [latlng]
	};

	//Mapインスタンス生成

	map = new google.maps.Map( document.getElementById( 'map_canvas_all' ) , mapOptions ) ;
	map.data.loadGeoJson('/GeoJson/country.json');
	map.data.setStyle({
    	strokeColor: '#FF3300',
    	strokeWeight: 3
  	});
}
