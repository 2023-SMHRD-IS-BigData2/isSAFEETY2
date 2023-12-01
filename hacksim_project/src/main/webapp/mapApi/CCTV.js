// CCTV 위치 마커생성코드 (자세한 코드설명은 PoliceOffice.js참조)

//function cctv_view() {
	$.ajax({
		url: "LoadCCTVData",
		dataType: "json",
		success: function(cctvJson) {
			var arr_cctv = cctvJson;
			var myIcon = sop.icon({
				iconUrl: './img/cctv_logo.png',
				iconSize: [7, 7],
				shadowSize: [7, 7],
				iconAnchor: [0, 0],
				shadowAnchor: [0, 0],
				popupAnchor: [-3, -76]
			});
			for (var i = 0; i < arr_cctv.length; i++) {
				var CCTV_marker = sop.marker([arr_cctv[i][0], arr_cctv[i][1]], {
					icon: myIcon
				});
				CCTV_marker.addTo(map);
			}
		}
	})
//}
//$('#cctv_click').click(cctv_view);