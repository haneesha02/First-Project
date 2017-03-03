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
</body>
</html>
<script>
var chart;

var chartData = [{
    country: "USA",
    visits: 4025,
    subdata: [
        { country: "New York", visits: 1000 , subdata: [
        { country: "Street 1", visits: 10 },
        { country: "Street 2", visits: 20 },
        { country: "Street 3", visits: 30 },
        { country: "Street 4", visits: 40 },
        { country: "Street 5", visits: 50 }
    ]},
        { country: "California", visits: 785 },
        { country: "Florida", visits: 501 },
        { country: "Illinois", visits: 321 },
        { country: "Washington", visits: 101 }
    ]},
{
    country: "China",
    visits: 1882},
{
    country: "Japan",
    visits: 1809},
{
    country: "Germany",
    visits: 1322}];
/* var chartData = [{
    country: "USA",
    visits: 4025,
    subdata: [
        { country: "New York", visits: 1000 },
        { country: "California", visits: 785 },
        { country: "Florida", visits: 501 },
        { country: "Illinois", visits: 321 },
        { country: "Washington", visits: 101 }
    ]},
{
    country: "China",
    visits: 1882},
{
    country: "Japan",
    visits: 1809},
{
    country: "Germany",
    visits: 1322}]; */

AmCharts.ready(function() {
    // SERIAL CHART
    chart = new AmCharts.AmSerialChart();
    chart.dataProvider = chartData;
    chart.categoryField = "country";
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
    graph.valueField = "visits";
    graph.balloonText = "[[category]]: [[value]]";
    graph.type = "column";
    graph.lineAlpha = 0;
    graph.fillAlphas = 0.8;
    chart.addGraph(graph);
    
    chart.addListener("clickGraphItem", function (event) {
        // let's look if the clicked graph item had any subdata to drill-down into
        if (event.item.dataContext.subdata != undefined) {
            // wow it has!
            // let's set that as chart's dataProvider
            event.chart.dataProvider = event.item.dataContext.subdata;
            event.chart.validateData();
        }
    });

    chart.write("chartdiv");
});
</script>