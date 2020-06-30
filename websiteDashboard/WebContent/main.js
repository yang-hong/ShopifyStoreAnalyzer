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



//	  var chart = document.getElementById('chart3');
//	  var myChart = new Chart(chart, {
//	    type: 'line',
//	    data: {
//	      labels: ["One", "Two", "Three", "Four", "Five", 'Six', "Seven", "Eight"],
//	      datasets: [{
//	        label: "Lost",
//	        fill: false,
//	        lineTension: .5,
//	        pointBorderColor: "transparent",
//	        pointColor: "white",
//	        borderColor: '#d9534f',
//	        borderWidth: 0,
//	        showLine: true,
//	        data: [0, 40, 10, 30, 10, 20, 15, 20],
//	        pointBackgroundColor: 'transparent',
//	      },{
//	        label: "Lost",
//	        fill: false,
//	        lineTension: .5,
//	        pointColor: "white",
//	        borderColor: '#5cb85c',
//	        borderWidth: 0,
//	        showLine: true,
//	        data: [40, 0, 20, 10, 25, 15, 30, 0],
//	        pointBackgroundColor: 'transparent',
//	      },
//	                 {
//	                   label: "Lost",
//	                   fill: false,
//	                   lineTension: .5,
//	                   pointColor: "white",
//	                   borderColor: '#f0ad4e',
//	                   borderWidth: 0,
//	                   showLine: true,
//	                   data: [10, 40, 20, 5, 35, 15, 35, 0],
//	                   pointBackgroundColor: 'transparent',
//	                 },
//	                 {
//	                   label: "Lost",
//	                   fill: false,
//	                   lineTension: .5,
//	                   pointColor: "white",
//	                   borderColor: '#337ab7',
//	                   borderWidth: 0,
//	                   showLine: true,
//	                   data: [0, 30, 10, 25, 10, 40, 20, 0],
//	                   pointBackgroundColor: 'transparent',
//	                 }]
//	    },
//	  });

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
        "value" : followlinks,
        "color" : "#bdac93",
      } , 
      { 
        "label": "Nofollowlinks",
        "value" : nofollowlinks,
        "color" : "#9a93bd"
      } , 
      { 
        "label": "Textlinks",
        "value" : textlinks,
        "color" : "#bd93b5"
      } , 
      { 
        "label": "Imagelinks",
        "value" : imagelinks,
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
        "value" : domains,
        "color" : "#bdac93",
      } , 
      { 
        "label": "IPs",
        "value" : ips,
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