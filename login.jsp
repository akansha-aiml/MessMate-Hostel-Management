
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>MessMate - Login</title>
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
        .message { text-align: center; }
    </style>
</head>
<body>
<div class="card">
    <h2>MessMate</h2>
    <p class="message">Student Login</p>
    <% if ("1".equals(request.getParameter("error"))) { %>
    <p class="message" style="color:red;">
        Invalid email or password. Please try again.
    </p>
<% } %>

    <% if ("1".equals(request.getParameter("registered"))) { %>
        <p class="message">Registration successful! Please log in.</p>
    <% } %>

    <form action="login" method="post">
        <input type="email" name="email"
               placeholder="Email Address" required>

        <input type="password" name="password"
               placeholder="Password" required>

        <button type="submit">Login</button>
    </form>

    <p class="message">
        New student? <a href="register.jsp">Register here</a>
    </p>
</div>
</body>
</html>
