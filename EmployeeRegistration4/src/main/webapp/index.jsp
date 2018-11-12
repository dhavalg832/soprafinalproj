<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-inverse">
<div class="container-fluid">
<div class="navbar-header">
<a class="navbar-brand" href="index.jsp" style="color:white">Website Name</a>
</div>

<ul class="nav navbar-nav navbar-right">
<li><a href="EmpRegForm.jsp" style="color:white; font-size:20px">Add</a></li>
</ul>
</div>
</nav>
	<%
RequestDispatcher dispatcher=request.getRequestDispatcher("get");
dispatcher.include(request, response);
%>
	<div class="container">
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Phone No.</th>
					<th>Address</th>
					<th>Job Location</th>
					<th>Designation</th>
					<th colspan="3">Email</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${emp}" var="e">
				<tr>
					<td>${e.id}</td>
					<td>${e.name}</td>
					<td>${e.phone}</td>
					<td>${e.address}</td>
					<td>${e.jobLoc}</td>
					<td>${e.designation}</td>
					<td>${e.email}</td>
					<td><a href="fetch?id=${e.id}">Update</a></td>
					<td><a href="delete?id=${e.id}">Delete</a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
<div>
<footer class="jumbotron text-center" align="center" style="padding: 6px 40px 6px 40px;margin-bottom:0; position: fixed; left:0px; bottom:0px; width:100%" >
&copy; 2018 Minimalistic Website &nbsp;
</footer>
</div>
</body>
</html>