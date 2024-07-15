<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mobile Recharge</title>
    <style>
        body {
            background-image: url('telecom.jpg'); /* Ensure the image path is correct */
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 400px;
            width: 90%;
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

        .package-links a {
            display: block;
            color: #007bff;
            text-decoration: none;
            margin: 10px 0;
            font-size: 16px;
        }

        .package-links a:hover {
            text-decoration: underline;
        }

        .submit-btn {
            background-color: #5cb85c;
            color: #fff;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
        }

        .submit-btn:hover {
            background-color: #4cae4c;
        }

        .footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: #f1f1f1;
            text-align: center;
            padding: 10px 0;
        }

        .footer button {
            padding: 10px 20px;
            margin: 0 10px;
            font-size: 16px;
            cursor: pointer;
            border: none;
            background-color: #007bff;
            color: #fff;
            border-radius: 5px;
            text-decoration: none;
        }

        .footer button:hover {
            background-color: #0056b3;
        }

        @media (min-width: 768px) {
            .container {
                width: 50%;
            }
        }

        @media (min-width: 1024px) {
            .container {
                width: 40%;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Mobile Recharge</h1>
        <div class="input-group">
            <label for="num">Mobile Number:</label>
            <input type="text" id="num" name="num" required>
        </div>
        <div class="package-links">
            <label>Select Package:</label>
            <a href="package.jsp">Package 1</a>
            <a href="#">Package 2</a>
            <a href="#">Package 3</a>
        </div>
        <button type="submit" class="submit-btn">Recharge</button>
    </div>

    <div class="footer">
        <a href="javascript:history.back()" class="button">Back</a>
        <a href="home.jsp" class="button">Home</a>
    </div>
</body>
</html>
