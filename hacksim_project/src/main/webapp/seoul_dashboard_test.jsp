<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript"></script>
</head>
<body>

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
		
	<script src="seoul_dashboard.js"></script>
		
</body>
</html>