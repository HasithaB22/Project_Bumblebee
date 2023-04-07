<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

    <title>JSP - Hello World</title>
</head>


<body>
<%
    response.sendRedirect("home-view");
%>



<%@include file="includes/navbar.jsp"%>
<% Connection conn= DBConnection.getConn();
    out.print(conn);%>


<%@include file="home.jsp"%>

<%--<%@include file="includes/marqueecarousel.jsp"%>--%>

<%--<%@include file="login.jsp"%>--%>
<%--<%@include file="signup.jsp"%>--%>
<%--<%@include file="seller/dashboard.jsp"%>--%>
<%--<%@include file="includes/contact.jsp"%>--%>
<%--<%@include file="seller/productmanagingnavbar.jsp"%>--%>
<%--<%@include file="seller/addproduct.jsp"%>--%>
<%--<%@include file="includes/allproducts.jsp"%>--%>




</body>
</html>