<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shopify Website Analyzer Dashboard</title>
<meta name="description" content="A detailed demo dashboard for analyzing Shopify store information. SEO analysis, social media profile analysis, and website traffic analysis.">
 <meta name="keywords" content="seo, shopify, social media analysis, big data, website traffic">
<style><%@include file="/WEB-INF/css/main.css"%></style>
 <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>

</head>
<body>
<!-- <h1 class="test">test</h1> -->

<c:forEach var="info" items="${listInfo}">

<c:set var="domains" value="${info.domains}" />
<c:set var="ips" value="${info.ips}" />
<c:set var="followlinks" value="${info.followlinks}" />
<c:set var="nofollowlinks" value="${info.nofollowlinks}" />
<c:set var="textlinks" value="${info.textlinks}" />
<c:set var="imagelinks" value="${info.imagelinks}" />



 <aside class="side-nav" id="show-side-navigation1">
  <i class="fa fa-bars close-aside hidden-sm hidden-md hidden-lg" data-close="show-side-navigation1"></i>
  <div class="heading">
    <img src="http://www.webdesignhot.com/wp-content/uploads/2013/06/Abstract-Background-with-Colorful-Squares.jpg" alt="">
    <div class="info">
      <h3><a href="https://${info.webaddr}"><c:out value="${info.webaddr}" /></a></h3>
      <p>This website has generated <span class="main-color"><c:out value="${info.dailytraffic}" /></span> daily traffic.</p>
    </div>
  </div>
  <form name="searchForm" action="search" method="get">
  <div class="search">
    <input type="text" name = "searchVal" placeholder="Search new website"><i class="fa fa-search"></i>
  </div>
  </form>
  <ul class="categories">
    <li><i class="fa fa-home fa-fw" aria-hidden="true"></i><a href="search?searchVal=${info.webaddr}&submit=View+Store+Details"> Summary</a>
      <ul class="side-nav-dropdown">
      	<li><a href="search?searchVal=${info.webaddr}&submit=View+Store+Details">Store Summary</a></li>
        <li><a href="search?searchVal=${info.webaddr}&submit=View+Store+Details">Store Traffic</a></li>
        <li><a href="search?searchVal=${info.webaddr}&submit=View+Store+Details">Social Media</a></li>
        <li><a href="search?searchVal=${info.webaddr}&submit=View+Store+Details">Backlinks</a></li>
        <li><a href="search?searchVal=${info.webaddr}&submit=View+Store+Details">Recommendations</a></li>
      </ul>
    </li>
    <li><i class="fa fa-share-square-o" aria-hidden="true"></i><a href="${info.fbcampaigns}"> Social Media</a>
      <ul class="side-nav-dropdown">
      	<li><a href="${info.fbcampaigns}">Facebook Campaign</a></li>
        <li><a href="${info.fbcampaigns}">Facebook Page</a></li>
        <li><a href="${info.fbcampaigns}">Instagram</a></li>
        <li><a href="${info.fbcampaigns}">Youtube</a></li>
        <li><a href="${info.fbcampaigns}">TikTok</a></li>
      </ul>
    </li>
    <li><i class="fa fa-star aria-hidden="true""></i><a href="${info.bestselling}"> Best Selling</a></li>
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
            <h2><c:out value="${info.webaddr}" /></h2>
            <p>
            <c:out value="${info.webaddr}" /> is a 
            <span class="main-color">general </span>website. 
            It currently has <span class="main-color"><c:out value="${info.dailytraffic}" /></span> daily traffic. 
            It is a purely <span class="main-color">online</span> operated store. 
            It has <span class="main-color"><c:out value="${info.authorityscore}" /></span> authority score. 
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
              <h3><c:out value="${info.dailytraffic}" /></h3> <span>Daily Traffic</span>
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
              <h3><c:out value="${info.authorityscore}" /></h3> <span>Authority Score</span>
            </div>
          </div>
        </div>
        <div class="col-md-3">
          <div class="box">
            <i class="fa fa-quote-left fa-fw" style="background-color:#b193c4;"></i>
            <div class="info">
              <h3><c:out value="${info.backlinks}" /></h3> <span>Backlinks</span>
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
              <h3><c:out value="${info.backlinks}" /></h3>
              <p class="lead">Backlinks</p>
            </div>
          </div>
          <div class="col-md-2">
            <div class="box" style="background-color:#9690b8">
              <i class="fa fa-link"></i>
              <h3><c:out value="${info.domains}" /></h3>
              <p class="lead">Domains</p>
            </div>
          </div>
          <div class="col-md-2">
            <div class="box" style="background-color:#95bfa0">
              <i class="fa fa-link"></i>
              <h3><c:out value="${info.followlinks}" /></h3>
              <p class="lead">Follow Links</p>
            </div>
          </div>
          <div class="col-md-2">
            <div class="box" style="background-color:#a0c1c7">
              <i class="fa fa-link"></i>
              <h3><c:out value="${info.nofollowlinks}" /></h3>
              <p class="lead">NofollowLinks</p>
            </div>
          </div>
          <div class="col-md-2">
            <div class="box" style="background-color:#b59ec4">
              <i class="fa fa-link"></i>
              <h3><c:out value="${info.textlinks}" /></h3>
              <p class="lead">Text Links</p>
            </div>
          </div>
          <div class="col-md-2">
            <div class="box" style="background-color:#a19ec4">
              <i class="fa fa-link"></i>
              <h3><c:out value="${info.imagelinks}" /></h3>
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
 
</c:forEach>
  <script src='https://code.jquery.com/jquery-3.4.1.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/chart.js@2.8.0'></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js'></script>
<script src='https://cdn.rawgit.com/novus/nvd3/v1.8.1/build/nv.d3.min.js'></script>
<script src="./main.js"></script>
<script>
var followlinks = "${followlinks}";
var nofollowlinks = "${nofollowlinks}";
var textlinks = "${textlinks}";
var imagelinks = "${imagelinks}";
var domains = "${domains}";
var ips = "${ips}";
		
</script>
</body>
</html>