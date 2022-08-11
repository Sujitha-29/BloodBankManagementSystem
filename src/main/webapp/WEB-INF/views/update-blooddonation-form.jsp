<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Donation</title>
<style>
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}
</style>
</head>
<body>
<body>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post"
				modelAttribute="updateblooddonation">
				<div>
					<label for="donationTransId">Donation Id</label>
					<div>
						<form:input path="donationTransId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" />
					</div>
				</div>
				<form:errors path="donationTransId" cssClass="text-danger" />
				<div>
					<label for="personId">Person Id </label>
					<div>
						<form:input path="personId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" />
					</div>
				</div>
				<form:errors path="personId" cssClass="text-danger" />
				<div>
					<label for="donationDate">Donation Date</label>
					<div>
						<form:input type="date" path="donationDate" required="true" />
					</div>
				</div>
				<div>
					<label for="healthCondition">Health Condition</label>
					<div>
						<form:input path="healthCondition" title="healthCondition can't be empty"
						pattern="^[A-Za-z]\\w{3,20}$" required="true"/>
					</div>
				</div>
				<form:errors path="healthCondition" cssClass="text-danger" />
				<div>
					<label for="quantityInUnits">Quantity In Units</label>
					<div>
						<form:input path="quantityInUnits" title="Please enter number only"
							pattern="^[0-9]+$" required="true" />
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