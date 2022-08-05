<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminLogin Form</title>
</head>
<body>
    <div id="root">
        <div id="form" align="center">
            <form:form action="adminlogin" method="post" modelAttribute="login">
                <h1>Admin Login</h1>
                <table>
                    <tr>
                        <td><label for="adminId">Admin Id :</label></td>
                        <td><form:input path="adminId"
                                placeholder="adminId" /></td>
                    </tr>
                    <tr>
                        <td><label for="adminPassword">Password :</label></td>
                        <td><form:input path="adminPassword" type="password" /></td>
                    </tr>
                </table>
                <div>
                    <tr>
                        <td><form:button>Sign In</form:button></td>
                        <td><form:button>
                                <a href="/admin/addadminform">Sign Up</a>
                            </form:button></td>
                    </tr>
                </div>
            </form:form>
        </div>
    </div>
</body>
</html>
</body>
</html>