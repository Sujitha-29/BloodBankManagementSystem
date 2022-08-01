<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Transaction By Id</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="gettrans" method="post" modelAttribute="gettrans">
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
			</form:form>
		</div>
	</div>
</body>
</html>