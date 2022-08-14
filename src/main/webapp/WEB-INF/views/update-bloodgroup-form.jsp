<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Blood Group</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%> 
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
body {
	background-color: #a5edf3;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form" class="form">
			<form:form action="update" method="post"
				modelAttribute="updatebloodgroup">
				<div>
					<label class="heading-text" for="bloodGroupId">Blood Group Id</label>
					<div>
						<form:input path="bloodGroupId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="bloodGroupId" cssClass="text-danger" />
				<div>
					<label  class="heading-text" for="bloodGroup">Blood Group Name</label>
					<div>
						<form:input path="bloodGroup" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only"
							placeholder="Enter Blood Group" class="input-size" />
					</div>
				</div>
				<form:errors path="bloodGroup" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="stockInUnits">Stock</label>
					<div>
						<form:input path="stockInUnits" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="stockInUnits" cssClass="text-danger" />
				<div>
					<form:button class="button-style">UPDATE</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>