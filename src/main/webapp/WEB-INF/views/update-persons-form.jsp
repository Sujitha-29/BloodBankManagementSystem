<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Person Details</title>
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
			<form:form action="update" method="post"
				modelAttribute="updateperson">
				<div>
					<label class="heading-text" for="personId">PersonId</label>
					<div>
						<form:input path="personId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="personId" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="personName">PersonName</label>
					<div>
						<form:input path="personName"  pattern="^[A-Za-z\s]*$"
							title="Please Enter Charactor Only"
							placeholder="Enter Person Name" class="input-size" />
					</div>
				</div>
				<form:errors path="personName" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="dob">DateOfBirth</label>
					<div>
						<form:input path="dob" type="date" required="true" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="bloodGroupId">BloodGroupId</label>
					<div>
						<form:input path="bloodGroupId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				<form:errors path="bloodGroupId" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="phoneNo">PhoneNumber</label>
					<div>
						<form:input path="phoneNo" pattern="[1-9]{1}[0-9]{9}"
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
						<form:input path="address" pattern="^[A-Za-z\s]*$"
							title="Please Enter Charactor Only" placeholder="Enter Address"
							required="true"   class="input-size" />
					</div>
				</div>
				<form:errors path="address" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="emailId">EmailId</label>
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