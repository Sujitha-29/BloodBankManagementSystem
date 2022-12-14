<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.chainsys.bbms.businesslogic.Logic"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Transaction</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%>
body {
	
	background-image: url("https://wallpapercave.com/wp/wp4323461.png");
	background-position: center;
	background-repeat: no-repeat; 
	background-size: cover;
    position: relative; 
    background-attachment:fixed;
}
</style>
</head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="history.back()">Go Back</button>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="document.location='/bloodtransaction/listbloodtransaction'">List</button>

	<div id="root">
		<div id="form" class="form">
			<form:form action="savetransaction" method="post" modelAttribute="addtransaction">
				<div>
					<div>
						<form:hidden path="bloodTransactionId"
							title="Please enter number only" pattern="^[0-9]+$"
							required="true" class="input-size" />
					</div>
				</div>
				
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
						<form:input type="date" path="transactionDate" required="true" class="input-size" min="<%=Logic.getInstanceDate()%>" />
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
						<form:select path="status"  class="input-size">
							<form:option value="Approved" label="Approved" required="true" />
							</form:select>
					</div>
				</div>
				<form:errors path="status" cssClass="text-danger" />
				<div>
					<form:button class="button-style">SAVE</form:button>
				</div>

			</form:form>
		</div>
	</div>
</body>
</html>