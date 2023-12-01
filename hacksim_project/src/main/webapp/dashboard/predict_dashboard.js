// predict_dashboard.js

// URL에서 location 값을 가져오는 함수
function getLocationFromURL() {
    var queryString = window.location.search;
    var urlParams = new URLSearchParams(queryString);
    return urlParams.get('location');
}

// 데이터를 가져와 차트를 그리는 AJAX 요청
function fetchDataAndDrawChart(selectedLocation) {
    //let data = getLocationFromURL();
    $.ajax({
        type: "POST",
        url: "http://119.200.31.33:5000/pre",
        data: selectedLocation,
        success: function(data) {
          
            var predict_data = data["predict_data"];
            var gu_crime_cnt=data["gu_crime_cnt"];
            var gu_popBy_cnt=data["gu_popBy_cnt"];
            var gu_PolBy_cnt=data["gu_PolBy_cnt"];
            updateChart(predict_data,gu_crime_cnt,gu_popBy_cnt,gu_PolBy_cnt);
            
        },
        error: function(e) {
            console.log("error", e);
            alert("실패");
        }
    });
}

// 새로운 데이터로 차트를 업데이트하는 함수
function updateChart(predict_data,gu_crime_cnt,gu_popBy_cnt,gu_PolBy_cnt) {
    drawChart(predict_data);
    drawHorizontalBarChart(gu_crime_cnt, gu_popBy_cnt, gu_PolBy_cnt)
}

// 차트를 그리는 함수
function drawChart(predict_data) {
    var width = 100;
    var height = 100;
    var radius = Math.min(width, height) / 2;

    var color = d3.scaleOrdinal(["#FF6384", "gray"]);

    var pie = d3.pie()
        .value(function(d) { return d.value; })
        .startAngle(-Math.PI / 2)
        .endAngle(Math.PI / 2)
        .padAngle(0.01)
        .sort(null);

    var arc = d3.arc()
        .innerRadius(radius * 0.6)
        .outerRadius(radius);

    var svg = d3.select("#predictChart")
        .attr("width", width)
        .attr("height", height)
        .append("g")
        .attr("transform", "translate(" + width / 2 + "," + height / 2 + ")");

    var data = [
        { label: "안전지수", value: predict_data },
        { label: "불안지수", value: 100 - predict_data }
    ];

    var path = svg.selectAll("path")
        .data(pie(data))
        .enter().append("path")
        .attr("d", arc)
        .attr("fill", function(d, i) { return color(i); })
        .style("stroke", "white")
        .style("stroke-width", 2);

    path.transition()
        .duration(1000)
        .attrTween("d", arcTween)
        .on("end", function() {
        // 텍스트 업데이트 이후에 SVG 크기 다시 설정
        svg.attr("width", width)
           .attr("height", height);
    });

    function arcTween(a) {
        var i = d3.interpolate(a.startAngle + 0.1, a.endAngle);
        return function(t) {
            a.endAngle = i(t);
            return arc(a);
        };
    }
    
    // 기존 SVG 내용을 제거
   svg.select("#centered-text").remove();

    // 가운데 텍스트 추가
    var text = svg.append("text")
       .attr("id","centered-text")
        .text((predict_data) + '%')
        .attr("text-anchor", "middle")
        .attr("dy", "0.35em")
        .style("fill", "black")
        .style("font-size", "30px")
        .style("background-color", "white")
        .style("display", "block");
        
    // 디버깅을 위한 콘솔 출력
    console.log("Text Bounding Box:", text.node().getBBox());
        
}//반도넛형 차트

// 수평 바 차트를 그리는 함수
function drawHorizontalBarChart(gu_crime_cnt, gu_popBy_cnt, gu_PolBy_cnt) {
    var data = [
        { label: "범죄건수", value: gu_crime_cnt },
        { label: "천명당건수", value: gu_popBy_cnt },
        { label: "서당건수", value: gu_PolBy_cnt }
    ];

    var width = 150;
    var height = 100;
    var margin = { top: 20, right: 20, bottom: 30, left: 40 };

    var svg = d3.select("#barChart")
        .attr("width", width)
        .attr("height", height);

    var y = d3.scaleBand()
        .domain(data.map(function(d) { return d.label; }))
        .range([margin.top, height - margin.bottom])
        .padding(0.1);

    var x = d3.scaleLinear()
        .domain([0, d3.max(data, function(d) { return d.value; })])
        .range([margin.left, width - margin.right]);

    svg.selectAll(".bar")
        .data(data)
        .enter().append("rect")
        .attr("class", "bar")
        .attr("y", function(d) { return y(d.label); })
        .attr("height", y.bandwidth())
        .attr("x", margin.left)
        .attr("width", function(d) { return x(d.value) - margin.left; })
        .style("fill", "steelblue");

    // y축 추가
    svg.append("g")
        .attr("class", "y-axis")
        .attr("transform", "translate(" + margin.left + ",0)")
        .call(d3.axisLeft(y))
        .style("font-size", "5px");

    
    // 바 옆에 데이터 값을 나타내기 위한 텍스트 추가
    svg.selectAll(".value-text")
        .data(data)
        .enter().append("text")
        .attr("class", "value-text")
        .attr("x", function(d) { return x(d.value) + 5; }) // 데이터 값의 오른쪽에 위치하도록 조절
        .attr("y", function(d) { return y(d.label) + y.bandwidth() / 2; })
        .style("font-size", "7px") // 데이터 값의 글씨 크기 조절
        .text(function(d) { return d.value; });
}
