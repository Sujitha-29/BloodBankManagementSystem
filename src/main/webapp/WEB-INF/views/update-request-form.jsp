<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Request</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%> 
body {
	
	background-image: url("https://cdn.wallpapersafari.com/78/7/JOGgC4.png");
	background-position: center;
	background-repeat: no-repeat; 
	background-size: cover;
    position: relative; 
    background-attachment:fixed;
}
</style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="history.back()">Go Back</button>
	<div id="root">
		<div id="form" class="form">
			<form:form action="updatebloodrequest" method="post"
				modelAttribute="updaterequest">
				<div>
					<label class="heading-text" for="requestId">RequestId</label>
					<div>
						<form:input path="requestId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="requestId" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="recipientName">RecipientName</label>
					<div>
						<form:input path="recipientName" pattern="^[A-Za-z\s]*$"
							title="Please Enter Charactor Only" placeholder="Enter  Name" class="input-size" />
					</div>
				</div>
				<form:errors path="recipientName" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="recipientPhoneNo">RecipientPhoneNumber</label>
					<div>
						<form:input path="recipientPhoneNo" max="10"
							pattern="[1-9]{1}[0-9]{9}" title="Enter 10 digits number"
							placeholder="Enter Phone Number" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="recipientPhoneNo" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="hospitalName">Location</label>
					<div>
						<form:input path="hospitalName" pattern="^[A-Za-z\s]*$"
							title="Please Enter Charactor Only" placeholder="Enter Location"  class="input-size" />
					</div>
				</div>
				<form:errors path="hospitalName" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="bloodGroupId">BloodGroupId</label>
					<div>
						<form:input path="bloodGroupId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="bloodGroupId" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="requestDate">RequestDate</label>
					<div>
						<form:input type="date" path="requestDate" required="true" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="quantityInUnits">QuantityInUnits</label>
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
</html> --%>