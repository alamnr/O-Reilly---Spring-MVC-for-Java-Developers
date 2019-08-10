<!--  https://mobiarch.wordpress.com/2013/01/04/page-templating-using-jsp-custom-tag/  -->

<!DOCTYPE html>
<%@ tag description="Simple Layout" language="java" pageEncoding="UTF-8"%>

<%@attribute name="title"%>
<%@attribute name="head_area" fragment="true" required="false"%>
<%@attribute name="navbar" fragment="true" required="false"%>
<%@attribute name="body" fragment="true" required="false"%>
<%@attribute name="footer" fragment="true" required="false"%>

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
<jsp:invoke fragment="head_area"></jsp:invoke>
<title>${title}</title>

</head>
<body>
	<header></header>

	<jsp:invoke fragment="navbar"></jsp:invoke>

	<section>
		<jsp:invoke fragment="body"></jsp:invoke>
	</section>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script> -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
				crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>

	<footer>
		<jsp:invoke fragment="footer"></jsp:invoke>
	</footer>

</body>
</html>