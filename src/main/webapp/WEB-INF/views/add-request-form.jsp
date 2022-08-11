<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Request</title>
<style>
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
.heading-text {
	font-weight: bold;
	font-size: 20px;
}
body {
	background-color: #a5edf3;
}

.input-size {
	padding: 5px;
	width: 15%;
}

.button-style {
	width: 90px;
	height: 30px;
	margin-top: 12p;
	background-color:#f6f7f2;
	font-weight: bold;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form" style="text-align: center; margin-top: 9%;">
			<form:form style="line-height: 20px;" action="addbloodrequest" method="post"
				modelAttribute="addrequest">
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
						<form:input path="recipientName" title="Name can't be empty"
							pattern="^[A-Za-z]\\w{3,20}$" class="input-size" />
					</div>
				</div>
				<form:errors path="recipientName" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="recipientPhoneNo">Recipient Phone Number</label>
					<div>
						<form:input path="recipientPhoneNo" max="10"
							title="PhoneNumber should have atleast 10 digits"
							pattern="^\\+?[1-9][0-9]{7,14}$" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="recipientPhoneNo" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="hospitalName">Location</label>
					<div>
						<form:input path="hospitalName" title="Location can't be empty"
							pattern="^[A-Za-z]\\w{3,20}$" class="input-size" style="margin-bottom: 10px;" />
					</div>
				</div>
				<form:errors path="hospitalName" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="bloodGroupId">Blood Group Name : </label>
					<form:select path="bloodGroupId" id="bloodGroupId">
						<c:forEach var="bloodGrouplist" items="${bloodGrouplist}">
							<form:option value="${bloodGrouplist.bloodGroupId}"
								label="${bloodGrouplist.bloodGroup}" />
						</c:forEach>
					</form:select>
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
					<form:button class="button-style">ADD</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>