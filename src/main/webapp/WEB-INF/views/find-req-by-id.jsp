<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find request By Id</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="getallrequest" method="post"
				modelAttribute="getallrequest">
				<div>
					<label for="requestid">Request Id</label>
					<div>
						<form:input path="requestid" />
					</div>
				</div>
				<div>
					<label for="hospitalname">Hospital Name</label>
					<div>
						<form:input path="hospitalname" />
					</div>
				</div>
				<div>
					<label for="bloodgroup">Blood Group</label>
					<div>
						<form:input path="bloodgroup" />
					</div>
				</div>
				<div>
					<label for="requestdate">Request Date</label>
					<div>
						<form:input path="requestdate" />
					</div>
				</div>
				<div>
					<label for="quantity">Quantity</label>
					<div>
						<form:input path="quantity" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>