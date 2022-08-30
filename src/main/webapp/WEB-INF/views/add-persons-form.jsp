<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.chainsys.bbms.businesslogic.Logic"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Person Details</title>
<style><%@include file ="/WEB-INF/css/alljsp.css"%>
body {
	background-image: url("https://wallpapercave.com/wp/wp4323461.png");
	background-position: center;
	background-repeat: no-repeat; 
	background-size: cover;
    position: relative; 
    background-attachment:fixed;
}
.dropdown
{
    padding: 5px;
    width: 112px;
    font-weight: bold;
   font-size: 25px;
    color: white;
}
</style>
<script>
function personNameCheck() {
    let nameRegex ="^[A-Za-z\s]*$";
    if(!document.form.personName.value.match(nameRegex)){
           if(alert("Name can't be empty and must contain only alphabets")){ 
                document.form.personName.focus();
           }
           else
               document.activeElement.blur();
       }
   else{
       return false;
   } 
  
}  
function phoneNoCheck() {
    let nameRegex = "[1-9]{1}[0-9]{9}";
    if(!document.form.phoneNo.value.match(nameRegex)){
           if(alert("Phone number must have 10 digits")){ 
                document.form.phoneNo.focus();
           }
           else
               document.activeElement.blur();
       }
   else{
       return false;
   } 
}
function addressCheck() {
    if(document.form.address.value == "^[A-Za-z\s]*$"){
           if(alert("Address cannot be blank")){ 
                document.form.address.focus();
           }
           else
               document.activeElement.blur();
       }
    else{
           return false;
       }
}
function emailIdCheck() {
    let nameRegex = "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$";
    if(!document.form.email.value.match(nameRegex)){
           if(alert("Email not in the correct format")){ 
                document.form.emailId.focus();
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
	<div id="root">
		<div id="form" class="form">
			<form:form action="saveperson" method="post" modelAttribute="addperson" name="form">
				<div>
					<div>
						<form:hidden path="personId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				
				<div>
					<label class="heading-text" for="personName">Person Name</label>
					<div>
						<form:input path="personName" name="personName" pattern="^[A-Za-z\s]*$"
							title="Please Enter Charactor Only" placeholder="Enter Name"
							required="true"  class="input-size" onblur="personNameCheck();" />
					</div>
				</div>
				<form:errors path="personName" cssClass="text-danger" />
				<div  style="margin-bottom: 10px;">
					<label class="heading-text" for="dob">Date Of Birth</label>
					<div style="margin-bottom: 10px;">
						<form:input path="dob" type="date" required="true" class="input-size" min="<%=Logic.getMaxYear()%>"  max="<%=Logic.getMinYear()%>"/>
					</div>
				</div>
				<div style="margin-bottom: 10px;">
					<label class="dropdown" for="bloodGroupId">Blood Group</label>
					<form:select path="bloodGroupId" id="bloodGroupId">
						<c:forEach var="bloodGrouplist" items="${bloodGrouplist}">
							<form:option value="${bloodGrouplist.bloodGroupId}"
								label="${bloodGrouplist.bloodGroup}" />
						</c:forEach>
					</form:select>
				</div>
				<form:errors path="bloodGroupId" cssClass="text-danger" />
				<div  style="margin-bottom: 10px;">
					<label class="heading-text" for="phoneNo">Phone Number</label>
					<div>
						<form:input path="phoneNo" name="phoneNo" pattern="[1-9]{1}[0-9]{9}"
							title="Enter 10 digits number" placeholder="Enter Phone Number"
							required="true" class="input-size"  onblur="phoneNoCheck();" />
					</div>
				</div>
				<form:errors path="phoneNo" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="gender">Gender</label>
					<div style="color: white;" >
						<form:radiobutton path="gender" value="Male"  />
						Male
						<form:radiobutton path="gender" value="Female"  />
						Female
						<form:radiobutton path="gender" value="Others"  />
						Others						
					</div>					
				</div>
				<form:errors path="gender" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="address">Address</label>
					<div style="margin-bottom: 10px;">
						<form:input path="address" name="address" pattern="^[A-Za-z\s]*$"
							title="Please Enter Charactor Only" placeholder="Enter Address"
							required="true"   class="input-size" onblur="addressCheck();" />
					</div>
				</div>
				<form:errors path="address" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="emailId">Email Id</label>
					<div  style="margin-bottom: 10px;">
						<form:input path="emailId" name="emailId"
							pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
							title="Enter a valid email welcome03@gmail.com"
							placeholder="Enter a Email" required="true" class="input-size" onblur="emailIdCheck();"  />
					</div>
				</div>
				<form:errors path="emailId" cssClass="text-danger" />
				<div>
					<form:button class="button-style">REGISTER</form:button>
				</div>
			</form:form>
		</div>
	</div>
	<div style="color:white;text-align: center;" >${error}</div>
	<div style="color:white;text-align: center;" >${message}</div>
</body>
</html>