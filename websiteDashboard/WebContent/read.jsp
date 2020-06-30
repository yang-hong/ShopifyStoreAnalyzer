<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
<style><%@include file="/WEB-INF/css/main.css"%></style>
<title>Read Shopify Store Information</title>
</head>
<%-- <% String table = (String) request.getAttribute("table"); %>
 --%>
 <%-- <%= table %> --%>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div class="anchor">
		<a class=btn href="search.jsp">Find Detailed Shopify Store
			Information</a>
	</div>
	<br>
<h1>Shopify Trending Store Information Summary</h1>

<section id="section-read">
<div class="tbl-content">

<table cellpadding="0" cellspacing="0" border="0">

<thead>
<tr>
<td><b>Website Address</b></td>
<td><b>Daily Traffic</b></td>
<td><b>Best Selling</b></td>
<td><b>Facebook Campaigns</b></td>
<td><b>Authority Score</b></td>
<td><b>Backlinks</b></td>
<td><b>Domains</b></td>
<td><b>IPs</b></td>
<td><b>Follow Links</b></td>
<td><b>Nofollow Links</b></td>
<td><b>Text Links</b></td>
<td><b>Image Links</b></td>
</tr>
</thead>

<tbody>
     <c:forEach var="info" items="${listInfo}">

      <tr>
      <td><c:out value="${info.webaddr}" /></td>
      <td><c:out value="${info.dailytraffic}" /></td>
       <td><a href = "<c:out value="${info.bestselling}" />">View</a></td>
       <td><a href = "<c:out value="${info.fbcampaigns}" />">View</a></td>
       <td><c:out value="${info.authorityscore}" /></td>
       <td><c:out value="${info.backlinks}" /></td>
       <td><c:out value="${info.domains}" /></td>
       <td><c:out value="${info.ips}" /></td>
       <td><c:out value="${info.followlinks}" /></td>
       <td><c:out value="${info.nofollowlinks}" /></td>
       <td><c:out value="${info.textlinks}" /></td>
       <td><c:out value="${info.imagelinks}" /></td>
      </tr>
     </c:forEach>
</tbody>
</table>

</div>
</section>
</body>

<jsp:include page="footer.jsp"></jsp:include>   
</html>