//function police_view() {
	$.ajax({
		url: "LoadPoliceData",
		dataType: "json",
		success: function(policeJson) {
			//console.log(policeJson);
			var arr_police = policeJson;
			var myIcon = sop.icon({
				iconUrl: './img/police_logo.png',
				iconSize: [7, 7],
				shadowSize: [7, 7],
				iconAnchor: [0, 0],
				shadowAnchor: [0, 0],
				popupAnchor: [-3, -76]
			});
			for (var i = 0; i < arr_police.length; i++) {
				var PoliceOffice_marker = sop.marker([arr_police[i][0], arr_police[i][1]], {
					icon: myIcon
				});
				PoliceOffice_marker.addTo(map);
			}
		}
	})
//}
//$('#police_click').click(police_view);