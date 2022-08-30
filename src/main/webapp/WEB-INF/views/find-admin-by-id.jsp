<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>FindAdminById</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%>
body {
	
	background-image: url("https://wallpapercave.com/wp/wp4323461.png");
	background-position: center;
	background-repeat: no-repeat; 
	background-size: cover;
    position: relative; 
    background-attachment:fixed;
}
</style>
</head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="history.back()">Go Back</button>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="document.location='/admin/listadmins'">List
</button>
	<div id="root">
		<div id="form" class="form">
			<form:form action="getadmin" method="post" modelAttribute="getadmins">
				<div>
					<label class="heading-text" for="adminId">AdminId</label>
					<div>
						<form:input path="adminId" class="input-size" />
					</div>
				</div>
				
				<div>
					<label class="heading-text" for="adminName">AdminName</label>
					<div>
						<form:input path="adminName" class="input-size" />
					</div>
				</div>
				
				<div>
					<label class="heading-text" for="adminPassword">AdminPassword</label>
					<div>
						<form:input type="password" path="adminPassword" class="input-size" />
					</div>
				</div>
				
				<div>
					<label class="heading-text" for="dateOfJoining">Date Of Joining</label>
					<div>
						<form:input type="date" path="dateOfJoining" class="input-size" />
					</div>
					</div>
				<div>
					<label class="heading-text" for="designation">Designation</label>
					<div>
						<form:input path="designation" class="input-size" />
					</div>
				</div>
				<form:button class="button-style">
                            <a href="/admin/listadmins">BACK</a>
                        </form:button>
			</form:form>
		</div>
	</div>
</body>
</html>