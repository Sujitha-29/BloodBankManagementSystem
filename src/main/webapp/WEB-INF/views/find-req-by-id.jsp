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
			<form:form action="getbloodrequest" method="post"
				modelAttribute="getrequestbyid">
				<div>
					<label for="requestId">Request Id</label>
					<div>
						<form:input path="requestId" />
					</div>
				</div>
				<div>
					<label for="recipientName">Recipient Name</label>
					<div>
						<form:input path="recipientName" />
					</div>
				</div>
				<div>
					<label for="recipientPhoneNo">Recipient Phone No</label>
					<div>
						<form:input path="recipientPhoneNo" />
					</div>
				</div>
				<div>
					<label for="hospitalName">Hospital Name</label>
					<div>
						<form:input path="hospitalName" />
					</div>
				</div>
				<div>
					<label for="bloodGroupId">Blood Group Id</label>
					<div>
						<form:input path="bloodGroupId" />
					</div>
				</div>
				<div>
					<label for="requestDate">Request Date</label>
					<div>
						<form:input type="date" path="requestDate" />
					</div>
				</div>
				<div>
					<label for="quantityInUnits">Quantity</label>
					<div>
						<form:input path="quantityInUnits" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>