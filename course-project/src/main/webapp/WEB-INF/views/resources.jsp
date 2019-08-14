<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:simple_layout title="Find Resources">

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

		<h2>Resources</h2>
		<table class="table table-sm table-hover">
			<thead>
				<tr>
				<th scope="col">#</th>
				<th scope="col">Name</th>
				<th scope="col">Type</th>
				<th scope="col">Cost</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${resources}" var="resource" varStatus="counter">
					<tr>
						<th scope="row">${counter.index+1}</th>
						<td><a href='<spring:url value="/resource/${resource.resourceId}"></spring:url>'>${resource.name}</a></td>
						<td>${resource.type}</td>
						<td>${resource.cost}</td>
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
