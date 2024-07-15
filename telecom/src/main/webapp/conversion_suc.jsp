<%@ page import ="java.sql.*"%>
<%@ page import ="java.io.*"%>
<%@ page import ="javax.servlet.http.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Conversion Success</title>
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
        .message {
            margin-top: 20px;
            color: green;
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
        String url = "jdbc:mysql://localhost/mydatabase";
        String username = "root";
        String password = "Sanjay@123";
        Connection con = null;
        PreparedStatement pstmt = null;

        response.setContentType("text/html");
        PrintWriter p = response.getWriter();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, username, password);

            String userType = (String) session.getAttribute("userType");
            String mobile = (String) session.getAttribute("mobileNumber");
            String type = "postpaid";

            if ("prepaid".equals(userType)) {
                pstmt = con.prepareStatement("UPDATE users SET type=? WHERE mobile_number=?");
                pstmt.setString(1, type);
                pstmt.setString(2, mobile);

                int a = pstmt.executeUpdate();

                %><div class="message">Mobile number successfully converted to postpaid</div><%
            } else if ("postpaid".equals(userType)) {
                response.sendRedirect("postpaid_mobile_recharge.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace(p);
        } finally {
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException e) {
                    e.printStackTrace(p);
                }
            }
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace(p);
                }
            }
        }
        %>
        <div class="nav-buttons">
            <a href="javascript:history.back()">Back</a>
            <a href="home.jsp">Home</a>
        </div>
    </div>
</body>
</html>
