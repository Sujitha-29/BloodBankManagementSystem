<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Transaction Update</title>
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
			<form:form action="update" method="post"
				modelAttribute="updatetransaction">
				<div>
					<label class="heading-text" for="bloodTransactionId">TransactionId</label>
					<div>
						<form:input path="bloodTransactionId"
							title="Please enter number only" pattern="^[0-9]+$"
							required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="bloodTransactionId" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="requestId">RequestId</label>
					<div>
						<form:input path="requestId" title="Please enter number only"
							pattern="^[0-9]+$" required="true"  class="input-size" />
					</div>
				</div>
				<form:errors path="requestId" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="transactionDate">TransactionDate</label>
					<div>
						<form:input type="date" path="transactionDate" required="true"  class="input-size" />
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
					<label class="heading-text" for="status">Status</label>
					<div>
						<form:input path="status" pattern="^[A-Za-z\s]*$"
							title="Please Enter Charactor Only" placeholder="Enter Status" class="input-size" />
					</div>
				</div>
				<form:errors path="status" cssClass="text-danger" />
				<div>
					<form:button class="button-style">UPDATE</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html> --%>