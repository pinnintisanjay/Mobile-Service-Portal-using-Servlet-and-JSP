<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
    <style>
        body {
            background-image: url('homepage image.jpg'); 
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .header {
            text-align: center;
            margin-bottom: 50px;
        }

        .header h3 {
            margin: 0;
            font-size: 2em;
            color: #1e90ff; /* Adjust color here */
        }

        .container {
            background-color: rgba(0, 0, 0, 0.6);
            border-radius: 10px;
            padding: 20px 40px;
            text-align: center;
        }

        .container a {
            color: #fff;
            text-decoration: none;
            font-size: 1.2em;
            margin: 10px 0;
            display: block;
            transition: color 0.3s;
        }

        .container a:hover {
            color: #ffd700;
        }

        .container .welcome {
            font-size: 1.5em;
            margin-bottom: 20px;
        }

        .container .logout {
            position: absolute;
            top: 20px;
            right: 20px;
        }

        .container .logout a {
            color: #ff4500;
            font-weight: bold;
        }

        .container .logout a:hover {
            color: #ff6347;
        }
    </style>
</head>
<body>
    <div class="header">
        <h3>Welcome to MyTel</h3>
    </div>
    <div class="container">
        <div class="logout"><a href="login.jsp">Log Out</a></div>
        <div class="welcome"></div>
        <a href="mobilerecharge">Mobile Recharge</a>
        <a href="paybills">Pay Bills</a>
        <a href="conversion.jsp">Convert Prepaid to Postpaid / Postpaid to Prepaid</a>
        <a href="balance.jsp">Know the Balance</a>
        <a href="profile.jsp">Profile Details</a>
    </div>
</body>
</html>
