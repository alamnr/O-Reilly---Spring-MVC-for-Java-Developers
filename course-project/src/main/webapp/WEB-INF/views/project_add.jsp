<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<t:simple_layout title="Project Add">

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
	<spring:url value="/project/add" var="formUrl"></spring:url>
		<form:form action='${formUrl}' method="post" modelAttribute="project">
			<div class="form-group">
				<label for="project_name">Name</label>
				<input type="text" id="project-name" class="form-control"
						name="name" aria-describedby="help"
						placeholder="Enter Project Name" />
				<small id="help" class="form-text text-muted">Please enter your project name properly</small>
				<form:errors cssClass="text-danger" path="name"/>
			</div>
			<div class="form-group">
				<label for="project_type">Type</label>
				<select name="type" class="custom-select custom-select-sm"
						aria-describedby="help">
				<option selected>Please select</option>
				<option value="single">Single Year</option>
				<option value="multi">Multi Year</option>
				</select>
				<small id="help" class="form-text text-muted">Please select project duration</small>
			</div>	
			<div class="form-group">
				<label for="sponsor_name">Sponsor Name</label>
				<form:input id="sponsor_name" path="sponsor.name"
						class="form-control" placeholder="Enter sponsor Name" />
			</div>
			<div class="form-group">
				<label for="sponsor_email">Sponsor Email</label>
				<form:input id="sponsor_email" path="sponsor.email"
						class="form-control" placeholder="Enter sponsor Email" />
			</div>
			<div class="form-group">
				<label for="sponsor_phone">Sponsor Phone</label>
				<form:input id="sponsor_phone" path="sponsor.phone"
						class="form-control" placeholder="Enter sponsor Phone" />
			</div>
			
			<div class="form-group">
				<label for="poc-1">POC-1:</label>
				<form:input id="poc-1" path="pointOfContacts[0]" class="form-control"
						placeholder="Enter POC-1" />
			</div>
			
			<div class="form-group">
				<label for="poc-2">POC-1:</label>
				<form:input id="poc-2" path="pointOfContacts[1]" class="form-control"
						placeholder="Enter POC-2" />
			</div>
			<div class="form-group">
				<label for="poc-3">POC-3:</label>
				<form:input id="poc-1" path="pointOfContacts[2]" class="form-control"
						placeholder="Enter POC-3" />
			</div>
			<div class="form-group">
				<label for="poc-2">Authorized Funds</label>
				<input type="text" id="funds" class="form-control"
						name="authorizedFunds" />
			</div>	
			<div class="form-group">
				<label for="hours">Authorized Hours</label>
				<input type="text" id="hours" class="form-control"
						name="authorizedHours" />
			</div>
			<div class="form-group">
				<label for="startDate">Start Date (Julian, i.e- 2015111 - yyyyddd)</label>
				<input type="text" id="startDate" class="form-control"
						name="startDate" />
			</div>
			<div class="form-group">
			 <label for="description">Description</label>
			 <textarea class="form-control" rows="3" id="description"
						name="description"></textarea>
			<form:errors cssClass="text-danger" path="description"/>
			</div>
			<div class="form-group">
				<label for="special">Special</label><br>
				<input type="checkbox" id="special" name="special">
			</div>
			<button type="submit" class="btn btn-secondary">Submit</button>
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

		<h1>Add Project</h1>
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