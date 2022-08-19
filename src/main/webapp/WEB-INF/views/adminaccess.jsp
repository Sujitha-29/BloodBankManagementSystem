<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer Access</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style><%@include file ="/WEB-INF/css/adminaccess.css"%>

</style>
</head>
<body>
    <h1 align="center">Welcome</h1>

    <div class="navbar">
        <div class="dropdown">
            <button class="dropbtn">
                AdminDetails<em class="fa fa-caret-down"></em>
            </button>
            <div class="dropdown-content">
                <a href="/admin/listadmins">List</a> 
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">
               BloodGroupDetails <em class="fa fa-caret-down"></em>
            </button>
            <div class="dropdown-content">
                <a href="/bloodgroup/listbloodgroup">Blood Group List</a>
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">
               Appointment <em class="fa fa-caret-down"></em>
            </button>
            <div class="dropdown-content">
                <a href="/appointment/listappointment">DonorAppointment List</a> 
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">
              BloodTransaction <em class="fa fa-caret-down"></em>
            </button>
            <div class="dropdown-content">
                <a href="/bloodtransaction/listbloodtransaction">Blood
				Transaction List</a>              
            </div>
        </div>
        
        <div class="dropdown">
            <button class="dropbtn">
               BloodRequest <em class="fa fa-caret-down"></em>
            </button>
            <div class="dropdown-content">
                <a href="/bloodrequest/listbloodrequest">Blood Request List</a>
            </div>
        </div>
        
        <div class="dropdown">
            <button class="dropbtn">
              PersonDetails <em class="fa fa-caret-down"></em>
            </button>
            <div class="dropdown-content">
                <a href="/person/listpersondetails">Persons List</a>
            </div>
        </div>
        
        <div class="dropdown">
            <button class="dropbtn">
              DonationDetails <em class="fa fa-caret-down"></em>
            </button>
            <div class="dropdown-content">
                <a href="/blooddonation/listblooddonation">Donation List</a>
            </div>
        </div>       
    </div>
</body>
</html>