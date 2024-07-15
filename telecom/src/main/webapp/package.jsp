<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Package 1</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #333;
        }

        .plan-details {
            margin-top: 20px;
        }

        .plan-details h2 {
            color: #007bff;
        }

        .plan-details ul {
            list-style-type: none;
            padding: 0;
        }

        .plan-details ul li {
            background-color: #e9ecef;
            margin: 10px 0;
            padding: 10px;
            border-radius: 5px;
            color: #555;
        }

        form {
            margin-top: 20px;
        }

        form input[type="submit"], .button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }

        form input[type="submit"]:hover, .button:hover {
            background-color: #0056b3;
        }

        .nav-buttons {
            margin-top: 20px;
        }

        .nav-buttons a {
            margin: 0 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Package 1</h1>
        <div class="plan-details">
            <h2>Plan: 299 Rs</h2>
            <ul>
                <li>Unlimited calls</li>
                <li>3GB per day</li>
                <li>28 days validity</li>
            </ul>
            <form action="payment.jsp">
                <input type="submit" value="Proceed">
            </form>
            <div class="nav-buttons">
                <a href="javascript:history.back()" class="button">Back</a>
                <a href="home.jsp" class="button">Home</a>
            </div>
        </div>
    </div>
</body>
</html>
