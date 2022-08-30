<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>AdminAccess</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file ="/WEB-INF/css/adminaccess.css"%>
.button
{
    margin-top: -160px;
    float: right;
    padding: 43px;
}
.input
{
style="line-height:60px;padding: 0 50px;color: white;width:40%; letter-spacing:1px;
  text-shadow:2px 2px 5px;"
}
</style>
</head>
<body>
         
    
    <div id="container">

      <nav>
        <div id="logo">Home
        </div>
        <ul>
          <li class="dropdown" onmouseover="hover(this);" onmouseout="out(this);">
          <a href="#" class="input">Blood Bank Records &nbsp;<i class="fa fa-caret-down"></i></a>
            <div class="dd">
              <div id="up_arrow"></div>
            <ul>
              
              <li><a href="/admin/listadmins" class="input">Admin List</a></li>
              <li><a href="/bloodgroup/listbloodgroup" class="input">Blood Group List</a></li>
              <li><a href="/person/listpersondetails" class="input">Persons List</a></li>
              <li><a href="/blooddonation/listblooddonation" class="input">Blood Donation List</a></li>
              <li><a href="/bloodrequest/listbloodrequest" class="input">Request List</a></li>
              <li><a href="/bloodtransaction/listbloodtransaction" class="input">Transaction List</a></li>
              <li><a href="/appointment/listappointment" class="input">DonorAppointment List</a></li>
            </ul>
            </div>
          </li>
          </ul>       
      </nav>
    </div>
    <div class="button">
				        <button class="logout">
                            <a href="/home/loginuse">Logout</a>
                        </button> 
			</div>
  </body>
</html>