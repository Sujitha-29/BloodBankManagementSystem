<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Donation By Id</title>
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
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="document.location='/blooddonation/listblooddonation'">List
</button>
	<div id="root">
		<div id="form" class="form">
			<form:form action="getblooddonation" method="post" modelAttribute="getblooddonationbyid">
				<div>
					<label class="heading-text" for="donationTransId">Donation Id</label>
					<div>
						<form:input path="donationTransId" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="personId">Person Id </label>
					<div>
						<form:input path="personId" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="donationDate">Donation Date</label>
					<div>
						<form:input type="date" path="donationDate" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="healthCondition">Health Condition</label>
					<div>
						<form:input path="healthCondition" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="quantityInUnits">Quantity</label>
					<div>
						<form:input path="quantityInUnits" class="input-size" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>