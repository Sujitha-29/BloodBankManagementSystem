<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blood Group List</title>
</head>
<body>
<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Blood Group Id</th>
					<th>Blood Group Name</th>
					<th>Stock</th>		
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bloodgroup" items="${allbloodgroup}">
					<tr>
						<td>${bloodgroup.blood_group_id}</td>
						<td>${bloodgroup.blood_group}</td>
						<td>${bloodgroup.stock_in_hand}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>