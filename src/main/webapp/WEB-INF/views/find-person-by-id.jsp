<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Person By Id</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%>
body {
	background-color: #a5edf3;
} 
</style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="history.back()">Go Back</button>
<div id="root">
		<div id="form" class="form">
			<form:form action="" method="post"
				modelAttribute="getperson">
				<div>
					<label class="heading-text" for="personId">Person Id</label>
					<div>
						<form:input path="personId" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="personName">Person Name</label>
					<div>
						<form:input path="personName" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="dob">DOB</label>
					<div>
						<form:input path="dob" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="bloodGroupId">Blood Group Id</label>
					<div>
						<form:input path="bloodGroupId" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="phoneNo">Phone Number</label>
					<div>
						<form:input path="phoneNo"  class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="gender">Gender</label>
					<div>
						<form:input path="gender" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="address">Address</label>
					<div>
						<form:input path="address" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="emailId">Email Id</label>
					<div>
						<form:input path="emailId"  class="input-size" />
					</div>
				</div>
				<form:button class="button-style">
                            <a href="/appointment/adddonorappointmentform">NEXT</a>
                        </form:button> 
			</form:form>
			 
		</div>
	</div>
</body>
</html>