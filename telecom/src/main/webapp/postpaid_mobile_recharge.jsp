<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>No Prepaid User</title>
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

        p {
            font-size: 18px;
            color: #333;
            margin-top: 20px;
        }

        .navigation {
            margin-top: 20px;
        }

        .navigation a {
            display: inline-block;
            margin-right: 20px;
            color: #333;
            text-decoration: none;
            font-size: 16px;
            transition: color 0.3s;
        }

        .navigation a:hover {
            color: #555;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>No Prepaid User</h1>
        <p>Prepaid users only are allowed to perform mobile recharge.</p>
        
        <div class="navigation">
            <a href="javascript:history.back()">Back</a>
            <a href="home.jsp">Home</a>
        </div>
    </div>
</body>
</html>
