
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>MessMate - Student Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f1f5f9;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }
        .card {
            background: white;
            padding: 30px;
            width: 320px;
            max-width: 85%;
            border-radius: 12px;
            box-shadow: 0 4px 15px #0002;
        }
        h2 { text-align: center; color: #166534; }
        input, button {
            box-sizing: border-box;
            width: 100%;
            padding: 12px;
            margin: 9px 0;
            border-radius: 6px;
        }
        input { border: 1px solid #cbd5e1; }
        button {
            background: #15803d;
            color: white;
            border: none;
            cursor: pointer;
        }
        a { color: #15803d; }
        .message { text-align: center; font-size: 14px; }
    </style>
</head>
<body>
<div class="card">
    <h2>MessMate</h2>
    <p class="message">Create your student account</p>

    <form action="register" method="post">
        <input type="text" name="full_name"
               placeholder="Full Name" required>

        <input type="email" name="email"
               placeholder="Email Address" required>

        <input type="password" name="password"
               placeholder="Password (minimum 8 characters)"
               minlength="8" required>

        <button type="submit">Register</button>
    </form>

    <p class="message">
        Already registered? <a href="login.jsp">Login</a>
    </p>
</div>
</body>
</html>
