<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.chainsys.bbms.businesslogic.Logic"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Blood Request</title>
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

<script>
    function quantityInUnitsCheck()
    {
        var quantityInUnits = document.form.quantityInUnits.value;

        if (quantityInUnits > 5) {
            alert("Quantity should be below 5 units!");
            return false;
        } else {
            return true;
        }
    }
    function recipientNameCheck() {
        let nameRegex ="^[A-Za-z\s]*$";
        if(!document.form.recipientName.value.match(nameRegex)){
               if(alert("Name can't be empty and must contain only alphabets")){ 
                    document.form.recipientName.focus();
               }
               else
                   document.activeElement.blur();
           }
       else{
           return false;
       } 
      
    }  
    function recipientPhoneNoCheck() {
        let nameRegex = "[1-9]{1}[0-9]{9}";
        if(!document.form.recipientPhoneNo.value.match(nameRegex)){
               if(alert("Phone number must have 10 digits")){ 
                    document.form.recipientPhoneNo.focus();
               }
               else
                   document.activeElement.blur();
           }
       else{
           return false;
       } 
    }
    function hospitalNameCheck() {
        if(document.form.hospitalName.value == "^[A-Za-z\s]*$"){
               if(alert("Address cannot be blank")){ 
                    document.form.hospitalName.focus();
               }
               else
                   document.activeElement.blur();
           }
        else{
               return false;
           }
    }
</script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<body>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="history.back()">Go Back</button>
<button style="font-size: 12px; background-color: #e7e7e7; color: black;" onclick="document.location='/bloodrequest/listbloodrequest'">List</button>

	<div id="root">
		<div id="form" style="text-align: center; margin-top: 9%;">
			<form:form style="line-height: 20px;" action="savebloodrequest"
				method="post" modelAttribute="addrequest"   name="form">			
				<div>
					<!-- <label class="heading-text" for="requestId">RequestId</label> -->
					<div>
						<form:hidden path="requestId" title="Please enter number only"
							pattern="^[0-9]+$" required="true" class="input-size" />
					</div>
				</div>
				
				<div>
					<label class="heading-text" for="recipientName">Recipient
						Name</label>
					<div>
						<form:input path="recipientName" name="recipientName" pattern="^[A-Za-z\s]*$"
							title="Please Enter Charactor Only" placeholder="Enter Name"
							class="input-size"  onblur="recipientNameCheck()" />
					</div>
				</div>
				<form:errors path="recipientName" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="recipientPhoneNo">Recipient
						Phone Number</label>
					<div>
						<form:input path="recipientPhoneNo" name="recipientPhoneNo" max="10"
							 pattern="[1-9]{1}[0-9]{9}" title="Enter 10 digits number"
							placeholder="Enter Phone Number" required="true"
							class="input-size"  onblur="recipientPhoneNoCheck();" />
					</div>
				</div>
				<form:errors path="recipientPhoneNo" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="hospitalName">Location</label>
					<div>
						<form:input path="hospitalName" name="hospitalName" pattern="^[A-Za-z\s]*$"
							title="Please Enter Character Only" 
							placeholder="Enter Location" class="input-size"
							style="margin-bottom: 10px;" onblur="hospitalNameCheck();" />
					</div>
				</div>
				<form:errors path="hospitalName" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="bloodGroupId">Blood Group
						Name : </label>
					<form:select path="bloodGroupId" id="bloodGroupId">
						<c:forEach var="bloodGrouplist" items="${bloodGrouplist}">
							<form:option value="${bloodGrouplist.bloodGroupId}"
								label="${bloodGrouplist.bloodGroup}" />
						</c:forEach>
					</form:select>
				</div>
				<form:errors path="bloodGroupId" cssClass="text-danger" />
				<div>
					<label class="heading-text" for="requestDate">Request Date</label>
					<div>
						<form:input type="date" path="requestDate" required="true"
							class="input-size" value="<%=Logic.getInstanceDate() %>" readonly="true" />
					</div>
				</div>
				<div>
					<label class="heading-text" for="quantityInUnits">Quantity
						In Units</label>
					<div>
						<form:input path="quantityInUnits" name="quantityInUnits"
							title="Please enter the units from 1 to 5" pattern="^[0-5]+$"
							required="true" min="1" max="5"  class="input-size" onblur="quantityInUnitsCheck();" />
					</div>
				</div>
				<form:errors path="quantityInUnits" cssClass="text-danger" />
				<div style="margin-top: 10px;">
					<form:button class="button-style">SAVE</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>