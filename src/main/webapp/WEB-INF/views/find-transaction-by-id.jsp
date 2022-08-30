<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Transaction By Id</title>
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
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="document.location='/bloodtransaction/listbloodtransaction'">List
</button>
<div id="root">
		<div id="form" class="form">
			<form:form action="gettransaction" method="post" modelAttribute="gettransactionbyid">
				<div>
					<label class="heading-text" for="bloodTransactionId">Transaction Id</label>
					<div>
						<form:input path="bloodTransactionId" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="requestId">Request Id</label>
					<div>
						<form:input path="requestId" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="transactionDate">Transaction Date</label>
					<div>
						<form:input type="date" path="transactionDate" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="quantityInUnits">Quantity</label>
					<div>
						<form:input path="quantityInUnits" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="status">Status</label>
					<div>
						<form:input path="status" class="input-size" />
					</div>
				</div>
				<form:button class="button-style">
                            <a href="/bloodtransaction/listbloodtransaction">BACK</a>
                        </form:button>
			</form:form>
		</div>
	</div>
</body>
</html>