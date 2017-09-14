<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%session.setAttribute("path", application.getContextPath()); %>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%-- css,script 껴넣을때 참고 --%>
<link href="<c:url value='/resources/css/menu.css'/>" rel="stylesheet"> 
<script src="<c:url value="/resources/js/menu.js" />"></script>
<title><tiles:getAsString name="title" /></title>
</head>
  
<body>
    <section id="mainMenu">
        <tiles:insertAttribute name="menu" />
    </section>
	             
    <section id="siteContent">
    	<tiles:insertAttribute name="mainImage" />
        <tiles:insertAttribute name="body" />
    </section>

    <footer id="footer">
        <tiles:insertAttribute name="footer" />
    </footer>
</body>
</html>
