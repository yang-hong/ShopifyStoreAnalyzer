<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
<style><%@include file="/WEB-INF/css/main.css"%></style>
<title>Search Shopify Store Details</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h1>Search Shopify Store Details</h1>
<div id="form-main">
<div id="form-div">
<p>Please only enter the website address without "www" or "https://" prefix. For example: enter "google.com"</p>
</br>
<form name="searchForm" action="search" method="get">
<input id="search-input" type = "text" name = "searchVal" value ="" placeholder="Enter a website address" />
</br>
<div class="submit">
<input id="button-blue" type = "submit" name = "submit" value = "View Store Details" />
<div class="ease"></div>
</div>
</form>
</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>   
</body>
</html>