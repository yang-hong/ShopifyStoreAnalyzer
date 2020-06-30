<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shopify Website Analyzer Dashboard Sample</title>
<meta name="description" content="A sample dashboard for analyzing Shopify store information.">
 <meta name="keywords" content="seo, shopify, social media analysis, big data, website traffic">
<style><%@include file="/WEB-INF/css/main.css"%></style>
 <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>

</head>
<body>
<!-- <h1 class="test">test</h1> -->




 <aside class="side-nav" id="show-side-navigation1">
  <i class="fa fa-bars close-aside hidden-sm hidden-md hidden-lg" data-close="show-side-navigation1"></i>
  <div class="heading">
    <img src="http://www.webdesignhot.com/wp-content/uploads/2013/06/Abstract-Background-with-Colorful-Squares.jpg" alt="">
    <div class="info">
      <h3>www.samplewebsite.com</h3>
      <p>This website has generated <span class="main-color">3042</span> daily traffic.</p>
    </div>
  </div>
  <form name="searchForm" action="search" method="get">
  <div class="search">
    <input type="text" name = "searchVal" placeholder="Search new website"><i class="fa fa-search"></i>
  </div>
  </form>
  <ul class="categories">
    <li><i class="fa fa-home fa-fw" aria-hidden="true"></i><a href="sample.jsp"> Summary</a>
      <ul class="side-nav-dropdown">
      	<li><a href="sample.jsp">Store Summary</a></li>
        <li><a href="sample.jsp">Store Traffic</a></li>
        <li><a href="sample.jsp">Social Media</a></li>
        <li><a href="sample.jsp">Backlinks</a></li>
        <li><a href="sample.jsp">Recommendations</a></li>
      </ul>
    </li>
    <li><i class="fa fa-share-square-o" aria-hidden="true"></i><a href="sample.jsp"> Social Media</a>
      <ul class="side-nav-dropdown">
      	<li><a href="sample.jsp">Facebook Campaign</a></li>
        <li><a href="sample.jsp">Facebook Page</a></li>
        <li><a href="sample.jsp">Instagram</a></li>
        <li><a href="sample.jsp">Youtube</a></li>
        <li><a href="sample.jsp">TikTok</a></li>
      </ul>
    </li>
    <li><i class="fa fa-star aria-hidden="true""></i><a href="sample.jsp"> Best Selling</a></li>
    <li><i class="fa fa-line-chart aria-hidden="true""></i><a href="#"> SEO Strategy</a></li>

	<br>
    <br>
    <br>
	<p style="color:white;text-align:left;">System Settings</p>
    <li><i class="fa fa-wrench fa-fw"></i><a href="#"> Settings <span class="num prim">6</span></a></li>
    <li><i class="fa fa-id-card fa-fw"></i><a href="#"> About Us </a></li> 
  </ul>
  
  <br>
    <br>
    <br>
  <p style="text-align:center;">This site is for demo purpose only.</p>
</aside>
<section id="contents">
  <jsp:include page="header.jsp"></jsp:include>
  <div class="welcome">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <div class="content">
            <h2>www.samplewebsite.com</h2>
            <p>
            www.samplewebsite.com is a 
            <span class="main-color">general </span>website. 
            It currently has <span class="main-color">1024</span> daily traffic. 
            It is a purely <span class="main-color">online</span> operated store. 
            It has <span class="main-color">48</span> authority score. 
            This website has existed for <span class="main-color">3.9</span> years.
            The main traffic comes from <span class="main-color">Google Ads</span>. 
            For the future recommendations, the store should corporate with KOLs from TikTok.
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <section class="statistics">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-3">
          <div class="box">
            <i class="fa fa-line-chart fa-fw" style="background-color:#9993c4;"></i>
            <div class="info">
              <h3>1024</h3> <span>Daily Traffic</span>
            </div>
          </div>
        </div>
        <div class="col-md-3">
          <div class="box">
            <i class="fa fa-user-circle-o fa-fw" style="background-color:#93b9c4;"></i>
            <div class="info">
              <h3>3.9</h3> <span>Website Age</span>
            </div>
          </div>
        </div>
        <div class="col-md-3">
          <div class="box">
            <i class="fa fa-anchor fa-fw" style="background-color:#93c49d;"></i>
            <div class="info">
              <h3>48</h3> <span>Authority Score</span>
            </div>
          </div>
        </div>
        <div class="col-md-3">
          <div class="box">
            <i class="fa fa-quote-left fa-fw" style="background-color:#b193c4;"></i>
            <div class="info">
              <h3>10025</h3> <span>Backlinks</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class='statis text-center'>
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-2">
            <div class="box" style="background-color:#91adba">
              <i class="fa fa-link"></i>
              <h3>10025</h3>
              <p class="lead">Backlinks</p>
            </div>
          </div>
          <div class="col-md-2">
            <div class="box" style="background-color:#9690b8">
              <i class="fa fa-link"></i>
              <h3>512</h3>
              <p class="lead">Domains</p>
            </div>
          </div>
          <div class="col-md-2">
            <div class="box" style="background-color:#95bfa0">
              <i class="fa fa-link"></i>
              <h3>8901</h3>
              <p class="lead">Follow Links</p>
            </div>
          </div>
          <div class="col-md-2">
            <div class="box" style="background-color:#a0c1c7">
              <i class="fa fa-link"></i>
              <h3>2034</h3>
              <p class="lead">NofollowLinks</p>
            </div>
          </div>
          <div class="col-md-2">
            <div class="box" style="background-color:#b59ec4">
              <i class="fa fa-link"></i>
              <h3>7980</h3>
              <p class="lead">Text Links</p>
            </div>
          </div>
          <div class="col-md-2">
            <div class="box" style="background-color:#a19ec4">
              <i class="fa fa-link"></i>
              <h3>389</h3>
              <p class="lead">Image Links</p>
            </div>
          </div>
        </div>
      </div>
    </section>
  <section class="charts">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-6">
          <div class="chart-container">
            <h3>Website Traffic in 6 Months</h3>
            <canvas id="myChart2"></canvas>
          </div>
        </div>
        <div class="col-md-6">
          <div class="chart-container">
            <h3>Facebook vs Instagram Number of Posts Per Month</h3>
            <canvas id="myChart"></canvas>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="charts">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-4">
          <div class="chart-container">
            <h3>Backlinks Analysis</h3>
            <div id="chartPie1"><svg height="400"></svg></div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="chart-container">
            <h3>Number of Domains vs. IPs</h3>
            <div id="chartPie2"><svg height="400"></svg></div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="chart-container">
            <h3>Organic Traffic vs. Paid Traffic</h3>
            <div id="chartPie3"><svg height="400"></svg></div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="admins">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-4">
          <div class="box">
            <div class="admin">
              <div class="img">
                <i class="fa fa-facebook fa-fw" style="background-color:#395692;"></i>
              </div>
              <div class="info">
                <p><span class="main-color">23K</span> likes</p>
                <p><span class="main-color">2.5K</span> followers</p>
                <p><span class="main-color">43</span> posts</p>
              </div>
            </div>
            <div class="admin">
              <div class="img">
                <i class="fa fa-instagram fa-fw" style="background-color:#d9317a;"></i>
              </div>
              <div class="info">
                <p><span class="main-color">11K</span> likes</p>
                <p><span class="main-color">1.8K</span> followers</p>
                <p><span class="main-color">29</span> posts</p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="box">
            <div class="admin">
              <div class="img">
                <i class="fa fa-twitter fa-fw" style="background-color:#55acee;"></i>
              </div>
              <div class="info">
                <p><span class="main-color">13K</span> likes</p>
                <p><span class="main-color">1.5K</span> followers</p>
                <p><span class="main-color">23</span> posts</p>
              </div>
            </div>
            <div class="admin">
              <div class="img">
                <i class="fa fa-google fa-fw" style="background-color:#3cba54;"></i>
              </div>
              <div class="info">
                <p><span class="main-color">5</span> Google Ads</p>
                <p><span class="main-color">2nd</span> Google Page</p>
                <p><span class="main-color">2nd</span> Google Page</p>
              </div>
            </div>
          </div>
        </div>
                <div class="col-md-4">
          <div class="box">
            <div class="admin">
              <div class="img">
                <i class="fa fa-youtube fa-fw" style="background-color:#c4302b;"></i>
              </div>
              <div class="info">
                <p><span class="main-color">544K</span> likes</p>
                <p><span class="main-color">23.6K</span> followers</p>
                <p><span class="main-color">128</span> posts</p>
              </div>
            </div>
            <div class="admin">
              <div class="img">
                <i class="fa fa-google-plus fa-fw" style="background-color:#DC4C41;"></i>
              </div>
              <div class="info">
                <p><span class="main-color">0</span> likes</p>
                <p><span class="main-color">0</span> followers</p>
                <p><span class="main-color">0</span> posts</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
 </section>
 
  </section>
 
  <script src='https://code.jquery.com/jquery-3.4.1.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/chart.js@2.8.0'></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js'></script>
<script src='https://cdn.rawgit.com/novus/nvd3/v1.8.1/build/nv.d3.min.js'></script>

<script>
alert("This website address is not in our demo database. You are going to view the sample page.")

$(function () {
	$(document).ready(function(){
		  var firstName = $('#firstName').text();
		  var lastName = $('#lastName').text();
		  var intials = $('#firstName').text().charAt(0) + $('#lastName').text().charAt(0);
		  var profileImage = $('#profileImage').text(intials);
		});
	

	  'use strict';

	  var aside = $('.side-nav'),
	      showAsideBtn = $('.show-side-btn'),
	      contents = $('#contents'),
	      _window = $(window)

	  showAsideBtn.on("click", function () {
	    $("#" + $(this).data('show')).toggleClass('show-side-nav');
	    contents.toggleClass('margin');
	  });

	  if (_window.width() <= 767) {
	    aside.addClass('show-side-nav');
	  }

	  _window.on('resize', function () {
	    if ($(window).width() > 767) {
	      aside.removeClass('show-side-nav');
	    }
	  });

	  // dropdown menu in the side nav
	  var slideNavDropdown = $('.side-nav-dropdown');

	  $('.side-nav .categories li').on('click', function () {

	    var $this = $(this)

	    $this.toggleClass('opend').siblings().removeClass('opend');

	    if ($this.hasClass('opend')) {
	      $this.find('.side-nav-dropdown').slideToggle('fast');
	      $this.siblings().find('.side-nav-dropdown').slideUp('fast');
	    } else {
	      $this.find('.side-nav-dropdown').slideUp('fast');
	    }
	  });

	  $('.side-nav .close-aside').on('click', function () {
	    $('#' + $(this).data('close')).addClass('show-side-nav');
	    contents.removeClass('margin');
	  });


	  // Start chart
	  var chart = document.getElementById('myChart');
	  Chart.defaults.global.animation.duration = 2000; // Animation duration
	  Chart.defaults.global.title.display = false; // Remove title
	  Chart.defaults.global.title.text = "Chart"; // Title
	  Chart.defaults.global.title.position = 'bottom'; // Title position
	  Chart.defaults.global.defaultFontColor = '#999'; // Font color
	  Chart.defaults.global.defaultFontSize = 10; // Font size for every label

	  // Chart.defaults.global.tooltips.backgroundColor = '#FFF'; // Tooltips background color
	  Chart.defaults.global.tooltips.borderColor = 'white'; // Tooltips border color
	  Chart.defaults.global.legend.labels.padding = 0;
	  Chart.defaults.scale.ticks.beginAtZero = true;
	  Chart.defaults.scale.gridLines.zeroLineColor = 'rgba(255, 255, 255, 0.1)';
	  Chart.defaults.scale.gridLines.color = 'rgba(255, 255, 255, 0.02)';
	  Chart.defaults.global.legend.display = false;

	  var myChart = new Chart(chart, {
	    type: 'bar',
	    data: {
	      labels: ["January", "February", "March", "April", "May", "June", "Jul"],
	      datasets: [{
	        label: "Facebook",
	        fill: false,
	        lineTension: 0,
	        data: [5, 10, 12, 18, 25, 28,35],
	        pointBorderColor: "#93c49d",
	        borderColor: '#93c49d',
	        borderWidth: 2,
	        showLine: true,
	      }, {
	        label: "Instagram",
	        fill: false,
	        lineTension: 0,
	        startAngle: 2,
	        data: [3, 3, 7, 9, 12, 15,17],
	        // , '#ff6384', '#4bc0c0', '#ffcd56', '#457ba1'
	        backgroundColor: "transparent",
	        pointBorderColor: "#a39ccc",
	        borderColor: '#a39ccc',
	        borderWidth: 2,
	        showLine: true,
	      }]
	    },
	  });

	  //  Chart ( 2 )
	  var Chart2 = document.getElementById('myChart2').getContext('2d');
	  var chart = new Chart(Chart2, {
	    type: 'line',
	    data: {
	      labels: ["January", "February", "March", "April", 'May', 'June', 'July'],
	      datasets: [{
	        label: "website traffic",
	        backgroundColor: '#c4ba93',
	        borderColor: '#c4ba93',
	        borderWidth: 2,
	        pointBorderColor: false,
	        data: [200, 200, 308, 330, 385, 401, 606],
	        fill: false,
	        lineTension: .4,
	      }]
	    },

	    // Configuration options
	    options: {
	      title: {
	        display: false
	      }
	    }
	  });


	});

//Regular pie chart example

nv.addGraph(function() {
  var chart = nv.models.pieChart()
      .x(function(d) { return d.label })
      .y(function(d) { return d.value })
      .showLabels(true);

    d3.select("#chart svg")
        .datum(exampleData1())
        .transition().duration(350)
        .call(chart);
    

  return chart;
});

//Donut chart example
nv.addGraph(function() {
  var chart = nv.models.pieChart()
      .x(function(d) { return d.label })
      .y(function(d) { return d.value })
      .showLabels(true)     //Display pie labels
      .labelThreshold(.05)  //Configure the minimum slice size for labels to show up
      .labelType("percent") //Configure what type of data to show in the label. Can be "key", "value" or "percent"
      .donut(true)          //Turn on Donut mode. Makes pie chart look tasty!
      .donutRatio(0.45)     //Configure how big you want the donut hole size to be.
  .growOnHover(true)
      ;

    d3.select("#chartPie1 svg")
        .datum(exampleData1())
        .transition().duration(350)
        .call(chart);

  return chart;
});

//Pie chart example data. Note how there is only a single array of key-value pairs.


function exampleData1() {
  return  [
      { 
        "label": "Followlinks",
        "value" : 8092,
        "color" : "#bdac93",
      } , 
      { 
        "label": "Nofollowlinks",
        "value" : 2890,
        "color" : "#9a93bd"
      } , 
      { 
        "label": "Textlinks",
        "value" : 8920,
        "color" : "#bd93b5"
      } , 
      { 
        "label": "Imagelinks",
        "value" : 340,
        "color" : "#b5bd93"
      }
    ];
}



//Regular pie chart example2

nv.addGraph(function() {
  var chart = nv.models.pieChart()
      .x(function(d) { return d.label })
      .y(function(d) { return d.value })
      .showLabels(true);

    d3.select("#chart svg")
        .datum(exampleData2())
        .transition().duration(350)
        .call(chart);
    

  return chart;
});

//Donut chart example
nv.addGraph(function() {
  var chart = nv.models.pieChart()
      .x(function(d) { return d.label })
      .y(function(d) { return d.value })
      .showLabels(true)     //Display pie labels
      .labelThreshold(.05)  //Configure the minimum slice size for labels to show up
      .labelType("percent") //Configure what type of data to show in the label. Can be "key", "value" or "percent"
      .donut(true)          //Turn on Donut mode. Makes pie chart look tasty!
      .donutRatio(0.45)     //Configure how big you want the donut hole size to be.
  .growOnHover(true)
      ;

    d3.select("#chartPie2 svg")
        .datum(exampleData2())
        .transition().duration(350)
        .call(chart);

  return chart;
});

//Pie chart example data. Note how there is only a single array of key-value pairs.


function exampleData2() {
  return  [
      { 
        "label": "Domains",
        "value" : 520,
        "color" : "#bdac93",
      } , 
      { 
        "label": "IPs",
        "value" : 450,
        "color" : "#9a93bd"
      }
    ];
}



//Regular pie chart example3

nv.addGraph(function() {
  var chart = nv.models.pieChart()
      .x(function(d) { return d.label })
      .y(function(d) { return d.value })
      .showLabels(true);

    d3.select("#chart svg")
        .datum(exampleData3())
        .transition().duration(350)
        .call(chart);
    

  return chart;
});

//Donut chart example
nv.addGraph(function() {
  var chart = nv.models.pieChart()
      .x(function(d) { return d.label })
      .y(function(d) { return d.value })
      .showLabels(true)     //Display pie labels
      .labelThreshold(.05)  //Configure the minimum slice size for labels to show up
      .labelType("percent") //Configure what type of data to show in the label. Can be "key", "value" or "percent"
      .donut(true)          //Turn on Donut mode. Makes pie chart look tasty!
      .donutRatio(0.45)     //Configure how big you want the donut hole size to be.
  .growOnHover(true)
      ;

    d3.select("#chartPie3 svg")
        .datum(exampleData3())
        .transition().duration(350)
        .call(chart);

  return chart;
});

//Pie chart example data. Note how there is only a single array of key-value pairs.


function exampleData3() {
  return  [
      { 
        "label": "Organic",
        "value" : 100,
        "color" : "#bd93b5",
      } , 
      { 
        "label": "Paid",
        "value" : 340,
        "color" : "#b5bd93"
      }
    ];
}
		
</script>
</body>
</html>