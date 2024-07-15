<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log in</title>
<style>
    body {
        background-image: url('telecom.jpg'); /* Replace this URL with your desired image */
        background-size: cover;
        background-position: center;
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        flex-direction: column;
    }
    
    .container {
        background-color: rgba(255, 255, 255, 0.8);
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        padding: 30px;
        max-width: 400px;
        width: 100%;
        text-align: center;
    }

    h1 {
        color: #333;
        margin-bottom: 20px;
    }

    .input-group {
        margin-bottom: 20px;
        text-align: left;
    }

    .input-group label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }

    .input-group input {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }

    .input-group input[type="password"] {
        margin-top: 10px;
    }

    .input-group input[type="submit"] {
        background-color: #5cb85c;
        color: #fff;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s ease;
        width: 100%;
        padding: 10px;
    }

    .input-group input[type="submit"]:hover {
        background-color: #4cae4c;
    }

    .signup-link {
        margin-top: 20px;
    }

    .signup-link a {
        color: #007bff;
        text-decoration: none;
        font-weight: bold;
    }

    .signup-link a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>WELCOME TO MYTEL</h1>
        <form action="login" method="post">
            <div class="input-group">
                <label for="mobilenumber">Mobile Number:</label>
                <input type="text" id="mobilenumber" name="mobilenumber">
            </div>
            <div class="input-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password">
            </div>
            <div class="input-group">
                <input type="submit" value="Login">
            </div>
            <div class="signup-link">
                New user? <a href="sinup.jsp">Sign up</a>
            </div>
        </form>
    </div>
</body>
</html>
