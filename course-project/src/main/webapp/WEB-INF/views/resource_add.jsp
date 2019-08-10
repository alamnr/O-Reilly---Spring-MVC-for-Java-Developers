<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<t:simple_layout title="Resource Add">

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

		<h2>Add Resource</h2>  
		<spring:url value="/resource/review" var="formUrl" />
		 
		<form:form action="${formUrl}" method="post" modelAttribute="resource">
		<div class="form-group">
				<label for="resource_name">Name</label>
				<form:input path="name" cssClass="form-control" id="resource_name"
						aria-describedby="help" placeholder="Enter Resource Name" />
				<!-- <input type="text" id="resource-name" class="form-control"
						name="name" aria-describedby="help"
						placeholder="Enter Resource Name" /> -->
				<small id="help" class="form-text text-muted">Please enter your resource name properly</small>
			</div>
			
			<div class="form-group">
				<label for="project">Project</label>
				<form:select path="project"
						cssClass="custom-select custom-select-sm">
					<form:option value="-" label="--Please Select--"></form:option>
					<form:options items="${projects }" itemLabel="name"
							itemValue="projectId" />
				</form:select>
			</div>
			<div class="form-group">
				<label for="resource_type">Type</label>
				<form:select path="type" cssClass="custom-select custom-select-sm"
						aria-describedby="help">
					<form:option value="-" label="--Please Select --" />
					<form:options items="${options}" />
				</form:select>
				
				
				<%-- <form:select path="type" items="${options}"  cssClass="custom-select custom-select-sm" aria-describedby="help"/> --%>
				<!-- <select name="type" class="custom-select custom-select-sm"
						aria-describedby="help">
				<option selected>Please select</option>
				<option value="material">Material</option>
				<option value="other">Other</option>
				<option value="staff">Staff</option>
				<option value="tech">Technical Equipment</option>
				</select> -->
				<small id="help" class="form-text text-muted">Please select resource type</small>
			</div>	
			<div class="form-group">
				<label for="cost">Cost</label>
				<form:input id="cost" path="cost" class="form-control"
						placeholder="Enter cost" />
			</div>
			<div class="form-group"> 
			<label for="unit">Unit of Measure</label>
			
			<div class="form-row">
				<c:forEach items="${radioOptions}" var="item">
					<div class="custom-control custom-radio custom-control-inline">
				
				<form:radiobutton path="unitOfMeasure" id="${item}"
									cssClass="custom-control-input" value="${item}" />
				<label for="${item}" class="custom-control-label">${item}</label>
			</div>	
				</c:forEach>
			</div>
			</div> 
			
			<div class="form-group"> 
			<label for="unit">Indicators</label>
			
			<div class="form-row">
				<c:forEach items="${checkOptions}" var="item">
					<div class="custom-control custom-checkbox custom-control-inline">
				
				<form:checkbox path="indicators" id="${item}"
									cssClass="custom-control-input" value="${item}" />
				<label for="${item}" class="custom-control-label">${item}</label>
			</div>	
				</c:forEach>
			</div>
			</div> 
			<div class="form-group">
				<label for="notes">Notes</label>
				<form:textarea path="notes" id="notes" rows="3" cssClass="form-control"/>
			</div>
			<div class="form-group text-center">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
			
		</form:form>
		
	</div>

</jsp:attribute>

	<jsp:attribute name="footer">

	<jsp:include page="../views/fragments/footer.jsp"></jsp:include>
</jsp:attribute>

</t:simple_layout>

<%-- 
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!doctype html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet"
	href='<spring:url value="/resources/css/home.css"></spring:url>'
	type="text/css" />
<title>Project Manager</title>
</head>
<body>
	<jsp:include page="../views/fragments/navbar.jsp"></jsp:include>
	<div class="container">

		<h1>Add Resource</h1>
	</div>


</body>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

</html> --%>