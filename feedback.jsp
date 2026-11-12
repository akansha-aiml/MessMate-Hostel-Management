
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
    <title>MessMate - Food Feedback</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f1f8f4;
            margin: 0;
            padding: 30px;
        }
        .container {
            max-width: 500px;
            margin: auto;
            background: white;
            padding: 25px;
            border-radius: 12px;
        }
        h2 { color: #18794e; }
        label { display: block; margin-top: 15px; }
        input, select, textarea {
            width: 100%;
            box-sizing: border-box;
            padding: 10px;
            margin-top: 6px;
        }
        button {
            margin-top: 20px;
            padding: 12px;
            width: 100%;
            background: #18794e;
            color: white;
            border: none;
            cursor: pointer;
        }
        .success { color: green; }
    </style>
</head>
<body>
<div class="container">
    <h2>MessMate Food Feedback</h2>
    <p>Share your experience with today's mess food.</p>

    <% if ("1".equals(request.getParameter("success"))) { %>
        <p class="success">Feedback submitted successfully!</p>
    <% } %>

    <form action="feedback" method="post">
        <label>Food Quality</label>
        <select name="food_quality" required>
            <option value="Excellent">Excellent</option>
            <option value="Good">Good</option>
            <option value="Average">Average</option>
            <option value="Poor">Poor</option>
        </select>

        <label>Rating (1 to 5)</label>
        <select name="rating" required>
            <option value="5">5 - Excellent</option>
            <option value="4">4 - Good</option>
            <option value="3">3 - Average</option>
            <option value="2">2 - Poor</option>
            <option value="1">1 - Very Poor</option>
        </select>

        <label>Comments</label>
        <textarea name="comments" rows="4"
                  maxlength="500"
                  placeholder="Write your suggestions..."></textarea>

        <button type="submit">Submit Feedback</button>
    </form>

    <p><a href="dashboard.jsp">Back to Dashboard</a></p>
</div>
</body>
</html>
