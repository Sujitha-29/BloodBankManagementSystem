<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Transaction</title>
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
			<form:form action="add" method="post" modelAttribute="addtransaction">
				<div>
					<label class="heading-text" for="bloodTransactionId">Transaction Id</label>
					<div>
						<form:input path="bloodTransactionId"
							title="Please enter number only" pattern="^[0-9]+$"
							required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="bloodTransactionId" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="requestId">Request Id</label>
					<div>
						<form:input path="requestId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="requestId" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="transactionDate">Transaction Date</label>
					<div>
						<form:input type="date" path="transactionDate" required="true" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text"  for="quantityInUnits">Quantity In Units</label>
					<div>
						<form:input path="quantityInUnits"
							title="Please enter number only" pattern="^[0-9]+$"
							required="true" max="5" class="input-size" />
					</div>
				</div>
				<form:errors path="quantityInUnits" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="status">Status</label>
					<div>
						<form:input path="status" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only" placeholder="Enter status"
							required="true"  class="input-size" />
					</div>
				</div>
				<form:errors path="status" cssClass="text-danger" />
				<div>
					<form:button class="button-style">ADD</form:button>
				</div>

			</form:form>
		</div>
	</div>
</body>
</html>