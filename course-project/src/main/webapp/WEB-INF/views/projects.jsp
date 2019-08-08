<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:simple_layout title="Find Project">

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

		<h2>Projects</h2>
		<table class="table table-sm table-hover">
			<thead>
				<tr>
				<th scope="col">#</th>
				<th scope="col">Name</th>
				<th scope="col">Sponsor</th>
				<th scope="col">Description</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${projects}" var="project" varStatus="counter">
					<tr>
						<th scope="row">${counter.index+1}</th>
						<td>${project.name}</td>
						<td>${project.sponsor}</td>
						<td>${project.description}</td>
					</tr>
				</c:forEach>
			</tbody>
		
		</table>
	</div>

</jsp:attribute>

	<jsp:attribute name="footer">

	<jsp:include page="../views/fragments/footer.jsp"></jsp:include>
</jsp:attribute>

</t:simple_layout>
