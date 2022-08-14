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
	background-color: #a5edf3;
} 
</style>
</head>
<body>
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
			</form:form>
		</div>
	</div>
</body>
</html>