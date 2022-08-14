<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Donation Details</title>
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
				<form:form action="add" method="post"
					modelAttribute="addblooddonation">
					<div>
						<label class="heading-text" for="donationTransId">Donation Id</label>
						<div>
							<form:input path="donationTransId" required="true" class="input-size" />
						</div>
					</div>
					<form:errors path="donationTransId" cssClass="text-danger" />
					<div>
						<label class="heading-text" for="personId">Person Id</label>
						<div>
							<form:input path="personId" required="true" class="input-size" />
						</div>
					</div>
					<form:errors path="personId" cssClass="text-danger" />
					<div>
						<label class="heading-text" for="donationDate">Donation Date</label>
						<div>
							<form:input type="date" path="donationDate" required="true" class="input-size" />
						</div>
					</div>
					<div>
						<label class="heading-text" for="healthCondition">Health Condition</label>
						<div>
							<form:input path="healthCondition" pattern="^[a-z A-Z]+$"
								title="Please Enter Charactor Only"
								placeholder="Enter Health Condition" required="true" class="input-size" />
						</div>
					</div>
					<form:errors path="healthCondition" cssClass="text-danger" />
					<div>
						<label class="heading-text" for="quantityInUnits">Quantity In Units</label>
						<div>
							<form:input path="quantityInUnits" required="true" class="input-size"/>
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