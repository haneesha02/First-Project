<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
</head>
<body>
<div id="chartdiv" style="width: 100%; height: 355px;"></div>
<spring:url value="/resources/js/amcharts/amcharts.js" var="coreJs" />
<spring:url value="/resources/js/amcharts/serial.js" var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</body>
</html>
<script>
var chart;
var chartData = ${data};

AmCharts.ready(function() {
    // SERIAL CHART
    chart = new AmCharts.AmSerialChart();
    chart.dataProvider = chartData;
    chart.categoryField = "row";
    chart.startDuration = 1;

    // AXES
    // category
    var categoryAxis = chart.categoryAxis;
    categoryAxis.labelRotation = 90;
    categoryAxis.gridPosition = "start";

    // value
    // in case you don't want to change default settings of value axis,
    // you don't need to create it, as one value axis is created automatically.
    // GRAPH
    var graph = new AmCharts.AmGraph();
    graph.valueField = "col";
    graph.balloonText = "[[category]]: [[value]]";
    graph.type = "column";
    graph.lineAlpha = 0;
    graph.fillAlphas = 0.8;
    console.log(graph);
    chart.addGraph(graph);
    
    chart.addListener("clickGraphItem", function (event) {
        // let's look if the clicked graph item had any subdata to drill-down into
        if (event.item.dataContext.subData != undefined) {
            // wow it has!
            // let's set that as chart's dataProvider
            event.chart.dataProvider = event.item.dataContext.subData;
            event.chart.validateData();
        }
    });

    chart.write("chartdiv");
   
    jQuery.each(chart.dataProvider, function( i, val ) {
    	 console.log(val.subData);
    	});
});
</script>