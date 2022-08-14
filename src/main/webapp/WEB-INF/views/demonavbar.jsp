<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Demo Navbar</title>
<style>
*{
padding:0;
margin:0;
text-style:none;
list-style:none;
}
body
{
font-family:montserrat;
}
nav
{  
height:80px;
width:100%;
background: #34495e;
}
label.logo
{
font-size:35px;
font-weight:bold;
color:white;
padding: 0 100px;
line-height:80px;
}
nav ul{
float:right;
margin-right:40px;
}
nav li
{
display:inline-block;
margin:0 8px;
line-height:80px;
}
nav a{
color:white;
font-size:18px;
text-transform:uppercase;
border:1px solid transparent;
padding:7px 10px;
border-radius:3px;
}
</style>
</head>
<body>
<nav>
<label class="logo">BloodBank</label>
<ul>
<li><a href="#">Home</a></li>
<li><a href="#">About</a></li>
<li><a href="#">BloodRequest</a></li>
<li><a href="#">DonorAppointmnet</a></li>
<li><a href="#">AdminLogin</a></li>
</ul>

</nav>
</body>
</html>