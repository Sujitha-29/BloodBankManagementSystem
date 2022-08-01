<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Blood Group</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updatebg">
				<div>
					<label for="blood_group_id">Blood Group Id</label>
					<div>
						<form:input path="blood_group_id" />
					</div>
				</div>
				<div>
					<label for="blood_group">Blood Group Name</label>
					<div>
						<form:input path="blood_group" />
					</div>
				</div>
				<div>
					<label for="stock_in_hand">Stock</label>
					<div>
						<form:input path="stock_in_hand" />
					</div>	
					<div>
					<form:button>Update</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>