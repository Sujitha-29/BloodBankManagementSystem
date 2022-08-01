<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Transaction</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="addbt" method="post" modelAttribute="addtrans">
				<div>
					<label for="bloodtransactionid">Transaction Id</label>
					<div>
						<form:input path="bloodtransactionid" />
					</div>
				</div>
				<div>
					<label for="requestid">Transaction Id</label>
					<div>
						<form:input path="requestid" />
					</div>
				</div>
				<div>
					<label for="transactiondate">Transaction Date</label>
					<div>
						<form:input path="transactiondate" />
					</div>
				</div>
				<div>
					<label for="quantity">Quantity</label>
					<div>
						<form:input path="quantity" />
					</div>
				</div>
				<div>
					<label for="status">Status</label>
					<div>
						<form:input path="status" />
					</div>
				</div>
				<div>
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>