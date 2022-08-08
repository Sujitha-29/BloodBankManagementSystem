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
						<form:input path="personId" />
					</div>
				</div>
				<form:errors path="personId" cssClass="text-danger" />
				<div>
					<label for="personName">Person Name</label>
					<div>
						<form:input path="personName" />
					</div>
				</div>
				<form:errors path="personName" cssClass="text-danger" />
				<div>
					<label for="dob">DOB</label>
					<div>
						<form:input  path="dob" />
					</div>
				</div>
				<div>
					<label for="bloodGroupId">Blood Group Id</label>
					<div>
						<form:input path="bloodGroupId" />
					</div>
				</div>
				<form:errors path="bloodGroupId" cssClass="text-danger" />
				<div>
					<label for="phoneNo">Phone Number</label>
					<div>
						<form:input path="phoneNo" />
					</div>
				</div>
				<form:errors path="phoneNo" cssClass="text-danger" />
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" />
					</div>
				</div>
				<form:errors path="gender" cssClass="text-danger" />
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" />
					</div>
				</div>
				<form:errors path="address" cssClass="text-danger" />
				<div>
					<label for="emailId">Email Id</label>
					<div>
						<form:input path="emailId" />
					</div>
				</div>
				<form:errors path="emailId" cssClass="text-danger" />
				<div>
					<form:button>Update</form:button>
				</div>				
			</form:form>
		</div>
	</div>
</body>
</html>