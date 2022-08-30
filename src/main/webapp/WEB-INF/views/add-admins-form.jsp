<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.chainsys.bbms.businesslogic.Logic"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>AddAdmin</title>
<style><%@include file ="/WEB-INF/css/addadmin.css"%>
body {
	
	background-image: url("https://wallpapercave.com/wp/wp4323461.png");
	background-position: center;
	background-repeat: no-repeat; 
	background-size: cover;
    position: relative; 
    background-attachment:fixed;
}
</style>
<script>
function adminNameCheck() {
    let nameRegex ="^[A-Za-z\s]*$";
    if(!document.form.adminName.value.match(nameRegex)){
           if(alert("Name can't be empty and must contain only alphabets")){ 
                document.form.adminName.focus();
           }
           else
               document.activeElement.blur();
       }
   else{
       return false;
   } 
  
}  
function adminPasswordCheck() {
    let nameRegex = "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$";
    if(!document.form.adminPassword.value.match(nameRegex)){
           if(alert("Password must begin with letter and contain atleast one number and must have atleast 8 characters")){ 
                document.form.adminPassword.focus();
           }
           else
               document.activeElement.blur();
       }
   else{
       return false;
   } 
  
}
</script>
</head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="history.back()">Go Back</button>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="document.location='/admin/listadmins'">List
</button>
	<div id="root">
		<div id="form" class="form">
			<form:form class="modelattribute" action="saveadmin" method="post"
				modelAttribute="addadmins" name="form">
				<div>
					<div>
						<form:hidden path="adminId" readonly="true"  />
					</div>
				</div>
				<form:errors path="adminName" cssClass="text-danger" />
				
				<div>
					<label class="heading-text" for="adminName">Admin Name</label>
					<div>
						<form:input path="adminName"  name="adminName" pattern="^^[A-Za-z\s]*$"
							title="Please Enter Charactor Only"
							placeholder="Enter Admin Name" class="input-size" onblur="adminNameCheck()" />
					</div>
				</div>
				<form:errors path="adminName" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="adminPassword">Admin Password</label>
					<div>
						<form:input type="password" path="adminPassword" name="adminPassword"
							pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
							title="Enter a valid password Welcomes@03" required="true"
							class="input-size" onblur="adminPasswordCheck()" />
					</div>
				</div>
				<form:errors path="adminPassword" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="dateOfJoining">Date Of
						Joining</label>
					<div>
						<form:input type="date" path="dateOfJoining" required="true"
							max="<%=Logic.getInstanceDate() %>" class="input-size" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="designation">Designation</label>
					<div>
						<form:select path="designation" class="input-size" >						  
                   <form:option value="Manager" label="Manager" required="true" />
						  </form:select>
					</div>
				</div>
				<form:errors path="designation" cssClass="text-danger" />
				<div>
					<form:button class="button-style">SAVE</form:button>
				</div>
			</form:form>
		</div>
	</div>	
</body>
</html>