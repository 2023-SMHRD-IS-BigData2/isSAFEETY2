//==========================================================
// 폴리곤 클릭시 이벤트 추가

polygon_01.on("click", function(e) {		// polygon_01은 도봉구... 25번은 강남구에 해당함

	var infoWindow = sop.infoWindow();		// 폴리곤클릭시 인포윈도우 출력
	var contents = "";						// 인포윈도우 내용
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>도봉구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(도봉구/서울시)*100 = 2.36(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 310133명, 내국인 307740명, 외국인 2393명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([958941, 1963204]);	// UTM-K좌표값
	infoWindow.setContent(contents);
	infoWindow.openOn(map);					// 지도에 추가

	map.setView(sop.utmk(958941, 1963204), 7);	// 중앙화면 좌표, 줌레벨
	//=========================================================================
	// 이 부분은 SGIS 맵API의 폴리곤 클릭시 Chart.js가 실행되게끔 넣어두었음
	var selectedLocation = "도봉구";									// 해당하는 구역이름을 세팅
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);// 세팅한 구역이름을 바탕으로 로드해온다
	function loadChart(chartURL) {									// chart.js실행
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_02.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>성동구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(성동구/서울시)*100 = 2.42(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 285543명, 내국인 278366명, 외국인 7177명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([959587, 1950361]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(959587, 1950361), 7);
	//=========================================================================
	var selectedLocation = "성동구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_03.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>서대문구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(서대문구/서울시)*100 = 2.62(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 321379명, 내국인 307441명, 외국인 13938명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([950514, 1953381]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(950514, 1953381), 7);
	//=========================================================================
	var selectedLocation = "서대문구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_04.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>금천구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(금천구/서울시)*100 = 2.85(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 242076명, 내국인 228611명, 외국인 13465명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([946850, 1940418]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(946850, 1940418), 7);
	//=========================================================================
	var selectedLocation = "금천구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_05.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>동작구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(동작구/서울시)*100 = 3.02(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 390740명, 내국인 380154명, 외국인 10586명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([951250, 1944499]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(951250, 1944499), 7);
	//=========================================================================
	var selectedLocation = "동작구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_06.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>성북구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(성북구/서울시)*100 = 3.04(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 440089명, 내국인 427671명, 외국인 12418명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([957696, 1955940]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(957696, 1955940), 7);
	//=========================================================================
	var selectedLocation = "성북구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_07.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>강북구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(강북구/서울시)*100 = 3.13(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 294804명, 내국인 290155명, 외국인 4649명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([957153, 1960361]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(957153, 1960361), 7);
	//=========================================================================
	var selectedLocation = "강북구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_08.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>용산구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(용산구/서울시)*100 = 3.28(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 230692명, 내국인 216152명, 외국인 14540명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([954325, 1948129]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(954325, 1948129), 7);
	//=========================================================================
	var selectedLocation = "용산구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_09.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>중구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(중구/서울시)*100 = 3.39(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 131825명, 내국인 121405명, 외국인 10420명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([955583, 1951407]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(955583, 1951407), 7);
	//=========================================================================
	var selectedLocation = "중구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_10.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>종로구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(종로구/서울시)*100 = 3.47(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 151127명, 내국인 139945명, 외국인 11182명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([954174, 1955108]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(954174, 1955108), 7);
	//=========================================================================
	var selectedLocation = "종로구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_11.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>양천구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(양천구/서울시)*100 = 3.50(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 440591명, 내국인 437401명, 외국인 3190명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([943072, 1947523]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(943072, 1947523), 7);
	//=========================================================================
	var selectedLocation = "양천구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_12.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>동대문구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(동대문구/서울시)*100 = 3.59(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 359113명, 내국인 341238명, 외국인 17875명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([960722, 1953771]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(960722, 1953771), 7);
	//=========================================================================
	var selectedLocation = "동대문구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_13.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>은평구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(은평구/서울시)*100 = 3.85(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 471155명, 내국인 467098명, 외국인 4057명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([949561, 1957669]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(949561, 1957669), 7);
	//=========================================================================
	var selectedLocation = "은평구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_14.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>중랑구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(중랑구/서울시)*100 = 3.98(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 387940명, 내국인 382797명, 외국인 5143명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([964148, 1955335]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(964148, 1955335), 7);
	//=========================================================================
	var selectedLocation = "중랑구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_15.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>광진구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(광진구/서울시)*100 = 4.00(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 351959명, 내국인 336604명, 외국인 15355명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([963551, 1949672]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(963551, 1949672), 7);
	//=========================================================================
	var selectedLocation = "광진구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_16.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>강동구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(강동구/서울시)*100 = 4.10(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 462453명, 내국인 458385명, 외국인 4068명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([968882, 1950347]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(968882, 1950347), 7);
	//=========================================================================
	var selectedLocation = "강동구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_17.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>구로구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(구로구/서울시)*100 = 4.26(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 416815명, 내국인 393929명, 외국인 22886명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([943254, 1944324]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(943254, 1944324), 7);
	//=========================================================================
	var selectedLocation = "구로구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_18.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>노원구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(노원구/서울시)*100 = 4.30(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 504423명, 내국인 499989명, 외국인 4434명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([962653, 1961602]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(962653, 1961602), 7);
	//=========================================================================
	var selectedLocation = "노원구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_19.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>마포구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(마포구/서울시)*100 = 4.53(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 375639명, 내국인 364257명, 외국인 11382명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([948093, 1951016]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(948093, 1951016), 7);
	//=========================================================================
	var selectedLocation = "마포구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_20.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>서초구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(서초구/서울시)*100 = 4.93(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 410766명, 내국인 406404명, 외국인 4362명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([959096, 1942097]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(959096, 1942097), 7);
	//=========================================================================
	var selectedLocation = "서초구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_21.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>강서구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(강서구/서울시)*100 = 5.15(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 569978명, 내국인 564339명, 외국인 5639명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([940735, 1951731]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(940735, 1951731), 7);
	//=========================================================================
	var selectedLocation = "강서구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_22.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>영등포구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(영등포구/서울시)*100 = 5.33(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 398290명, 내국인 375586명, 외국인 22704명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([948280, 1947090]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(948280, 1947090), 7);
	//=========================================================================
	var selectedLocation = "영등포구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_23.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>관악구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(관악구/서울시)*100 = 5.39(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 500582명, 내국인 485172명, 외국인 15410명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([950932, 1941246]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(950932, 1941246), 7);
	//=========================================================================
	var selectedLocation = "관악구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_24.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>송파구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(송파구/서울시)*100 = 5.71(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 661515명, 내국인 655744명, 외국인 5771명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([966048, 1945395]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);

	map.setView(sop.utmk(966048, 1945395), 7);
	//=========================================================================
	var selectedLocation = "송파구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
});

polygon_25.on("click", function(e) {

	var infoWindow = sop.infoWindow();
	var contents = "";
	contents += "<div style='font-family: dotum, arial, sans-serif;font-size: 15px; font-weight: bold;margin-bottom: 5px;'>강남구</div>";
	contents += "<table style='border-spacing:2px;border:0px;'>";
	contents += "<tbody>";
	contents += "<tr>";
	contents += "<td>범죄율</td>";
	contents += "<td><span>(강남구/서울시)*100 = 7.68(%)</span></td>";
	contents += "</tr>";
	contents += "<tr>";
	contents += "<td>인구수</td>";
	contents += "<td><span>총 546291명, 내국인 540957명, 외국인 5334명</span></td>";
	contents += "</tr>";
	contents += "</tbody>";
	contents += "</table>";
	infoWindow.setUTMK([961720, 1944158]);
	infoWindow.setContent(contents);
	infoWindow.openOn(map);


	//map.fitBounds(polygon); //fitBounds 최대 줌 레벨로 polygon데이터를 보여 줍니다
	map.setView(sop.utmk(961720, 1944158), 7);
	//=========================================================================
	var selectedLocation = "강남구";
	loadChart("gu_dashboard_test.jsp?location=" + selectedLocation);
	function loadChart(chartURL) {
		document.getElementById("chartFrame").src = chartURL;
	}
	//=========================================================================
}); //polygon에 대한 이벤트 등록


//지도에 폴리곤 추가
polygon_01.addTo(map);
polygon_02.addTo(map);
polygon_03.addTo(map);
polygon_04.addTo(map);
polygon_05.addTo(map);
polygon_06.addTo(map);
polygon_07.addTo(map);
polygon_08.addTo(map);
polygon_09.addTo(map);
polygon_10.addTo(map);
polygon_11.addTo(map);
polygon_12.addTo(map);
polygon_13.addTo(map);
polygon_14.addTo(map);
polygon_15.addTo(map);
polygon_16.addTo(map);
polygon_17.addTo(map);
polygon_18.addTo(map);
polygon_19.addTo(map);
polygon_20.addTo(map);
polygon_21.addTo(map);
polygon_22.addTo(map);
polygon_23.addTo(map);
polygon_24.addTo(map);
polygon_25.addTo(map);
