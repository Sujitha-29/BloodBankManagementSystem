<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Person Details</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%> 
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}

body {
	background-color: #a5edf3;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form" class="form">
			<form:form action="update" method="post"
				modelAttribute="updateperson">
				<div>
					<label class="heading-text" for="personId">Person Id</label>
					<div>
						<form:input path="personId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="personId" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="personName">Person Name</label>
					<div>
						<form:input path="personName" pattern="^[a-z A-Z]+$"
							title="Please Enter Charactor Only"
							placeholder="Enter Person Name" class="input-size" />
					</div>
				</div>
				<form:errors path="personName" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="dob">Date Of Birth</label>
					<div>
						<form:input path="dob" type="date" required="true" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="bloodGroupId">Blood Group
						Id</label>
					<div>
						<form:input path="bloodGroupId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="bloodGroupId" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="phoneNo">Phone Number</label>
					<div>
						<form:input path="phoneNo" pattern="[0-9]{3}[0-9]{3}[0-9]{4}"
							title="Enter 10 digits number" placeholder="Enter Phone Number"
							required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="phoneNo" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="gender">Gender</label>
					<div>
						<form:radiobutton path="gender" value="Male" />
						Male
						<form:radiobutton path="gender" value="Female" />
						Female
						<form:radiobutton path="gender" value="Others" />
						Others
					</div>
				</div>
				<form:errors path="gender" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="address">Address</label>
					<div>
						<form:input path="address" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="address" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="emailId">Email Id</label>
					<div>
						<form:input path="emailId"
							pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
							title="Enter a valid email welcome03@gmail.com"
							placeholder="Enter a Email" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="emailId" cssClass="text-danger" />
				<div>
					<form:button class="button-style">UPDATE</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>