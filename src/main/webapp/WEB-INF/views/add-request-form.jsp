<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Request</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="addbloodrequest" method="post"
				modelAttribute="addrequest">
				<div>
					<label for="requestid">Request Id</label>
					<div>
						<form:input path="requestid" />
					</div>
				</div>
				<div>
					<label for="hospitalname">Hospital Name</label>
					<div>
						<form:input path="hospitalname" />
					</div>
				</div>
				<div>
					<label for="bloodgroup">Blood Group</label>
					<div>
						<form:input path="bloodgroup" />
					</div>
				</div>
				<div>
					<label for="requestdate">Request Date</label>
					<div>
						<form:input path="requestdate" />
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