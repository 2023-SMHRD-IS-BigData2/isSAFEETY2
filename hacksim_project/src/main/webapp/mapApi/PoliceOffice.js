// 경찰서 위치 마커생성코드

//function police_view() {
	$.ajax({								// 비동기방식 ajax사용
		url: "LoadPoliceData",				// urlMapping을 사용하여 데이터를 받아옴
		dataType: "json",					// json형태로 받아온다
		success: function(policeJson) {
			var arr_police = policeJson;	// 지도위에 마커를 찍어줄
			var myIcon = sop.icon({			// 지도위에 찍히는 마커의 이미지속성값
				iconUrl: './img/police_logo.png',	// 마커이미지 경로
				iconSize: [7, 7],			// 아이콘 사이즈
				shadowSize: [7, 7],			// 그림자 사이즈
				iconAnchor: [0, 0],
				shadowAnchor: [0, 0],
				popupAnchor: [-3, -76]
			});
			for (var i = 0; i < arr_police.length; i++) {
				var PoliceOffice_marker = sop.marker([arr_police[i][0], arr_police[i][1]], {
					icon: myIcon
				});
				PoliceOffice_marker.addTo(map);	// 지도위에 추가
			}
		}
	})
//}
//$('#police_click').click(police_view);