<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:simple_layout title="Project Detail">

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
		<h2>Project detail</h2>
		<ul class="list-group">
			<li class="list-group-item"><label>Project Name:</label><span>  ${project.name} </span></li>
			<li class="list-group-item"><label>Sponsor: </label><span> ${project.sponsor}</span></li>
			<li class="list-group-item"><label>Description:</label><span>  ${project.description}</span></li>
		</ul>
	</div>
	
</jsp:attribute>

<jsp:attribute name="footer">

	<jsp:include page="../views/fragments/footer.jsp"></jsp:include>
</jsp:attribute>

</t:simple_layout>

