<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Details</title>
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
            max-width: 600px;
            width: 100%;
            margin: 20px;
        }
        h1 {
            color: #333;
        }
        .profile-info {
            text-align: left;
            margin-top: 20px;
            line-height: 1.8;
        }
        .profile-info p {
            margin-bottom: 10px;
            font-size: 16px;
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
            font-size: 14px;
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
        String url = "jdbc:mysql://localhost/mydatabase";
        String username = "root";
        String password = "Sanjay@123";

        String name = "";
        String mobileNumber = "";
        String pwd = "";
        String address = "";
        String type = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);  
            String q = "SELECT * FROM users WHERE mobile_number=?";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, mob);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                name = rs.getString("name");
                mobileNumber = rs.getString("mobile_number");
                pwd = rs.getString("password");
                address = rs.getString("address");
                type = rs.getString("type");
            }
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        PrintWriter p = response.getWriter();
        p.println("<h1>Profile Details</h1>");
        p.println("<div class='profile-info'>");
        p.println("<p><strong>Mobile Number:</strong> " + mobileNumber + "</p>");
        p.println("<p><strong>Name:</strong> " + name + "</p>");
        p.println("<p><strong>Password:</strong> " + pwd + "</p>");
        p.println("<p><strong>Address:</strong> " + address + "</p>");
        p.println("<p><strong>Type:</strong> " + type + "</p>");
        p.println("</div>");
        %>
        <div class="nav-buttons">
            <a href="javascript:history.back()">Back</a>
            <a href="home.jsp">Home</a>
        </div>
    </div>
</body>
</html>
