<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.chainsys.bbms.businesslogic.Logic"%>
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
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="document.location='/blooddonation/listblooddonation'">List</button>

		<div id="root">
			<div id="form" class="form">
				<form:form action="saveblooddonation" method="post"
					modelAttribute="addblooddonation">
									<div>
					<div>
						<form:hidden path="donationTransId" />
					</div>
				</div>			
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
							<form:input type="date" path="donationDate" required="true" value="<%=Logic.getInstanceDate() %>" readonly="true" class="input-size" />
						</div>
					</div>
					<div>
						<label class="heading-text" for="healthCondition">Health Condition</label>
						<div>
							<form:select path="healthCondition" 
								 required="true" class="input-size" >
								   <form:option value="Normal" label="Normal" />
								   </form:select>
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
						<form:button class="button-style">SAVE</form:button>
					</div>
				</form:form>
			</div>
		</div>
</body>
</html>