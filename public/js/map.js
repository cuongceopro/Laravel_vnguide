var map;
var latln, mapOptions;
var zoom;
var longtitude, latitude;
var json_path;
var markers_data = [];
var markers_master =[];
markers_master['world'] = [
		{name:'vinhhalong', lat:20.876777, lng:107.137184, icon:'beach'},
		{name:'dongphongnha', lat:17.5, lng:106.175, icon:'cave'},
		{name:'thanhnhaho', lat:20.077778, lng:105.604722, icon:'castle'},
		{name:'hoangthanhthanglong', lat:21.028333, lng:105.853333, icon:'castle'},
		{name:'hue', lat:16.462622, lng:107.585217, icon:'smallcity'},
		{name:'hoian', lat:15.878605, lng:108.33483, icon:'smallcity'},
		{name:'thanhdiamyson', lat:15.790422, lng:108.107886, icon:'castle'},
		{name:'trangan', lat:20.259276, lng:105.950441, icon:'mountains'}
	];
markers_master['spot_westen_north'] = [
		{name:'sapa', lat:22.3475, lng:103.8175, icon:'beautifulview'},
		{name:'dongtienson', lat:22.321549, lng:103.662712, icon:'cave'},
		{name:'caonguyenmocchau', lat:20.829325, lng:104.701550, icon:'beautifulview'},
		{name:'hothacba', lat:21.727220, lng:105.021389, icon:'waterfall'}
	];
markers_master['food_westen_north'] = [
		{name:'donuong-sapa', lat:22.3475, lng:103.8175, icon:'food'},
		{name:'loncapnach-laichau', lat:22.399619, lng:103.427308, icon:'food'},
		{name:'xoichim-muongthanh', lat:21.384732, lng:103.016245, icon:'food'},
		{name:'canuong-songda', lat:22.067822, lng:103.129836, icon:'food'}
];
markers_master['spot_east_north'] = [
		{name:'thacbangioc', lat:22.852145, lng:106.724295, icon:'waterfall'},
		{name:'daocatba', lat:20.792831, lng:106.995608, icon:'island'},
		{name:'vinhbaitulong', lat:20.930058, lng:107.254836, icon:'beach'},
		{name:'hobabe', lat:22.414246, lng:105.613384, icon:'lake'},
		{name:'caonguyendadongvan', lat:23.260619, lng:105.257294, icon:'mountains'},
		{name:'nuimauson', lat:21.850299, lng:106.966677, icon:'mountains'},
		{name:'honuicoc', lat:21.586158, lng:105.697166, icon:'lake'},
		{name:'baibientraco', lat:21.475647, lng:108.055772, icon:'beach'},
		{name:'tamdao', lat:21.433165, lng:105.622418, icon:'mountains'}
	];
markers_master['food_east_north'] = [
		{name:'thitbonuong-hagiang', lat:22.795513, lng:105.016549, icon:'food'},
		{name:'pho-langson', lat:21.879374, lng:106.594621, icon:'food'},
		{name:'tuhai-quangninh', lat:21.059656, lng:107.302469, icon:'food'}
	];
markers_master['spot_red_river_delta'] = [];
markers_master['food_red_river_delta'] = [
	{name:'pho-hanoi', lat:21.028865, lng:105.834474, icon:'food'},
	{name:'chaga-tieuquan', lat:20.819987, lng:105.991545, icon:'food'},
	{name:'chekho-namdinh', lat:20.264407, lng:106.237904, icon:'food'},
	{name:'banhdauxanh-haiduong', lat:20.940912, lng:106.380147, icon:'icon'},
	{name:'banhcay-haiphong', lat:20.849140, lng:106.699948, icon:'food'},
	{name:'thitde-ninhbinh', lat:20.239952, lng:105.895906, icon:'food'}
];
markers_master['spot_north_center'] = [
		{name:'baibienthiencam', lat:18.273244, lng:106.105185, icon:'beach'},
		{name:'baibienlangco', lat:16.247118, lng:108.075797, icon:'beach'}
	];
markers_master['food_north_center'] = [
	{name:'bunbohue-hue', lat:16.467633, lng:107.578639, icon:'food'},
	{name:'nemchua-thanhhoa', lat:20.086049, lng:105.397866, icon:'food'},
	{name:'chaoluon-nghean', lat:19.185274, lng:105.153202, icon:'food'},
	{name:'cudo-hatinh', lat:18.353657, lng:105.699407, icon:'food'}
];
markers_master['spot_southern_center'] = [
	{name:'bana', lat:15.998055, lng:107.988088, icon:'hill'},
	{name:'culaocham', lat:15.961553, lng:108.507349, icon:'island'},
	{name:'baibienmykhe', lat:16.063926, lng:108.246661, icon:'beach'},
	{name:'bandaophuongmai', lat:13.846031, lng:109.271228, icon:'beach'},
	{name:'vinhxuandai', lat:13.405012, lng:109.271659, icon:'beach'},
	{name:'vinhcamranh', lat:11.902986, lng:109.170095, icon:'beach'},
	{name:'baibienninhchu', lat:11.589449, lng:109.040307, icon:'beach'},
	{name:'muine', lat:10.921672, lng:108.288624, icon:'beach'}
];
markers_master['food_southern_center'] = [
	{name:'bunchaca-danang', lat:16.049057, lng:108.204516, icon:'food'},
	{name:'miquang-quangnam', lat:15.591340, lng:108.495447, icon:'food'},
	{name:'rambap-quangngai', lat:15.144492, lng:108.833090, icon:'food'},
	{name:'goitoi-lyson', lat:15.381855, lng:109.115707, icon:'food'},
	{name:'bunchaca-nhatrang', lat:12.252543, lng:109.191672, icon:'food'},
	{name:'banhxeo-phanthiet', lat:10.936012, lng:108.151523, icon:'food'}
];
markers_master['spot_taynguyen'] = [
	{name:'mangden', lat:14.581799, lng:108.274830, icon:'lake'},
	{name:'hotuyenlam', lat:11.902182, lng:108.429830, icon:'lake'},
	{name:'yokdon', lat:12.702445, lng:107.716271, icon:'forest'}
];
markers_master['food_taynguyen'] = [
	{name:'ganuong-bandon', lat:12.889364, lng:107.791582, icon:'food'},
	{name:'cafe-buonmathuot', lat:12.652617, lng:108.036973, icon:'food'},
	{name:'thitnai-daklak', lat:12.790027, lng:108.286317, icon:'food'},
	{name:'calangnuongthan-daknong', lat:12.217797, lng:107.611128, icon:'food'},
	{name:'banhtrangnuong-dalat', lat:11.913308, lng:108.488142, icon:'food'}
];
markers_master['spot_east_southern'] = [
	{name:'condao', lat:8.702169, lng:106.640935, icon:'island'}
];
markers_master['food_east_southern'] = [
	{name:'banhtrangtron-saigon', lat:10.786939, lng:106.647632, icon:'food'},
	{name:'banhkhot-vungtau', lat:10.399127, lng:107.134915, icon:'food'},
	{name:'banhtrangme-tayninh', lat:11.335955, lng:106.132092, icon:'food'},
	{name:'gaquayxoiphong-binhduong', lat:11.227850, lng:106.683957, icon:'food'}
];
markers_master['spot_mekong_delta'] = [
	{name:'culaothoison', lat:10.335744, lng:106.325844, icon:'lake'},
	{name:'daophuquoc', lat:10.310569, lng:103.986252, icon:'island'}
];
markers_master['food_mekong_delta'] = [
	{name:'dobien-phuquoc', lat:10.309217, lng:103.984879, icon:'food'},
	{name:'chuotdong-dongthap', lat:10.594881, lng:105.649898, icon:'food'},
	{name:'banhtamcari-camau', lat:9.165883, lng:105.194035, icon:'food'},
	{name:'laumam-uminh', lat:9.364798, lng:104.948167, icon:'food'},
	{name:'bakhia-rachgoc', lat:8.635033, lng:105.005285, icon:'food'},
	{name:'goisaudau-chaudoc', lat:10.669283, lng:105.083284, icon:'food'},
	{name:'goibakhia-baclieu', lat:9.312153, lng:105.459379, icon:'food'},
	{name:'banhpia-soctrang', lat:9.556732, lng:105.894848, icon:'food'}
];

var currentInfoWindow = null;

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
		markers_data = markers_master['world'];
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
		longitude = 21.5;
		latitude = 104;
		zoom = 7;
		json_path = '/GeoJson/westen-north.json';
		markers_data = markers_master['spot_westen_north'].concat(markers_master['food_westen_north']);
		break;
		case 'spot_westen_north':
		longitude = 21.5;
		latitude = 104;
		zoom = 7;
		json_path = '/GeoJson/westen-north.json';
		markers_data = markers_master['spot_westen_north'];
		break;
		case 'food_westen_north':
		longitude = 21.5;
		latitude = 104;
		zoom = 7;
		json_path = '/GeoJson/westen-north.json';
		markers_data = markers_master['food_westen_north'];
		break;
		case 'east_north':
		longitude = 21.5;
		latitude = 106.2;
		zoom = 7;
		json_path = '/GeoJson/east-north.json';
		markers_data = markers_master['spot_east_north'].concat(markers_master['food_east_north']);
		break;
		case 'spot_east_north':
		longitude = 21.5;
		latitude = 106.2;
		zoom = 7;
		json_path = '/GeoJson/east-north.json';
		markers_data = markers_master['spot_east_north'];
		break;
		case 'food_east_north':
		longitude = 21.5;
		latitude = 106.2;
		zoom = 7;
		json_path = '/GeoJson/east-north.json';
		markers_data = markers_master['food_east_north'];
		break;
		case 'red_river_delta':
		longitude = 20.8;
		latitude = 106;
		zoom = 8;
		json_path = '/GeoJson/red-river-delta.json';
		markers_data = markers_master['spot_red_river_delta'].concat(markers_master['food_red_river_delta']);
		break;
		case 'spot_red_river_delta':
		longitude = 20.8;
		latitude = 106;
		zoom = 8;
		json_path = '/GeoJson/red-river-delta.json';
		markers_data = markers_master['spot_red_river_delta'];
		break;
		case 'food_red_river_delta':
		longitude = 20.8;
		latitude = 106;
		zoom = 8;
		json_path = '/GeoJson/red-river-delta.json';
		markers_data = markers_master['food_red_river_delta'];
		break;
		case 'north_center':
		longitude = 18.8;
		latitude = 105.5;
		zoom = 6;
		json_path = '/GeoJson/center-north.json';
		markers_data = markers_master['spot_north_center'].concat(markers_master['food_north_center']);
		break;
		case 'spot_north_center':
		longitude = 18.8;
		latitude = 105.5;
		zoom = 6;
		json_path = '/GeoJson/center-north.json';
		markers_data = markers_master['spot_north_center'];
		break;
		case 'food_north_center':
		longitude = 18.8;
		latitude = 105.5;
		zoom = 6;
		json_path = '/GeoJson/center-north.json';
		markers_data = markers_master['food_north_center'];
		break;
		case 'southern_center':
		longitude = 14.2;
		latitude = 108.5;
		zoom = 6;
		json_path = '/GeoJson/center-southern.json';
		markers_data = markers_master['spot_southern_center'].concat(markers_master['food_southern_center']);
		break;
		case 'spot_southern_center':
		longitude = 14.2;
		latitude = 108.5;
		zoom = 6;
		json_path = '/GeoJson/center-southern.json';
		markers_data = markers_master['spot_southern_center'];
		break;
		case 'food_southern_center':
		longitude = 14.2;
		latitude = 108.5;
		zoom = 6;
		json_path = '/GeoJson/center-southern.json';
		markers_data = markers_master['food_southern_center'];
		break;
		case 'taynguyen':
		longitude = 13.5;
		latitude = 107.5;
		zoom = 7;
		json_path = '/GeoJson/taynguyen.json';
		markers_data = markers_master['spot_taynguyen'].concat(markers_master['food_taynguyen']);
		break;
		case 'spot_taynguyen':
		longitude = 13.5;
		latitude = 107.5;
		zoom = 7;
		json_path = '/GeoJson/taynguyen.json';
		markers_data = markers_master['spot_taynguyen'];
		break;
		case 'food_taynguyen':
		longitude = 13.5;
		latitude = 107.5;
		zoom = 7;
		json_path = '/GeoJson/taynguyen.json';
		markers_data = markers_master['food_taynguyen'];
		break;
		case 'east_southern':
		longitude = 11.0;
		latitude = 106.5;
		zoom = 7;
		json_path = '/GeoJson/east-southern.json';
		markers_data = markers_master['spot_east_southern'].concat(markers_master['food_east_southern']);
		break;
		case 'spot_east_southern':
		longitude = 11.0;
		latitude = 106.5;
		zoom = 7;
		json_path = '/GeoJson/east-southern.json';
		markers_data = markers_master['spot_east_southern'];
		break;
		case 'food_east_southern':
		longitude = 11.0;
		latitude = 106.5;
		zoom = 7;
		json_path = '/GeoJson/east-southern.json';
		markers_data = markers_master['food_east_southern'];
		break;
		case 'mekong_delta':
		longitude = 10.0;
		latitude = 105.5;
		zoom = 7;
		json_path = '/GeoJson/mekong-delta.json';
		markers_data = markers_master['spot_mekong_delta'].concat(markers_master['food_mekong_delta']);
		break;
		case 'spot_mekong_delta':
		longitude = 10.0;
		latitude = 105.5;
		zoom = 7;
		json_path = '/GeoJson/mekong-delta.json';
		markers_data = markers_master['spot_mekong_delta'];
		break;
		case 'food_mekong_delta':
		longitude = 10.0;
		latitude = 105.5;
		zoom = 7;
		json_path = '/GeoJson/mekong-delta.json';
		markers_data = markers_master['food_mekong_delta'];
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

	//var image = {
	//url: '/Image/Icon/waterpark.png'
	//size: new google.maps.Size(20, 32),
	//origin: new google.maps.Point(0, 0),
	//anchor: new google.maps.Point(0, 32)
	//};
	//var info_data = [];

// console.log(markers_data)
	// getMarkerDataFromId
	function getMarkerDataFromId(id){
		$.ajax({
			type: "GET",
			url: '/get_data_infowindow/' + markers_data[i][0],
			success: function(data, dataType){
				return data;
			}
		});
	}
	// markers_data
	function getMarkersData(){
		var result = {};
		for(var i=0;　i<markers_data.length;　i++){
			result[i] = getMarkerDataFromId(i);
		}
		return result;
	}

	// map and marker
	function infoWindowFrom(map,marker) {
		console.log(i);

		var contentString = '<div id="content">'+
		'<h1 id="firstHeading" class="firstHeading">スポット情報</h1>' +
		'<div id="siteNotice">'+
		'</div>'+
		'<div id="bodyContent">'+
		info_data[i] +
		'</div>'+
		'</div>';

		var infowindow = new google.maps.InfoWindow({
			content: contentString
		});
		infowindow.open(map, marker);
	}
	//get content string
	function getContentString(i){
		var data = info_data[i] || ''
		var content =
		'<div id="content">'+
		'<h1 id="firstHeading" class="firstHeading">スポット情報</h1>' +
		'<div id="siteNotice">'+
		'</div>'+
		'<div id="bodyContent">'+
		data +
		'</div>'+
		'</div>';
		console.log(content)
		return content;
	}

	//markers
	//for(var i=0;　i<markers_data.length;　i++){
		markers_data.forEach(function (val, index, arr) {
		//var markers = [];
		var image = {
			url: '/Image/Icon/' + val.icon + '.png'
			//size: new google.maps.Size(20, 32),
			//origin: new google.maps.Point(0, 0),
			//anchor: new google.maps.Point(0, 32)
		};

		var marker = new google.maps.Marker({
			map: map,
			position: new google.maps.LatLng(val.lat, val.lng),
			icon : image
		});

		// console.log(markers[i]);

		marker.addListener('click', function() {
			var info_data;
			$.ajax({
				type: "GET",
				url: '/get_data_infowindow/' + val.name,
				success: function(data, dataType){
					//console.log(val.name);
					//console.log(data);
					info_data = data;

					var content =
					'<div id="content">'+
					'<div id="siteNotice">'+
					'</div>'+
					'<div id="bodyContent">'+
					info_data +
					'</div>'+
					'</div>';

					var infowindow = new google.maps.InfoWindow({
						//content: getContentString(index)
						content: content
					});

					if(currentInfoWindow){
						currentInfoWindow.close();
					}

					infowindow.open(map, marker);

					currentInfoWindow = infowindow;

					/* イベントの作成 */
					infowindow.addListener('closeclick' , function()
					{
						console.log('Close!');
						map.panTo(new google.maps.LatLng(val.lat,val.lng));
					} ) ;

				}
			});
		});
	});

}
