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
						<form:input path="requestId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" />
					</div>
				</div>
				<form:errors path="requestId" cssClass="text-danger" />
				<div>
					<label for="recipientName">Recipient Name</label>
					<div>
						<form:input path="recipientName" title="Name can't be empty"
							pattern="^[A-Za-z]\\w{3,20}$" required="true" />
					</div>
				</div>
				<form:errors path="recipientName" cssClass="text-danger" />
				<div>
					<label for="recipientPhoneNo">Recipient Phone Number</label>
					<div>
						<form:input path="recipientPhoneNo" max="10" title="PhoneNumber should have atleast 10 digits"
					pattern="^\\+?[1-9][0-9]{7,14}$" required="true" />
					</div>
				</div>
				<form:errors path="recipientPhoneNo" cssClass="text-danger" />				
				<div>
					<label for="hospitalName">Location</label>
					<div>
						<form:input path="hospitalName" title="Location can't be empty"
							pattern="^[A-Za-z]\\w{3,20}$" />
					</div>
				</div>
				<form:errors path="hospitalName" cssClass="text-danger" />
				<div>
					<label for="bloodGroupId">Blood Group Id</label>
					<div>
						<form:input path="bloodGroupId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" />
					</div>
				</div>
				<form:errors path="bloodGroupId" cssClass="text-danger" />
				<div>
					<label for="requestDate">Request Date</label>
					<div>
						<form:input type="date" path="requestDate" required="true" />
					</div>
				</div>
				<div>
					<label for="quantityInUnits">Quantity In Units</label>
					<div>
						<form:input path="quantityInUnits" title="Please enter number only"
							pattern="^[0-9]+$" required="true" max="5"/>
					</div>
				</div>
				<form:errors path="quantityInUnits" cssClass="text-danger" />
				<div>
					<form:button>UPDATE</form:button>
				</div>
			</form:form>
		</div>
	</div>

</body>
</html>