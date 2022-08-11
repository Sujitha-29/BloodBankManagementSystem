<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Person Details</title>
<style>
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
</style>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updateperson">
				<div>
					<label for="personId">Person Id</label>
					<div>
						<form:input path="personId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" />
					</div>
				</div>
				<form:errors path="personId" cssClass="text-danger" />
				<div>
					<label for="personName">Person Name</label>
					<div>
						<form:input path="personName" title="Name can't be empty"
							pattern="^[A-Za-z]\\w{3,20}$" required="true"  />
					</div>
				</div>
				<form:errors path="personName" cssClass="text-danger" />
				<div>
					<label for="dob">Date Of Birth</label>
					<div>
						<form:input  path="dob" type="date" required="true" />
					</div>
				</div>
				<div>
					<label for="bloodGroupId">Blood Group Id</label>
					<div>
						<form:input path="bloodGroupId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" />
					</div>
				</div>
				<form:errors path="bloodGroupId" cssClass="text-danger" />
				<div>
					<label for="phoneNo">Phone Number</label>
					<div>
						<form:input path="phoneNo"  title="PhoneNumber should have atleast 10 digits"
					pattern="^\\+?[1-9][0-9]{7,14}$" required="true" />
					</div>
				</div>
				<form:errors path="phoneNo" cssClass="text-danger" />
				<div>
				<!-- 	<label for="gender">Gender</label> -->
					<div>
						Gender:
						<form:radiobutton path="gender" value="Male"/>
						Male
						<form:radiobutton path="gender" value="Female"/>
						Female
						<form:radiobutton path="gender" value="Others"/>
						Others
					</div>
				</div>
				<form:errors path="gender" cssClass="text-danger" />
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" required="true" />
					</div>
				</div>
				<form:errors path="address" cssClass="text-danger" />
				<div>
					<label for="emailId">Email Id</label>
					<div>
						<form:input path="emailId" title='password must begin with letter and contain atleast one number and must have atleast 8 characters'
						pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
						required="true" />
					</div>
				</div>
				<form:errors path="emailId" cssClass="text-danger" />
				<div>
					<form:button>UPDATE</form:button>
				</div>				
			</form:form>
		</div>
	</div>
</body>
</html>