<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<t:simple_layout title="Resource Review">

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
		<h2>Please review the resource before save</h2>
		<div class="form-group"><label for="resource_name">Name</label> : <span>${resource.name}</span></div>
		<div class="form-group"><label for="resource_type">Type</label> : <span>${resource.type}</span></div>
		<div class="form-group"><label for="cost">Cost</label> : <span>${resource.cost}</span></div>
		<div class="form-group"><label for="unitOfMeasure">Unit of Measure</label>: <span>${resource.unitOfMeasure}</span></div>
		<div class="form-group"><label for="indicator">Indicators</label> : 
		<c:forEach items="${resource.indicators}" var="indicator">
			<span>${indicator}</span>
		</c:forEach>
		</div>
		<a href='<spring:url value="/resource/add"></spring:url>' class="btn btn-primary">Edit</a>
		<a href='<spring:url value="/resource/save"></spring:url>' class="btn btn-primary">Save</a>
	</div>
	
	</jsp:attribute>
	

	<jsp:attribute name="footer">

	<jsp:include page="../views/fragments/footer.jsp"></jsp:include>
</jsp:attribute>

</t:simple_layout>