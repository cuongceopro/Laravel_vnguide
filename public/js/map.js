var map;
var latln, mapOptions;
var zoom;
var longtitude, latitude;
var json_path;
var markers_data = [];

function initialize(link) {

	switch(link){
		case 'all':
			longitude = 16;
			latitude = 107;
			zoom = 5;
			json_path = '/GeoJson/country.json';
			break;
		case 'world':
			longitude = 16;
			latitude = 107;
			zoom = 5;
			json_path = '/GeoJson/country.json';
			markers_data = [
				[20.876777, 107.137184],
				[17.5, 106.175],
				[20.077778, 105.604722],
				[21.028333, 105.853333],
				[16.462622, 107.585217],
				[15.878605, 108.33483],
				[15.790422, 108.107886],
				[20.259276, 105.950441]
			];
			break;
		case 'local':
			longitude = 16;
			latitude = 107;
			zoom = 5;
			json_path = '/GeoJson/all.json';
			break;
		case 'festival':
			longitude = 16;
			latitude = 107;
			zoom = 5;
			json_path = '/GeoJson/country.json';
			break;
		case 'food':
			longitude = 16;
			latitude = 107;
			zoom = 5;
			json_path = '/GeoJson/all.json';
			break;
		case 'spot':
			longitude = 16;
			latitude = 107;
			zoom = 5;
			json_path = '/GeoJson/all.json';
			break;
		case 'westen_north':
		case 'spot_westen_north':
			longitude = 21.5;
			latitude = 104;
			zoom = 7;
			json_path = '/GeoJson/westen-north.json';
			markers_data = [
				[22.3475, 103.8175],
				[22.324306, 103.652972],
				[20.8625, 104.603056],
				[21.886111, 104.906111],
				[21.365848, 105.324417],
				[21.381730, 103.014997],
				[20.773745, 105.200263]
			];
			break;
		case 'food_westen_north':
			longitude = 21.5;
			latitude = 104;
			zoom = 7;
			json_path = '/GeoJson/westen-north.json';
			break;
		case 'east_north':
		case 'spot_east_north':
			longitude = 21.5;
			latitude = 106.2;
			zoom = 7;
			json_path = '/GeoJson/east-north.json';
			markers_data = [
				[22.847222, 106.734444],
				[20.723889, 107.057778],
				[20.918056, 107.502778],
				[22.405278, 105.615278],
				[23.279712, 105.256269],
				[21.851555, 106.966803],
				[21.775431, 105.477481],
				[21.579444, 105.693889],
				[21.071846, 107.424574],
				[21.489224, 108.046502],
				[21.472296, 105.588387]
			];
			break;
		case 'food_east_north':
			longitude = 21.5;
			latitude = 106.2;
			zoom = 7;
			json_path = '/GeoJson/east-north.json';
			break;
		case 'red_river_delta':
		case 'spot_red_river_delta':
			longitude = 20.8;
			latitude = 106;
			zoom = 8;
			json_path = '/GeoJson/red-river-delta.json';
			markers_data = [
				[21.152439, 106.381463],
				[21.159591, 105.384574],
				[20.564173, 105.810991]
			];
			break;
		case 'food_red_river_delta':
			longitude = 20.8;
			latitude = 106;
			zoom = 8;
			json_path = '/GeoJson/red-river-delta.json';
			break;
		case 'north_center':
		case 'spot_north_center':
			longitude = 18.8;
			latitude = 105.5;
			zoom = 6;
			json_path = '/GeoJson/center-north.json';
			markers_data = [
				[18.674478, 105.554602],
				[18.275874, 106.105414],
				[16.247139, 108.075819]
			];
			break;
		case 'food_north_center':
			longitude = 18.8;
			latitude = 105.5;
			zoom = 6;
			json_path = '/GeoJson/center-north.json';
			break;
		case 'southern_center':
		case 'spot_southern_center':
			longitude = 14.2;
			latitude = 108.5;
			zoom = 6;
			json_path = '/GeoJson/center-southern.json';
			markers_data = [
				[16.007471, 107.988077],
				[15.961254, 108.507783],
				[16.060835, 108.247576],
				[13.784081, 109.274969],
				[13.404511, 109.271659],
				[11.929331, 109.138707],
				[11.588556, 109.056503],
				[10.965746, 108.310597]
			];
			break;
		case 'food_southern_center':
			longitude = 14.2;
			latitude = 108.5;
			zoom = 6;
			json_path = '/GeoJson/center-southern.json';
			break;
		case 'taynguyen':
		case 'spot_taynguyen':
			longitude = 13.5;
			latitude = 107.5;
			zoom = 7;
			json_path = '/GeoJson/taynguyen.json';
			markers_data = [
				[14.581763, 108.274824],
				[11.901930, 108.429744],
				[12.019591, 108.384685],
				[12.702351, 107.716250]
			];
			break;
		case 'food_taynguyen':
			longitude = 13.5;
			latitude = 107.5;
			zoom = 7;
			json_path = '/GeoJson/taynguyen.json';
			break;
		case 'east_southern':
		case 'spot_east_southern':
			longitude = 11.0;
			latitude = 106.5;
			zoom = 7;
			json_path = '/GeoJson/east-southern.json';
			markers_data = [
				[11.384160, 106.175780],
				[10.534401, 106.844745],
				[10.399444, 107.236111],
				[8.682374, 106.607208]
			];
			break;
		case 'food_east_southern':
			longitude = 11.0;
			latitude = 106.5;
			zoom = 7;
			json_path = '/GeoJson/east-southern.json';
			break;
		case 'mekong_delta':
		case 'spot_mekong_delta':
			longitude = 10.0;
			latitude = 105.5;
			zoom = 7;
			json_path = '/GeoJson/mekong-delta.json';
			markers_data = [
				[10.332091, 106.323759],
				[10.310231, 103.984879],
				[8.789640, 104.996870],
				[10.637096, 106.461127]
			];
			break;
		case 'food_mekong_delta':
			longitude = 10.0;
			latitude = 105.5;
			zoom = 7;
			json_path = '/GeoJson/mekong-delta.json';
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
	map.data.loadGeoJson(json_path);
	map.data.setStyle({
    	strokeColor: '#FF3300',
    	strokeWeight: 3
  	});

		var markers = [];
		for(var i=0;　i<markers_data.length;　i++){
			markers[i] = new google.maps.Marker({
				map: map,
				position: new google.maps.LatLng(markers_data[i][0], markers_data[i][1]),
			});
		}
}
