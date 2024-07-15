<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Invalid User/Password</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 400px;
            width: 90%;
            text-align: center;
        }

        h3 {
            text-align: center;
            margin-bottom: 20px;
        }

        .message {
            margin-bottom: 20px;
        }

        .retry-link {
            color: #007bff;
            text-decoration: none;
        }

        .retry-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        
        <div class="message">
            <p>Invalid username/password</p>
        </div>
        <a href="login.jsp" class="retry-link">Please try again</a>
    </div>
</body>
</html>
