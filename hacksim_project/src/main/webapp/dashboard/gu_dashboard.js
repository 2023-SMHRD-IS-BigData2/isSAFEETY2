	$(document).ready(function() {
		fetchDataAndDrawChart();
	});
	
	//차트 데이터 객체
	var popData = {
		      labels: [],
		      datasets: [{
		        label: '# Population',
		        data: [],
		        backgroundColor: [
		            'rgba(255, 99, 132, 0.2)',
		            'rgba(75, 192, 192, 0.2)',
		            'rgba(153, 102, 255, 0.2)'
		          ],
		          borderColor: [
		            'rgb(255, 99, 132)',
		            'rgb(75, 192, 192)',
		            'rgb(153, 102, 255)'
		          ],
		        borderWidth: 1
		      }]
		    };
	
	var uhData = {
		      labels: [],
		      datasets: [{
		        label: '# 시설 현황',
		        data: [],
		        backgroundColor: [],
		        borderWidth: 1
		      }]
		    };
	
	var houseData = {
		      labels: [],
		      datasets: [{
		        label: '# 주거 현황',
		        data: [],
		        backgroundColor: [], 
		        borderWidth: 1, //호의 테두리 넓이(픽셀 단위)
		        weight: 2 //데이터집합의 상대적 두께
		      }]
		    };

	
	//Chart.js 생성
	  const ctxP = document.getElementById('myPopChart');

	  var myPopChart = new Chart(ctxP, {
	    type: 'bar',
	    data: popData,
	    options: {
	      responsive: true, // 반응형 활성화
          maintainAspectRatio: true, // 비율 유지 활성화
	      scales: {
	        y: {
	          beginAtZero: true
	        }
	      }
	    }
	  });
	const ctxU = document.getElementById('myUhChart');

	  var myUhChart = new Chart(ctxU, {
	    type: 'polarArea',
	    data: uhData,
	    options: {
	      responsive: true, // 반응형 활성화
          maintainAspectRatio: true, // 비율 유지 활성화	    	
	    	animation: { //애니메이션 효과-한바퀴 돌아서 나옴
	    	animateRotate: true
	    	},
	    	plugins: { //라벨 세팅
	    		legend: {
		    		position: 'left', //라벨 위치
		    		fullwidth: false
		    	}	
	    	}
	    }
	  });

	//Chart.js 생성
	  const ctxH = document.getElementById('myHouseChart');

	  var myHouseChart = new Chart(ctxH, {
	    type: 'doughnut',
	    data: houseData,
	    options: {
	    	responsive: true,
	    	maintainAspectRatio: true, //
	    	cutoutpercentage: 50,
	    	animation: { //애니메이션 효과-한바퀴 돌아서 나옴
	    		animateRotate: true
	    	},
	    	plugins: { //라벨 세팅
	    		legend: {
		    		position: 'left', //라벨 위치
		    		fullwidth: false
		    	}	
	    	}
	    }
	  });
	
	//ajax로 데이터 받아와서 차트 업데이트
	function fetchDataAndDrawChart() {
		//let form = $('#testFile')[0]; //form태그로 데이터 전송 시
		//let data = new FormData(form);
		let data = '종로구'; //flask에 구 이름 보내기-> 구별 데이터로 받아오기 
		   	 $.ajax({
	         			type: "POST",
	         			url: "http://127.0.0.1:5003/gu_dashboard", // flask server
	         			//data: JSON.stringfy(postdata),
	         			data: data,
	         			processData: false,
	         			contentType: false,
	         			success: function(data) {
	         				console.log(data);
	         				var pop_label=data["pop_label"]; //성공 시 flask에서 x값 받기
	         				var pop_cnt=data["pop_cnt"]; //성공 시 flask에서 y값 받기
							var business_name=data["business_name"]; //성공 시 flask에서 업태구분명 받기
	         				var business_cnt=data["business_cnt"]; //성공 시 flask에서 업태 수 받기
							var house_type=data["house_type"]; 
	         				var house_cnt=data["house_cnt"]; 
	         				updateChart(pop_label,pop_cnt,business_name,business_cnt,house_type,house_cnt);
	         		
	         				},
	    	 		error: function(e) {
						console.log("error",e);
						alert("fail");
					}
	         			});
		}
	 
	   //chart update func
	   function updateChart(pop_label,pop_cnt,business_name,business_cnt,house_type,house_cnt) {
        		myPopChart.data.labels = pop_label;
       		myPopChart.data.datasets[0].data = pop_cnt;
        		myPopChart.update();

		// Set backgroundColor 랜덤하게 값 추가 ( 투명도 30% )
		var colors=[]; //컬러리스트 생성
		for(var i=0;i<13;i++) {
			var RGB_1 = Math.floor(Math.random() * (255 + 1))
			var RGB_2 = Math.floor(Math.random() * (255 + 1))
			var RGB_3 = Math.floor(Math.random() * (255 + 1))
			var strRGBA = 'rgba(' + RGB_1 + ',' + RGB_2 + ',' + RGB_3 + ',0.3)'
			colors.push(strRGBA);
			} //리스트에 랜덤 컬러값 넣기	
		myUhChart.data.datasets[0].backgroundColor=colors; //컬러
		myUhChart.data.labels = business_name.map(label => label.split('\n')).flat(); //업태구문명, 라벨 개행 적용
		myUhChart.data.datasets[0].data = business_cnt; //업태 수
        		myUhChart.update();
		
		myHouseChart.data.datasets[0].backgroundColor=colors; //컬러
		myHouseChart.data.labels = house_type.map(label => label.split('\n')); //주거형태
		myHouseChart.data.datasets[0].data = house_cnt; //주거형태 수
		myHouseChart.update();		
    }