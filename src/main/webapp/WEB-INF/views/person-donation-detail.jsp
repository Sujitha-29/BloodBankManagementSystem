<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="getperson">
				<div>
					<label for="personId">Person Id</label>
					<div>
						<form:input path="personId" />
					</div>
				</div>
				<div>
					<label for="personName">Person Name</label>
					<div>
						<form:input path="personName" />
					</div>
				</div>
				<div>
					<label for="dob">DOB</label>
					<div>
						<form:input path="dob" />
					</div>
				</div>
				<div>
					<label for="bloodGroupId">Blood Group Id</label>
					<div>
						<form:input path="bloodGroupId" />
					</div>
				</div>
				<div>
					<label for="phoneNo">Phone Number</label>
					<div>
						<form:input path="phoneNo" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" />
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" />
					</div>
				</div>
				<div>
					<label for="emailId">Email Id</label>
					<div>
						<form:input path="emailId" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<div id="table root">
		<table>
		<caption></caption>
			<thead>
				<tr>
					<th>Donation Id</th>
					<th>Person Id</th>
					<th>Donation Date</th>
					<th>Health Condition</th>
					<th>Quantity</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="donation" items="${getdonation}">
					<tr>
						<td>${donation.donationTransId}</td>
						<td>${donation.personId}</td>
						<td>${donation.donationDate}</td>
						<td>${donation.healthCondition}</td>
						<td>${donation.quantity}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>