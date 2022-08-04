<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Request</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="updatebloodrequest" method="post" modelAttribute="updaterequest">
				<div>
					<label for="requestId">Request Id</label>
					<div>
						<form:input path="requestId" />
					</div>
				</div>
				<div>
					<label for="recipientName">Recipient Name</label>
					<div>
						<form:input path="recipientName" />
					</div>
				</div>
				<div>
					<label for="recipientPhoneNo">Recipient Phone No</label>
					<div>
						<form:input path="recipientPhoneNo" />
					</div>
				</div>				
				<div>
					<label for="hospitalName">Hospital Name</label>
					<div>
						<form:input path="hospitalName" />
					</div>
				</div>
				<div>
					<label for="bloodGroupId">Blood Group Id</label>
					<div>
						<form:input path="bloodGroupId" />
					</div>
				</div>
				<div>
					<label for="requestDate">Request Date</label>
					<div>
						<form:input path="requestDate" />
					</div>
				</div>
				<div>
					<label for="quantity">Quantity</label>
					<div>
						<form:input path="quantity" />
					</div>
				</div>
				<div>
					<form:button>Update</form:button>
				</div>
			</form:form>
		</div>
	</div>

</body>
</html>