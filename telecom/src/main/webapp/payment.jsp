<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Payment</title>
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

        form {
            margin-top: 20px;
        }

        form div {
            margin-bottom: 15px;
        }

        form label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        form input[type="text"],
        form input[type="date"],
        form input[type="number"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        form input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        form input[type="submit"]:hover {
            background-color: #0056b3;
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
        <h1>Enter your payment details</h1>
        <form action="pre_pay_suc.jsp">
            <div>
                <label for="card-number">Debit card/credit card number:</label>
                <input type="text" id="card-number" required>
            </div>
            <div>
                <label for="expiry-date">Expiry date:</label>
                <input type="date" id="expiry-date" required>
            </div>
            <div>
                <label for="cvv">CVV:</label>
                <input type="number" id="cvv" required>
            </div>
            <input type="submit" value="Confirm">
        </form>
        <div class="nav-buttons">
            <a href="javascript:history.back()">Back</a>
            <a href="home.jsp">Home</a>
        </div>
    </div>
</body>
</html>
