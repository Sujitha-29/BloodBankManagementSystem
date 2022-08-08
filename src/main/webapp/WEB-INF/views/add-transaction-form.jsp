<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Transaction</title>
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
			<form:form action="add" method="post" modelAttribute="addtransaction">
				<div>
					<label for="bloodTransactionId">Transaction Id</label>
					<div>
						<form:input path="bloodTransactionId" />
					</div>
				</div>
				<form:errors path="bloodTransactionId" cssClass="text-danger" />
				<div>
					<label for="requestId">Request Id</label>
					<div>
						<form:input path="requestId" />
					</div>
				</div>
				<form:errors path="requestId" cssClass="text-danger" />
				<div>
					<label for="transactionDate">Transaction Date</label>
					<div>
						<form:input path="transactionDate" />
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
					<label for="status">Status</label>
					<div>
						<form:input path="status" />
					</div>
				</div>
				<form:errors path="status" cssClass="text-danger" />
				<div>
					<form:button>Add New</form:button>
				</div>
				
			</form:form>
		</div>
	</div>
</body>
</html>