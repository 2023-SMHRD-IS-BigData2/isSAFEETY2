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
                                        <input id="text-balck" type="checkbox" name="service" value="center"> 치안센터
                                        <input id="text-balck" type="checkbox" name="service" value="ccte"> CCTV
                                        <input id="text-balck" type="checkbox" name="service" value="bell"> 비상벨
                                        <div class="small text-white"></div>
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
                                    <div id="map" style="width: 100%; height: 700px;"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        전체 범죄율 변화
                                    </div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
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
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        
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
    </body>
</html>
