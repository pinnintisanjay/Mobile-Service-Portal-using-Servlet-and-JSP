<%@ page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Know Your Balance</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            color: #333;
        }
        .balance-info {
            text-align: left;
            margin-top: 20px;
            line-height: 1.6;
        }
        .balance-info p {
            margin-bottom: 10px;
        }
        .nav-buttons {
            margin-top: 20px;
        }
        .nav-buttons a {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            margin: 0 10px;
        }
        .nav-buttons a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <%
        String mob = (String) session.getAttribute("mobileNumber");
        PrintWriter p = response.getWriter();
        p.println("<h1>Know Your Balance</h1>");
        p.println("<div class='balance-info'>");
        p.println("<p>Mobile Number: " + mob + "</p>");
        p.println("<p>Talktime Balance: Unlimited</p>");
        p.println("<p>Data Balance: 1.5GB per day</p>");
        p.println("<p>SMS Balance: 100 messages per day</p>");
        p.println("</div>");
        %>
        <div class="nav-buttons">
            <a href="javascript:history.back()">Back</a>
            <a href="home.jsp">Home</a>
        </div>
    </div>
</body>
</html>
