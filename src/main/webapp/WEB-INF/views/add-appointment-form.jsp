<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.chainsys.bbms.businesslogic.Logic"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Appointment</title>
<style><%@include file ="/WEB-INF/css/addappointment.css"%>
body {
	
	background-image: url("https://wallpapercave.com/wp/wp4323461.png");
	background-position: center;
	background-repeat: no-repeat; 
	background-size: cover;
    position: relative; 
    background-attachment:fixed;
}
#div {
	position: absolute;
    bottom: -30%;
    margin-top: 379px;
    right: 438px;
    margin-left: 454px;
    color:white;
}
</style>
</head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="history.back()">Go Back</button>
<!-- <button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="document.location='/appointment/listappointment'">List</button> -->

	<div id="root">	
		<div id="form" class="form">		
			<form:form action="savedonorappointment" method="post" modelAttribute="addappointment">
				<div>
					<div>
						<form:hidden path="appointmentId"  title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="appointmentDate">Appointment
						Date</label>
					<div>
						<form:input type="date" path="appointmentDate" required="true"
						 min="<%=Logic.getInstanceDate()%>" 
							class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="personId">Person Id</label>
					<div>
						<form:input path="personId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size"
							style="margin-bottom: 10px;" />
					</div>
				</div>
				<form:errors path="personId" cssClass="text-danger" />
				<div>
					<form:button class="button-style">SAVE</form:button>
				</div>
			</form:form>			
		</div>
		</div>
	<div>
	<div id="div"><h2>${result}</h2></div>
	</div>
</body>
</html>