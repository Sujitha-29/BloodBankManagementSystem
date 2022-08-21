<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Donation</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%> 
body {
	background-color: #a5edf3;
}
</style>
</head>
<body>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="history.back()">Go Back</button>
	<div id="root">
		<div id="form" class="form">
			<form:form action="update" method="post"
				modelAttribute="updateblooddonation">
				<div>
					<label class="heading-text" for="donationTransId">DonationId</label>
					<div>
						<form:input path="donationTransId"
							title="Please enter number only" pattern="^[0-9]+$"
							required="true"  class="input-size" />
					</div>
				</div>
				<form:errors path="donationTransId" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="personId">PersonId </label>
					<div>
						<form:input path="personId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="personId" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="donationDate">DonationDate</label>
					<div>
						<form:input type="date" path="donationDate" required="true" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="healthCondition">HealthCondition</label>
					<div>
						<form:input path="healthCondition" pattern="^[A-Za-z\s]*$"
							title="Please Enter Charactor Only"
							placeholder="Enter Health Condition" class="input-size" />
					</div>
				</div>
				<form:errors path="healthCondition" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="quantityInUnits">QuantityInUnits</label>
					<div>
						<form:input path="quantityInUnits"
							title="Please enter number only" pattern="^[0-9]+$"
							required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="quantityInUnits" cssClass="text-danger" class="input-size" />
				<div>
					<form:button class="button-style">UPDATE</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>