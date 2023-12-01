<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>행정구 대시보드</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
<!-- 구 인구수 -->
	<span style="display: inline-block; width: 400px; height: 300px;"> 
  		<canvas id="myHouseChart"></canvas>
	</span >
<!-- 구 주거형태 -->
	<span style="display: inline-block; width: 400px; height: 300px;"> 
  		<canvas id="myUhChart"></canvas>
	</span><br>
<!-- 구 유흥시설 -->
	<span style="display: inline-block; width: 800px; height: 500px;">
  		<canvas id="myPopChart"></canvas>
	</span>
	<!-- 행정구 데이터를 파라미털로 받아오기  -->
	<script src="dashboard/gu_dashboard.js?location=${param.location}"></script>
</body>
</html>