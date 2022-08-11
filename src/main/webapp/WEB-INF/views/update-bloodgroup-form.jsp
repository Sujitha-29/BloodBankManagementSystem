<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Blood Group</title>
<style>
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post"
				modelAttribute="updatebloodgroup">
				<div>
					<label for="bloodGroupId">Blood Group Id</label>
					<div>
						<form:input path="bloodGroupId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" />
					</div>
				</div>
				<form:errors path="bloodGroupId" cssClass="text-danger" />
				<div>
					<label for="bloodGroup">Blood Group Name</label>
					<div>
						<form:input path="bloodGroup"  title="bloodGroup can't be empty"
						pattern="^[A-Za-z]\\w{3,20}$" required="true" />
					</div>
				</div>
				<form:errors path="bloodGroup" cssClass="text-danger" />
				<div>
					<label for="stockInUnits">Stock</label>
					<div>
						<form:input path="stockInUnits" title="Please enter number only"
							pattern="^[0-9]+$" required="true" />
					</div>
				</div>
				<form:errors path="stockInUnits" cssClass="text-danger" />
				<div>
					<form:button>UPDATE</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>