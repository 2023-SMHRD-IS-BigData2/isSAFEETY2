<%@page import="Project_Model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Main - isSAFETY</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        
        
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		
        
        <!-- jquery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        <!-- api연결 -->
        <script type="text/javascript" src="https://sgisapi.kostat.go.kr/OpenAPI3/auth/javascriptAuth?consumer_key=bd2d0b75d234444f8b15"></script>
        
        <!-- 차트 라이브러리 -->
      	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
      	<script src="https://d3js.org/d3.v6.min.js"></script>
        
    </head>
    <body class="sb-nav-fixed">
    
    <!--  -->
    <%
    
	    Member LoginMember = (Member)session.getAttribute("LoginMember");
		
		if(LoginMember != null){
			
		System.out.print(LoginMember.getId());
		
		}
    
    %>
    
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="Main.jsp">isSAFETY</a>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                
                <!-- 회원 이름 -->
                     <% if(LoginMember == null){ %>
                    	
                    		
                    			
                    <% } else {%>
                    		
                    		<p class="nim"><span class="nameUnderline"><%= LoginMember.getName() %></span>님 안녕하세요~!</p>
                    			
                    <% } %>
                </div>
            </form>

            <!-- 로그인/회원가입/로그아웃/회원탈퇴 -->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    
                    	<% if(LoginMember == null){ %>
                    	
                    			<li><a class="dropdown-item" href="Login.jsp">로그인</a></li>
								<li><hr class="dropdown-divider" /></li>
								<li><a class="dropdown-item" href="Join.jsp">회원가입</a></li>
                    			
                    	<% } else {%>
                    		
                    			<li><a class="dropdown-item" href="LogoutSer">로그아웃</a></li>
                    			<li><hr class="dropdown-divider" /></li>
                    			<li><a class="dropdown-item" href="DeleteMemSer?id=<%= LoginMember.getId() %>">회원탈퇴</a></li>
                    			
                    	<% } %>
                    			
                    </ul>
                </li>
            </ul>
        </nav>
        
        <!-- 맨 위에 header쪽 -->
        <div id="layoutSidenav">
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4" style="font-weight: bold;">isSAFETY</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                        
                        <!-- 치안센터/cctv/비상벨 버튼 -->
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-black2 mb-4" style="background-color: whitesmoke !important;">
                                    <div class="card-body">안전시설 서비스</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between" style="height: 80px;">
                                        <!-- <input id="text-balck" class="service-checkbox" type="checkbox" name="service" value="center"> 치안센터
                                        <input id="text-balck" class="service-checkbox" type="checkbox" name="service" value="cctv"> CCTV
                                        <input id="text-balck" class="service-checkbox" type="checkbox" name="service" value="bell"> 비상벨 -->
                                        <button id="cctv_click" onclick="center_view()">치안센터</button>
                                        <button id="cctv_click" onclick="cctv_view()">CCTV</button>
                                        <button id="cctv_click" onclick="bell_view()">비상벨</button>
                                        <a href="Main.jsp"><button id="cctv_click">지우기</button></a>
                                        <div class="small text-black2" id="result"></div>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- 안전 지수 예측 -->
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-black2 mb-4" style="background-color: #FFECB3 !important;">
                                    <div class="card-body">안전 지수 예측</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between" style="height: 80px;">
                                    	위치 
                                        <select name="location">
                                        	<option value="seoul">서울시</option>
                                        </select>
                                        
                                        <select name="location2" id="locationSelect">
                                        	<hr>
                                        	<option value="종로구">종로구</option>
                                        	<option value="중구">중구</option>
                                        	<option value="용산구">용산구</option>
                                        	<option value="성동구">성동구</option>
                                        	<option value="광진구">광진구</option>
                                        	<option value="동대문구">동대문구</option>
                                        	<option value="중랑구">중랑구</option>
                                        	<option value="성북구">성북구</option>
                                        	<option value="강북구">강북구</option>
                                        	<option value="도봉구">도봉구</option>
                                        	<option value="노원구">노원구</option>
                                        	<option value="은평구">은평구</option>
                                        	<option value="서대문구">서대문구</option>
                                        	<option value="마포구">마포구</option>
                                        	<option value="양천구">양천구</option>
                                        	<option value="강서구">강서구</option>
                                        	<option value="구로구">구로구</option>
                                        	<option value="금천구">금천구</option>
                                        	<option value="영등포구">영등포구</option>
                                        	<option value="동작구">동작구</option>
                                        	<option value="관악구">관악구</option>
                                        	<option value="서초구">서초구</option>
                                        	<option value="강남구">강남구</option>
                                        	<option value="송파구">송파구</option>
                                        	<option value="강동구">강동구</option>
                                        </select>
                                        <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i id="search" class="fas fa-search"></i></button>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- 예측 결과 -->
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-black2 mb-4" style="background-color: skyblue !important;">
                                    <div class="card-body">행정구 안전지수 예측 결과</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between" style="height: 80px;">
                                        <svg id="predictChart" style="margin-top: 40px; margin-left: 70px;"></svg>
                                        <svg id="barChart" style="margin-top: 10px; margin-left: 30px;"></svg>
                                    <div class="small text-black2"></div>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- 안내사항 -->
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-black2 mb-4" style="background-color: lightpink !important;">
                                    <div class="card-body">안내사항</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between" style="height: 80px;">
                                        <p style="margin-top: 15px;"> 설치된 CCTV : 약 8만개  설치된 비상벨 : 약 2만개</p> 
                                        <div class="small text-black2"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- 서울시 전체 지도 -->
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        seoul map
                                    </div>
                                    <div class="card-body">
                                    <div id="map" style="width: 100%; height: 830px;"></div>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- 서울시 대시보드 -->
                           <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        seoul data dashboard
                                    </div>
                                    <div class="card-body">
										<iframe id="chartFrame" style="width: 100%; height: 830px; border: none;"></iframe>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                
                <!-- footer -->
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">isSAFETY - 팀 발버둥(정윤오, 임다이, 이상훈, 안서혁)</div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        
        <!-- 스크립트 -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
		
		<!-- 버튼 기능 -->
		<script>
		var PoliceOffice_marker;
		var CCTV_marker;
		var Bell_marker;
		
			function center_view() {
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
							PoliceOffice_marker = sop.marker([arr_police[i][0], arr_police[i][1]], {
								icon: myIcon
							});
							PoliceOffice_marker.addTo(map);
						}
					}
				})
			}

      		function cctv_view() {
      			$.ajax({
		            url: "LoadCCTVData",
		            dataType: "json",
		            success: function(cctvJson) {
		               //console.log(cctvJson);
		               var arr_cctv = cctvJson;
		               var myIcon = sop.icon({
		                  iconUrl: './img/cctv_logo.png',
		                  iconSize: [5, 5],
		                  shadowSize: [7, 7],
		                  iconAnchor: [0, 0],
		                  shadowAnchor: [0, 0],
		                  popupAnchor: [-3, -76]
		               });
		               for (var i = 0; i < arr_cctv.length; i++) {
		                  CCTV_marker = sop.marker([arr_cctv[i][0], arr_cctv[i][1]], {
		                     icon: myIcon
		                  });
		                  CCTV_marker.addTo(map);
		               }
		            }
		         })
      		}

	   		function bell_view() {
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
	   						Bell_marker = sop.marker([arr_Bell[i][0], arr_Bell[i][1]], {
	   							icon: myIcon
	   						});
	   						Bell_marker.addTo(map);
	   					}
	   				}
	   			})
	   		}
   		
   		<!-- 지우기 기능 -->
   	/* 	function remove_view() {
			console.log(PoliceOffice_marker);
   			if (PoliceOffice_marker) {
   		        
   				for (var i = 0; i < PoliceOffice_marker.length; i++) {
   					PoliceOffice_marker[i]
				}
   				PoliceOffice_marker.remove();
   				// PoliceOffice_marker.remove();  // Remove police marker
   		    }

   		    if (CCTV_marker) {
   		        CCTV_marker.remove();  // Remove CCTV marker
   		    }

   		    if (Bell_marker) {
   		        Bell_marker.remove();  // Remove bell marker
   		    }
   		} */
		</script>

		<!-- 지도 시작위치, 시작줌레벨 -->
        <script type="text/javascript">
      		var map = sop.map('map');
     		 map.setView(sop.utmk(953427, 1950827), 6);
   		</script>
   		
   		<!-- 좌표값으로 폴리곤을 생성 -->
   		<script src="mapApi/SectionArea.js"></script>
   		
   		<!-- 생성된 폴리곤에 설정값을 넣어줌 -->
   		<script src="mapApi/PolygonSetting.js"></script>
   		
    	<!-- 폴리곤을 클릭했을때 동작할 행동을 넣어줌 -->
   		<script src="AreaClick.js"></script>
   		
   		<!-- 행정구 대시보드 -->
		<!-- <script src="dashboard/gu_dashboard.js"></script> -->
			
		<!-- 서울시 대시보드 -->
        <!-- <script src="dashboard/seoul_dashboard.js"></script> -->
    	<!-- CCTV위치포인트표시 -->
		<!-- <script src="mapApi/CCTV.js"></script> -->
		
 		<!-- 경찰서위치포인트표시 -->
	 	<<!-- script src="mapApi/PoliceOffice.js"></script> -->
	 	
		<!-- 안전벨위치포인트표시 -->
		<!-- <script src="mapApi/Bell.js"></script> -->
		
		<!-- iframe을 활용한 대시보드 -->
		<script>
		// 초기에는 첫 번째 차트만 보이도록 설정(서울시 전체)
		loadChart("seoul_dashboard_test.jsp");
		// 특정 차트를 로드하는 함수
		function loadChart(chartURL) {
			document.getElementById("chartFrame").src = chartURL;
		}
		</script>
		
		<!-- 안전지수 예측 대시보드 -->
      	<!-- predict_dashboard.js 파일을 먼저 로드한 후에 fetchDataAndDrawChart 함수를 호출 -->
      	<script src="dashboard/predict_dashboard.js"></script>
      	
      	<script>
       // 버튼 클릭 시 차트를 토글하도록 이벤트를 추가
          document.getElementById("btnNavbarSearch").addEventListener("click", function () {
              var selectedLocation = document.getElementById("locationSelect").value;
              fetchDataAndDrawChart(selectedLocation);
          });
      </script>
		
    </body>
</html>
