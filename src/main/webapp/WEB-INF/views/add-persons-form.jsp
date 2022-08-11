<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Person Details</title>
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
			<form:form action="add" method="post" modelAttribute="addperson">
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
							pattern="^[A-Za-z]\\w{3,20}$" required="true" />
					</div>
				</div>
				<form:errors path="personName" cssClass="text-danger" />
				<div>
					<label for="dob">Date Of Birth</label>
					<div>
						<form:input path="dob" type="date" required="true" />
					</div>
				</div>
				<div>
					<label for="bloodGroupId">Blood Group</label>
					<form:select path="bloodGroupId" id="bloodGroupId">
						<c:forEach var="bloodGrouplist" items="${bloodGrouplist}">
							<form:option value="${bloodGrouplist.bloodGroupId}"
								label="${bloodGrouplist.bloodGroup}" />
						</c:forEach>
					</form:select>
				</div>
				<form:errors path="bloodGroupId" cssClass="text-danger" />
				<div>
					<label for="phoneNo">Phone Number</label>
					<div>
						<form:input path="phoneNo"
							title="PhoneNumber should have atleast 10 digits"
							pattern="^\\+?[1-9][0-9]{7,14}$" required="true" />
					</div>
				</div>
				<form:errors path="phoneNo" cssClass="text-danger" />
				<div>
					<label for="gender">Gender</label>
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
					<label for="address">Address</label>
					<div>
						<form:input path="address" required="true" />
					</div>
				</div>
				<form:errors path="address" cssClass="text-danger" />
				<div>
					<label for="emailId">Email Id</label>
					<div>
						<form:input path="emailId"
							title='email Id must begin with letter and contain atleast one number and must have atleast 8 characters'
							pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}$"
							required="true" />
					</div>
				</div>
				<form:errors path="emailId" cssClass="text-danger" />
				<div>
					<form:button>ADD</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>