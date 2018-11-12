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
	margin-bottom: 20px;
	color:white;
		font-weight:bold;
	
}

#form {
	width: 100%;
	padding: 5px;
	margin: 5% auto;
	box-shadow: 0 9px 13px 5px;
	border-radius: 5px;
		background-color:rgb(59,118,135);
	
}

#form1 {
	align: center;
	border-radius: 5px;
	background-color:lightblue;
	padding: 20px;
	margin: 10px 0 15px 30px;
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
		<form class="form-horizontal" id="form" action="update" method="post">
			<h2 class="heading">Update Details</h2>
			<div id="form1">
				<div class="form-group">
					<label for="id" class="col-sm-3 control-label">Id:</label> 
					<div class="col-sm-9">
					<input type="text" class="form-control"
						id="id" placeholder="Enter id" name="id" value="${emp.id}"
						readonly="readonly">
				</div>
				</div>

				<div class="form-group">
					<label for="name" class="col-sm-3 control-label">Name:</label> 
					<div class="col-sm-9">
					<input type="text"
						class="form-control" id="name" placeholder="Enter name"
						name="name" value="${emp.name}" required="required">
				</div>
				</div>

				<div class="form-group">
					<label for="address" class="col-sm-3 control-label">Address:</label> 
					<div class="col-sm-9">
					<textarea rows="3"
						class="form-control" id="address" placeholder="Enter address"
						name="address" required="required">${emp.address}</textarea>
				</div>
				</div>

				<div class="form-group">
					<label for="jobloc" class="col-sm-3 control-label">Job Location:</label>
					<div class="col-sm-9"> 
					<select
						class="form-control" id="jobloc" placeholder="Enter jobloc"
						name="jobloc" required="required">
						<option value="Noida"
							${emp.jobLoc eq 'Noida'?"selected='selected'":"t"}>Noida</option>
						<option value="Chennai"
							${emp.jobLoc eq 'Chennai'?"selected='selected'":"t"}>Chennai</option>
						<option value="Pune"
							${emp.jobLoc eq'Pune'?"selected='selected'":"t"}>Pune</option>
						<option value="Bangalore"
							${emp.jobLoc eq 'Bangalore'?selected:"t"}>Bangalore</option>
					</select>
				</div>
				</div>
				<div class="form-group">
					<label for="phone" class="col-sm-3 control-label">Phone No:</label> 
					<div class="col-sm-9">
					<input type="tel"
						class="form-control" id="phone" placeholder="Enter phone"
						name="phone" pattern="[0-9]{10}" title="Provide in number format and length should be 10" value="${emp.phone}" required="required">
				</div>
				</div>

				<div class="form-group">
					<label for="designation" class="col-sm-3 control-label">Designation:</label>
					<div class="col-sm-9">
					 <input type="text"
						class="form-control" id="designation"
						placeholder="Enter designation" name="designation"
						value="${emp.designation}" required="required">
				</div>
				</div>

				<div class="form-group">
					<label for="email" class="col-sm-3 control-label">Email:</label> 
					<div class="col-sm-9">
					<input type="email"
						class="form-control" id="email" placeholder="Enter email"
						name="email" value="${emp.email}" required="required">
				</div>
				</div>
				</div>
				<div style="width: fit-content; margin:auto;">
				<input type="submit" name="submit" class="btn btn-primary" style="background-color:#993367"
					value="Update">
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