<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
<style><%@include file="/WEB-INF/css/main.css"%></style>
<title>Shopify Website Analyzer</title>
<meta name="description" content="A demo site for analyzing Shopify store information. SEO analysis, social media profile analysis, and website traffic analysis.">
 <meta name="keywords" content="seo, shopify, social media analysis, big data, website traffic">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h1>Shopify Website Analyzer</h1>
<div class="section1">
<div class="anchor"><a class="indexbtngrey" href="read">View All Trending Shopify Website Information</a></div>
</br>

<div class="anchor">

                <form action="register" method="post">

                    

                        <input class="indexinput" type="email" placeholder="Enter your email Address to use the store search service" name="email" value= "" required />
                    
</br>

                    <button class="indexbtn" type="submit" name= "submit" value= "submit" class="btn btn-primary">Search A Store Details</button>

                </form>
</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>            
</body>
</html>