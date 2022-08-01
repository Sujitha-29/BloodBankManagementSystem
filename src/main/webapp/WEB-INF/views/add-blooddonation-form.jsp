<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Donation Details</title>
</head>
<body>
<div id="root">
		<div id="root">
		<div id="form">
			<form:form action="addbd" method="post" modelAttribute="addblooddonation">
				<div>
					<label for="donationtransid">Donation Id</label>
					<div>
						<form:input path="donationtransid" />
					</div>
				</div>
				<div>
					<label for="personid">Person Id </label>
					<div>
						<form:input path="personid" />
					</div>
				</div>
				<div>
					<label for="donationdate">Donation Date</label>
					<div>
						<form:input type="date" path="donationdate" />
					</div>
				</div>
				<div>
					<label for="healthcondition">Health Condition</label>
					<div>
						<form:input path="healthcondition" />
					</div>
				</div>
				<div>
					<label for="quantity">Quantity</label>
					<div>
						<form:input path="quantity" />
					</div>
				</div>
				<div>
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>