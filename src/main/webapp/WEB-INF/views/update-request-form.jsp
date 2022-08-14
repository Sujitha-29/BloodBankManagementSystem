<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Request</title>
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
			<form:form action="updatebloodrequest" method="post"
				modelAttribute="updaterequest">
				<div>
					<label class="heading-text" for="requestId">Request Id</label>
					<div>
						<form:input path="requestId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="requestId" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="recipientName">Recipient Name</label>
					<div>
						<form:input path="recipientName" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only" placeholder="Enter  Name" class="input-size" />
					</div>
				</div>
				<form:errors path="recipientName" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="recipientPhoneNo">Recipient Phone Number</label>
					<div>
						<form:input path="recipientPhoneNo" max="10"
							pattern="[0-9]{3}[0-9]{3}[0-9]{4}" title="Enter 10 digits number"
							placeholder="Enter Phone Number" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="recipientPhoneNo" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="hospitalName">Location</label>
					<div>
						<form:input path="hospitalName" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only" placeholder="Enter Location"  class="input-size" />
					</div>
				</div>
				<form:errors path="hospitalName" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="bloodGroupId">Blood Group Id</label>
					<div>
						<form:input path="bloodGroupId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="bloodGroupId" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="requestDate">Request Date</label>
					<div>
						<form:input type="date" path="requestDate" required="true" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="quantityInUnits">Quantity In Units</label>
					<div>
						<form:input path="quantityInUnits"
							title="Please enter number only" pattern="^[0-9]+$"
							required="true" max="5" class="input-size" />
					</div>
				</div>
				<form:errors path="quantityInUnits" cssClass="text-danger" />
				<div>
					<form:button class="button-style">UPDATE</form:button>
				</div>
			</form:form>
		</div>
	</div>

</body>
</html>