<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.heading {
	text-align: center;
	margin-bottom:20px;
	color:white;
	font-weight:bold;
}

#form {
	width: 100%;
	padding: 5px; margin:5% auto;
	box-shadow: 0 9px 13px 5px;
	border-radius: 5px;
	background-color:rgb(59,118,135);
}

#form1 {
	align: center;
	border-radius: 5px;
	background-color:lightblue;
	padding: 20px;
	margin:10px	0 15px 30px;
}
</style>


</head>
<body>
<nav class="navbar navbar-inverse">
<div class="container-fluid">
<div class="navbar-header">
<a class="navbar-brand" href="index.jsp" style="color:white">EmpData</a>
</div>
</div>
</nav>
	<div class="container">
		<form class="form-horizontal" id="form" action="insert" method="post">
			<h2 class="heading">Registration Form</h2>
			<div id="form1">
				<div class="form-group">
					<label for="name" class="col-sm-3 control-label">Name</label>
					<div class="col-sm-9">
						<input type="text" name="name" placeholder="Your Name"
							class="form-control" autofocus required>
					</div>
				</div>
				<div class="form-group">
					<label for="address" class="col-sm-3 control-label">Address</label>
					<div class="col-sm-9">
						<textarea rows="3" placeholder="Your Address" class="form-control"
							name="address" required></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="phone" class="col-sm-3 control-label">Phone no</label>
					<div class="col-sm-9">
						<input type="tel" name="phone" placeholder="Your phone no."
							pattern="[0-9]{10}" title="Provide in number format and length should be 10" class="form-control" required>
					</div>
				</div>
				<div class="form-group">
					<label for="jobloc" class="col-sm-3 control-label">Job
						Location</label>
					<div class="col-sm-9">
						<select name="jobloc" class="form-control"
							placeholder="Your job location">
							<option selected>Noida</option>
							<option>Pune</option>
							<option>Bangalore</option>
							<option>Chennai</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="designation" class="col-sm-3 control-label">Designation</label>
					<div class="col-sm-9">
						<input type="text" name="designation"
							placeholder="Your designation" class="form-control" required>
					</div>
				</div>
				<div class="form-group">
					<label for="email" class="col-sm-3 control-label">Email</label>
					<div class="col-sm-9">
						<input type="email" name="email" placeholder="Your email address"
							class="form-control" required>
					</div>
				</div>
			</div>
			<div style="width: fit-content; margin:auto;">
				<input type="submit" name="submit" class="btn btn-primary" style="background-color:#993367"
					value="Register">
			</div>
		</form>
	</div>
	<div>
<footer class="jumbotron text-center" align="center" style="padding: 6px 40px 6px 40px;margin-bottom:0; position: fixed; left:0px; bottom:0px; width:100%" >
&copy; 2018 EmpData &nbsp;
</footer>
</div>
	
</body>
</html>