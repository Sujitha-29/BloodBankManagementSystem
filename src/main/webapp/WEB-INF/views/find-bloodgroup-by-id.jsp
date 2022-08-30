<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Blood Group By Id</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%>
body {
	
	background-image: url("https://wallpapercave.com/wp/wp4323461.png");
	background-position: center;
	background-repeat: no-repeat; 
	background-size: cover;
    position: relative; 
    background-attachment:fixed;
}
</style>
</head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="history.back()">Go Back</button>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="document.location='/bloodgroup/listbloodgroup'">List
</button>
<div id="root">
		<div id="form" class="form">
			<form:form action="getbloodgroup" method="post" modelAttribute="getbloodgroupbyid">
				<div>
					<label class="heading-text" for="bloodGroupId">Blood Group Id</label>
					<div>
						<form:input path="bloodGroupId" class="input-size" />
					</div>
				</div>
				<div>
					<label  class="heading-text" for="bloodGroup">Blood Group Name</label>
					<div>
						<form:input path="bloodGroup" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="stockInUnits">Stock</label>
					<div>
						<form:input path="stockInUnits" class="input-size" />
					</div>	
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>