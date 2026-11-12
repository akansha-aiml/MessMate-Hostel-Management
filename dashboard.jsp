```jsp
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    if (session.getAttribute("userId") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>MessMate Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f1f8f4;
            text-align: center;
            padding: 50px 15px;
        }
        .container {
            background: white;
            max-width: 550px;
            margin: auto;
            padding: 30px;
            border-radius: 12px;
        }
        h1 { color: #18794e; }
        .link {
            display: block;
            margin: 15px auto;
            padding: 14px;
            max-width: 300px;
            background: #18794e;
            color: white;
            text-decoration: none;
            border-radius: 6px;
        }
        .logout { background: #555; }
    </style>
</head>
<body>
<div class="container">
    <h1>Welcome to MessMate!</h1>
    <h3>Hello, <%= session.getAttribute("userName") %>!</h3>
    <p>You have successfully logged in.</p>
    <p>Your role: <%= session.getAttribute("userRole") %></p>

    <a class="link" href="feedback.jsp">Submit Food Feedback</a>
    <a class="link" href="foodwaste.jsp">Report Food Waste</a>
    <a class="link" href="analytics">View Food Waste Analytics</a>
    <a class="link logout" href="logout">Logout</a>
</div>
</body>
</html>
```