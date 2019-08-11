<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:simple_layout title="Error">

	<jsp:attribute name="head_area">
	<link rel="stylesheet"
			href='<spring:url value="/resources/css/home.css"></spring:url>'
			type="text/css" />
	
</jsp:attribute>


	<jsp:attribute name="navbar">
		<jsp:include page="../views/fragments/navbar.jsp"></jsp:include>	
</jsp:attribute>

	<jsp:attribute name="body">
	<div class="container">
		<h2>An error has encountered and handled by a controller method annotated with @ExceptionHandler.</h2>
	</div>

</jsp:attribute>

	<jsp:attribute name="footer">

	 <jsp:include page="../views/fragments/footer.jsp"></jsp:include> 
</jsp:attribute>


</t:simple_layout>
