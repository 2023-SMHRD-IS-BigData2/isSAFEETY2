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
        
    </head>
    <body class="sb-nav-fixed">
    
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
                     <% if(LoginMember == null){ %>
                    	
                    		
                    			
                    <% } else {%>
                    		
                    		<p class="nim"><span class="nameUnderline"><%= LoginMember.getName() %></span>님 안녕하세요~!</p>
                    			
                    <% } %>
                </div>
            </form>

            <!-- Navbar-->
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
        <div id="layoutSidenav">
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">isSAFETY</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-black2 mb-4">
                                    <div class="card-body">안전시설 서비스</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <!-- <input id="text-balck" class="service-checkbox" type="checkbox" name="service" value="center"> 치안센터
                                        <input id="text-balck" class="service-checkbox" type="checkbox" name="service" value="cctv"> CCTV
                                        <input id="text-balck" class="service-checkbox" type="checkbox" name="service" value="bell"> 비상벨 -->
                                        <button id="cctv_click" onclick="center_view()">치안센터</button>
                                        <button id="cctv_click" onclick="cctv_view()">CCTV</button>
                                        <button id="cctv_click" onclick="bell_view()">비상벨</button>
                                        <button id="cctv_click" onclick="remove_view()">지우기</button>
                                        <div class="small text-white" id="result"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">안전 지수 예측</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                    	위치 
                                        <select name="location">
                                        	<hr>
                                        	<option value="seoul">서울시</option>
                                        </select>
                                        
                                        <select name="location2">
                                        	<hr>
                                        	<option value="jongno-gu">종로구</option>
                                        	<option value="jung-gu">중구</option>
                                        	<option value="yongsan-gu">용산구</option>
                                        	<option value="seongdong-gu">성동구</option>
                                        	<option value="gwangjin-gu">광진구</option>
                                        	<option value="dongdaemun-gu">동대문구</option>
                                        	<option value="jungnang-gu">중랑구</option>
                                        	<option value="seongbuk-gu">성북구</option>
                                        	<option value="gangbuk-gu">강북구</option>
                                        	<option value="dobong-gu">도봉구</option>
                                        	<option value="nowon-gu">노원구</option>
                                        	<option value="eunpyeong-gu">은평구</option>
                                        	<option value="seodaemun-gu">서대문구</option>
                                        	<option value="mapo-gu">마포구</option>
                                        	<option value="yangcheon-gu">양천구</option>
                                        	<option value="gangseo-gu">강서구</option>
                                        	<option value="guro-gu">구로구</option>
                                        	<option value="geumcheon-gu">금천구</option>
                                        	<option value="yeongdeungpo-gu">영등포구</option>
                                        	<option value="dongjak-gu">동작구</option>
                                        	<option value="gwanak-gu">관악구</option>
                                        	<option value="seocho-gu">서초구</option>
                                        	<option value="gangnam-gu">강남구</option>
                                        	<option value="songpa-gu">송파구</option>
                                        	<option value="gangdong-gu">강동구</option>
                                        </select>
                                        <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i id="search" class="fas fa-search"></i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">예측 결과</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">Card Title</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- 지도 -->
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        서울시 전체 지도
                                    </div>
                                    <div class="card-body">
                                    <div id="map" style="width: 100%; height: 812px;"></div>
                                    </div>
                                </div>
                            </div>
                           <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        전체 범죄율 변화
                                    </div>
                                    <div class="card-body">
                                    	<!-- 5대 범죄 건수 -->
										<span style="display: inline-block; width: 400px; height: 300px;"> 
											<canvas id="myRadarChart"></canvas>
										</span >
										<!-- 서울시 범죄/검거율 -->
										<span style="display: inline-block; width: 400px; height: 300px;"> 
											<canvas id="doubleDoughnutChart"></canvas>
										</span><br>
										<!-- 년도 기준 전국 데이터 비교 -->
										<span style="display: inline-block; width: 800px; height: 500px;">
										  	<canvas id="myMixedChart"></canvas>
										</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">isSAFETY - 팀 발버둥(정윤오, 임다이, 이상훈, 안서혁)</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

		<script>
			// jQuery 코드
			/* $(document).ready(function() {
				$(".service-checkbox").change(function() {
					var resultDiv = $("#result");
					var selectedServices = [1, 2, 3];
	
					$(".service-checkbox:checked").each(function() {
						selectedServices.push($(this).val());
					});
	
					if(selectedServices.includes(1)){
						
						resultDiv.show();
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
					
					}else if(selectedServices.includes(2)){
						
						resultDiv.show();
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
				                  var CCTV_marker = sop.marker([arr_cctv[i][0], arr_cctv[i][1]], {
				                     icon: myIcon
				                  });
				                  CCTV_marker.addTo(map);
				               }
				            }
				         })
						
					}else if(selectedServices.includes(3)){
						
						resultDiv.show();
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
					// if (selectedServices.length > 0) {
						// resultDiv.html("선택된 서비스: " + selectedServices.join(", ") + selectedServices.length);
						// resultDiv.show();
						// loadScripts(selectedServices);
					} else {
						resultDiv.remove();
					}
				});
			}); */
		</script>
		
		<script>
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
							var PoliceOffice_marker = sop.marker([arr_police[i][0], arr_police[i][1]], {
								icon: myIcon
							});
							PoliceOffice_marker.addTo(map);
						}
					}
				})
			}
		</script>
   
   		<script>
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
		                  var CCTV_marker = sop.marker([arr_cctv[i][0], arr_cctv[i][1]], {
		                     icon: myIcon
		                  });
		                  CCTV_marker.addTo(map);
		               }
		            }
		         })
      		}
   		</script>
   		
   		<script>
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
	   						var Bell_marker = sop.marker([arr_Bell[i][0], arr_Bell[i][1]], {
	   							icon: myIcon
	   						});
	   						Bell_marker.addTo(map);
	   					}
	   				}
	   			})
	   		}
   		</script>
   		
   		<script>
		    function remove_view() {
		        // Assuming these variables are accessible globally or within the scope you want
					if (PoliceOffice_marker) {
					      PoliceOffice_marker.remove();  // Remove police marker
			        }
			
			        if (CCTV_marker) {
			            CCTV_marker.remove();  // Remove CCTV marker
			        }
			
			        if (Bell_marker) {
			            Bell_marker.remove();  // Remove bell marker
			        }
			    }
		</script>

		<!-- 지도 시작위치, 시작줌레벨 -->
        <script type="text/javascript">
      		var map = sop.map('map');
     		 map.setView(sop.utmk(953427, 1950827), 5);
   		</script>
   		
   		<!-- 좌표값으로 폴리곤을 생성 -->
   		<script src="mapApi/SectionArea.js"></script>
   		
   		<!-- 생성된 폴리곤에 설정값을 넣어줌 -->
   		<script src="mapApi/PolygonSetting.js"></script>
   		
    	<!-- 폴리곤을 클릭했을때 동작할 행동을 넣어줌 -->
   		<script src="mapApi/AreaClick.js"></script>
   		
   		<!-- 행정구 대시보드 -->
		<script src="dashboard/gu_dashboard.js"></script>
			
		<!-- 서울시 대시보드 -->
        <script src="dashboard/seoul_dashboard.js"></script>
    	<!-- CCTV위치포인트표시 -->
		<!-- <script src="mapApi/CCTV.js"></script> -->
		
 		<!-- 경찰서위치포인트표시 -->
	 	<<!-- script src="mapApi/PoliceOffice.js"></script> -->
	 	
		<!-- 안전벨위치포인트표시 -->
		<!-- <script src="mapApi/Bell.js"></script> -->
		
    </body>
</html>
