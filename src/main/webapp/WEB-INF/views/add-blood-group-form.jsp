<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Blood Group</title>
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
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="document.location='/bloodgroup/listbloodgroup'">List</button>

	<div id="root">
		<div id="form" class="form">
			<form:form action="savebloodgroup" method="post" modelAttribute="addbloodgroup">
								<div>
					<div>
						<form:hidden path="bloodGroupId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				
				<div>
					<label class="heading-text" for="bloodGroup">Blood Group Name</label>
					<div>
						<form:input path="bloodGroup" pattern="^[A-Za-z\s]*$"
							title="Please Enter Charactor Only"
							placeholder="Enter Blood Group Name" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="bloodGroup" cssClass="text-danger" />
				<div>
					<label class="heading-text"  for="stockInUnits">Stock In Units</label>
					<div>
						<form:input path="stockInUnits" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="stockInUnits" cssClass="text-danger" />
				<div>
					<form:button class="button-style">SAVE</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>