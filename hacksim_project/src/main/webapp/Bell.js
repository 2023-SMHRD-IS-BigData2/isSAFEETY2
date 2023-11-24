//function police_view() {
	$.ajax({
		url: "LoadBellData",
		dataType: "json",
		success: function(BellJson) {
			//console.log(BellJson);
			var arr_Bell = BellJson;
			var myIcon = sop.icon({
				iconUrl: './img/bell_logo.png',
				iconSize: [7, 7],
				shadowSize: [7, 7],
				iconAnchor: [0, 0],
				shadowAnchor: [0, 0],
				popupAnchor: [-3, -76]
			});
			for (var i = 0; i < arr_Bell.length; i++) {
				var Bell_marker = sop.marker([arr_Bell[i][0], arr_Bell[i][1]], {
					icon: myIcon
				});
				Bell_marker.addTo(map);
			}
		}
	})
//}
//$('#police_click').click(police_view);