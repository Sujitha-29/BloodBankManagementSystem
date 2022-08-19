<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Blood Request</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%>
body {
	background-color: #a5edf3;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form" style="text-align: center; margin-top: 9%;">
			<form:form style="line-height: 20px;" action="addbloodrequest"
				method="post" modelAttribute="addrequest">
				
				<form:errors path="requestId" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="recipientName">Recipient
						Name</label>
					<div>
						<form:input path="recipientName" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only" placeholder="Enter Name"
							class="input-size" />
					</div>
				</div>
				<form:errors path="recipientName" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="recipientPhoneNo">Recipient
						Phone Number</label>
					<div>
						<form:input path="recipientPhoneNo" max="10"
							pattern="[0-9]{3}[0-9]{3}[0-9]{4}" title="Enter 10 digits number"
							placeholder="Enter Phone Number" required="true"
							class="input-size" />
					</div>
				</div>
				<form:errors path="recipientPhoneNo" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="hospitalName">Location</label>
					<div>
						<form:input path="hospitalName" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only"
							placeholder="Enter Location" class="input-size"
							style="margin-bottom: 10px;" />
					</div>
				</div>
				<form:errors path="hospitalName" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="bloodGroupId">Blood Group
						Name : </label>
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
						<form:input type="date" path="requestDate" required="true"
							class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="quantityInUnits">Quantity
						In Units</label>
					<div>
						<form:input path="quantityInUnits"
							title="Please enter number only" pattern="^[0-5]+$"
							required="true" max="5" class="input-size" />
					</div>
				</div>
				<form:errors path="quantityInUnits" cssClass="text-danger" />
				<div style="margin-top: 10px;">
					<form:button class="button-style">ADD</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>