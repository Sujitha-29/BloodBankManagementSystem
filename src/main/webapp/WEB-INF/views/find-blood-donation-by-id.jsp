<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Donation By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="getblooddonation" method="post" modelAttribute="getblooddonationbyid">
				<div>
					<label for="donationTransId">Donation Id</label>
					<div>
						<form:input path="donationTransId" />
					</div>
				</div>
				<div>
					<label for="personId">Person Id </label>
					<div>
						<form:input path="personId" />
					</div>
				</div>
				<div>
					<label for="donationDate">Donation Date</label>
					<div>
						<form:input  path="donationDate" />
					</div>
				</div>
				<div>
					<label for="healthCondition">Health Condition</label>
					<div>
						<form:input path="healthCondition" />
					</div>
				</div>
				<div>
					<label for="quantity">Quantity</label>
					<div>
						<form:input path="quantity" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>