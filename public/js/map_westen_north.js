var map;
var map_west_north;

function initialize() {
	// 中心の位置座標を指定する
	var latlng = new google.maps.LatLng( 16 , 107 );

	var latlng_west_north = new google.maps.LatLng( 24.2 , 102 );

	// 地図のオプションを設定する
	var mapOptions = {
		zoom: 5 ,				// ズーム値
		center: latlng ,		// 中心座標 [latlng]
	};

	var mapOptions_west_north = {
		zoom: 7 ,				// ズーム値
		center: latlng_west_north ,		// 中心座標 [latlng]
		//mapTypeId: google.maps.MapTypeId.ROADMAP
	};

	//Mapインスタンス生成

  map_west_north = new google.maps.Map( document.getElementById( 'map_canvas_spot_westen_north' ) , mapOptions_west_north ) ;
	map_west_north.data.loadGeoJson('GeoJson/country.json');
	map_west_north.data.setStyle({
	  	strokeColor: '#0033CC',
	  	strokeWeight: 3
		});




}

initialize();
