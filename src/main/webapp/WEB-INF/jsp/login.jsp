<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>FitnessTracker Custom Login</title>
<link href="assets/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
<style type="text/css">
.errorBlock {
	color: #ff0000; background-color = #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
</head>

<body onload="document.loginForm.j_username.focus()">
	<h3>Tracker Custom Login Page</h3>
	<c:if test="${not empty error }">
		<div class="errorBlock">
			Your login was unsuccsessful. <br /> Caused:
			${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
		</div>
	</c:if>

	<form action="j_spring_security_check" name="loginForm" method="post">
		<div class="container">
			<div class="row">
				User:
				<input type="text" name="j_username" value="">
			</div>
			<div class="row">
				Password:
				<input type="password" name="j_password" value="">
			</div>
			<div class="row">
				<div class="col-md-6">
					<input type="submit" name="Submit" value="Submit">
				</div>
				<div class="col-md-6">
					<input type="reset" name="Reset" value="Reset">
				</div>
			</div>
		</div>
	</form>
</body>
	<script src="jquery-1.8.3.js"></script>
	<script src="assets/js/bootstrap.js"></script>
</html>