<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>ListAdmin</title>
<style><%@include file ="/WEB-INF/css/list.css"%> 
</style>
</head>
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="history.back()">Go Back</button>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="document.location='/admin/adminuse'">AdminHome</button>
	<div id="table root">
		<table class="table">
		<caption></caption>
		<colgroup>
                <col span="10" style="background-color:#01e3c9">
            </colgroup>
			<thead>
				<tr>
					<th style="background-color:#87CEFA;font-size: larger;">AdminName</th>
					<th style="background-color:#87CEFA;font-size: larger;">Date Of Joining</th>
					<th style="background-color:#87CEFA;font-size: larger;">Designation</th>
					<th style="background-color:#87CEFA;font-size: larger;">Edit</th>
					<th style="background-color:#87CEFA;font-size: larger;">View</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="admin" items="${alladmins}">
					<tr>
						<td>${admin.adminName}</td>
						<td>${admin.dateOfJoining}</td>
						<td>${admin.designation}</td>
						<td><button
								onclick="window.location.href='updateadminform?adminid=${admin.adminId}'">Edit</button></td>
						<td><button
								onclick="window.location.href='getadmin?id=${admin.adminId}'">View</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="btn_align">
			<a href="addadminform"><button class="button">ADD ADMIN
				</button></a>
		</div>
		</div>
</body>
</html>