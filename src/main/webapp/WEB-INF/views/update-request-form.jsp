<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Request</title>
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
			<form:form action="updatebloodrequest" method="post" modelAttribute="updaterequest">
				<div>
					<label for="requestId">Request Id</label>
					<div>
						<form:input path="requestId" />
					</div>
				</div>
				<form:errors path="requestId" cssClass="text-danger" />
				<div>
					<label for="recipientName">Recipient Name</label>
					<div>
						<form:input path="recipientName" />
					</div>
				</div>
				<form:errors path="recipientName" cssClass="text-danger" />
				<div>
					<label for="recipientPhoneNo">Recipient Phone No</label>
					<div>
						<form:input path="recipientPhoneNo" />
					</div>
				</div>
				<form:errors path="recipientPhoneNo" cssClass="text-danger" />				
				<div>
					<label for="hospitalName">Hospital Name</label>
					<div>
						<form:input path="hospitalName" />
					</div>
				</div>
				<form:errors path="hospitalName" cssClass="text-danger" />
				<div>
					<label for="bloodGroupId">Blood Group Id</label>
					<div>
						<form:input path="bloodGroupId" />
					</div>
				</div>
				<form:errors path="bloodGroupId" cssClass="text-danger" />
				<div>
					<label for="requestDate">Request Date</label>
					<div>
						<form:input path="requestDate" />
					</div>
				</div>
				<div>
					<label for="quantity">Quantity</label>
					<div>
						<form:input path="quantity" />
					</div>
				</div>
				<form:errors path="quantity" cssClass="text-danger" />
				<div>
					<form:button>Update</form:button>
				</div>
			</form:form>
		</div>
	</div>

</body>
</html>