$(document).ready(function() {
   seoul_dashboard();
});
//차트별 데이터 받는 곳
//5대 범죄 건수
   var crimeData = {
      labels: [],
      datasets: [{
         data: [],
         label: '서울시 범죄 발생 건수',
         fill: true,
         backgroundColor: 'rgba(255, 99, 132, 0.2)',
         borderColor: 'rgb(255, 99, 132)',
         pointBackgroundColor: 'rgb(255, 99, 132)',
         pointBorderColor: '#fff',
         pointHoverBackgroundColor: '#fff',
         pointHoverBorderColor: 'rgb(255, 99, 132)'
      } /* datasets */]
   };/* crimeData */
 //범죄/검거율
      var arrData = {
            labels : [],
         datasets : [{
                  data : [],
                  label: '서울시 범죄 검거 건수',
                  backgroundColor : [ '#FF6384', '#36A2EB', '#FFCE56','#4CAF50', '#9C27B0' ],
                  type : 'doughnut',
                  radius: '80%'

               },{
                  data : [],
                  label: '서울시 범죄 검거율',
                  backgroundColor : [ '#FF6384', '#36A2EB', '#FFCE56','#4CAF50', '#9C27B0' ],
                  type : 'doughnut',
                  radius: '60%'

               }]
      };
//년도 기준 전국 데이터
      var infoData ={
            labels : ['서울특별시', '부산광역시', '대구광역시', '인천광역시', '광주광역시', '대전광역시', '울산광역시', '세종특별자치시', '경기도', '강원특별자치도', '충청북도', '충청남도', '전라북도', '전라남도', '경상북도', '경상남도', '제주특별자치도'],
            datasets : [{
               data : [],
               label : '전국 범죄 발생 건수',
               type : 'bar',
               borderWidth: 1,
               yAxisID: 'y-axis-1'
               
            },{
               data : [],
               label : '경찰 한명당 범죄 발생 건수',
               type : 'line',
               fill : false,
               yAxisID: 'y-axis-2'
            },{
               data : [],
               label : '천명당 범죄 발생 건수',
               type : 'line',
               fill : false,
               yAxisID: 'y-axis-2'
            }]
                   
      };

//차트
const ctx1 = document.getElementById("doubleDoughnutChart");
    var myChart = new Chart(ctx1, {
       type : 'doughnut',
       data : arrData,
       options: {
           responsive: true, // 반응형 활성화
           maintainAspectRatio: true, // 비율 유지 활성화
           plugins: { //라벨 세팅
             legend: {
                position: 'left', //라벨 위치
                fullwidth: false
             }   
          }
          }
     });

const ctx2 = document.getElementById('myRadarChart');
   var myRadarChart = new Chart(ctx2, {
      type: 'radar',
      data: crimeData,
      options: {
           responsive: true, // 반응형 활성화
           maintainAspectRatio: true // 비율 유지 활성화
          }
   });/* radar */

const ctx3 = document.getElementById('myMixedChart');
     var myMixedChart = new Chart(ctx3,{
        type : 'bar',
        data : infoData,
         options: {
         esponsive: true, // 반응형 활성화
           maintainAspectRatio: true, // 비율 유지 활성화 
            scales: {
               yAxes: [{
                  id: 'y-axis-1',
                  type: 'linear',
                  position: 'left',
               }, {
                  id: 'y-axis-2',
                  type: 'linear',
                  position: 'right',
               }]
            }
         }
      });
       
 function seoul_dashboard() {

         $.ajax({
            type : "POST",
            url : "http://119.200.31.33:5000/seoul_dashboard", // flask 주소
            /* data : {}, */
            processData : false,
            contentType : false,
            success : function(data) {
               console.log(data);
              var categories = data["categories"];
              var values = data["values"];
               var top_group_sizes = data["top_group_sizes"]; /* 검거 건수 */
               var subgroup_sizes = data["subgroup_sizes"]; /* 검거율 */
               var crime = data["crime"];
               var pol_cri = data["pol_cri"];
               var info_cri = data["info_cri"];
               updateChart(categories,values,top_group_sizes,subgroup_sizes,crime,pol_cri,info_cri);

            },
            error : function(e) {
               console.log("error", e);
               alert("fail");
            }
         });
      }
      
      function updateChart(categories,values,top_group_sizes,subgroup_sizes,crime,pol_cri,info_cri){
      myRadarChart.data.labels = categories;
      myRadarChart.data.datasets[0].data = values;
      myRadarChart.update();

        var label_crime = ['강도','강간강제추행','살인', '절도', '폭력'];
        myChart.data.labels = label_crime.map(label => label.split('\n')).flat();
        myChart.data.datasets[0].data = top_group_sizes;
        myChart.data.datasets[1].data = subgroup_sizes;
        myChart.update();

      myMixedChart.data.datasets[0].data = crime;
      myMixedChart.data.datasets[1].data = pol_cri;
        myMixedChart.data.datasets[2].data = info_cri;
        myMixedChart.update();
      }