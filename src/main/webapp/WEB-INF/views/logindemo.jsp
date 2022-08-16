<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login Form</title>
<script>
    function validateform() {
        var adminId = document.reg_form.adminId.value;
        var adminPassword = document.reg_form.adminPassword.value;
        if (adminId == null || adminId == "") {
            alert("Admin Id is required or can't be blank");
            return false;
        } else if (adminPassword.length < 6) {
            alert("Admin Password is required or can't be blank");
            return false;
        }
    }
</script>
<style>
@import
    url('https://fonts.googleapis.com/css?family=Playfair+Display:400,900|Poppins:400,500')
    ;
h1{color: white;}
* {
    margin: 0;
    padding: 0;
    text-decoration: none;
    box-sizing: border-box;
}

body {
    margin: 0;
    padding: 0;
    background: #f6f6f6;
    font-family: 'Poppins', sans-serif;
    overflow-x: hidden;
    height: 100vh;
    margin: auto;
    display: flex;
}

img {
    max-width: 100%;
}

.app {
    background-color: #fff;
    width: 330px;
    height: 570px;
    margin: 2em auto;
    border-radius: 5px;
    padding: 1em;
    position: relative;
    overflow: hidden;
    box-shadow: 0 6px 31px -2px rgba(0, 0, 0, .3);
}

a {
    text-decoration: none;
    color: #257aa6;
}

p {
    font-size: 13px;
    color: #333;
    line-height: 2;
}

.light {
    text-align: right;
    color: #fff;
}

.light a {
    color: #fff;
}

.bg {
    width: 400px;
    height: 550px;
    background: #04AA6D;
    position: absolute;
    top: -5em;
    left: 0;
    right: 0;
    margin: auto;
    background-image: url("background.jpg");
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
    clip-path: ellipse(69% 46% at 48% 46%);
}

form {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    width: 100%;
    text-align: center;
    padding: 2em;
}

header {
    width: 220px;
    height: 220px;
    margin: 1em auto;
}

form input {
    width: 100%;
    padding: 13px 15px;
    margin: 0.7em auto;
    border-radius: 100px;
    border: none;
    background: rgb(255, 255, 255, 0.3);
    font-family: 'Poppins', sans-serif;
    outline: none;
    color: #fff;
}

input::placeholder {
    color: #fff;
    font-size: 13px;
}

.inputs {
    margin-top: -4em;
}

footer {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    padding: 2em;
    text-align: center;
}

button {
    width: 100%;
    padding: 13px 15px;
    border-radius: 100px;
    border: none;
    background: #04AA6D;
    font-family: 'Poppins', sans-serif;
    outline: none;
    color: #fff;
}

@media screen and (max-width: 640px) {
    .app {
        width: 100%;
        height: 100vh;
        border-radius: 0;
    }
    .bg {
        top: -7em;
        width: 450px;
        height: 95vh;
    }
    header {
        width: 90%;
        height: 250px;
    }
    .inputs {
        margin: 0;
    }
    input, button {
        padding: 18px 15px;
    }
}
</style>
</head>
<body>
    <div class="app">
        <div class="bg"></div>
        <form action="adminlogin" name="reg_form" method="post"
            modelAttribute="adminlogin" onsubmit="return validateform()">
            <header>
            <h1>Admin Login</h1>
            </header>
            <br> <br>
            <div class="inputs">
                <input type="text" id="adminId" name="adminId"
                    placeholder="Admin ID"> <input type="password"
                    id="adminPassword" name="adminPassword" placeholder="Password">
            </div>
            <br> <br>
            <button type="submit" value="Login">Login</button>
        </form>

        <footer>
            <p>
                Don't have an account? <a href="#">Sign Up</a>
            </p>
        </footer>
    </div>
</body>
</html>