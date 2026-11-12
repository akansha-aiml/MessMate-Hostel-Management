
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
    <title>MessMate - Food Waste</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f1f8f4;
            padding: 30px 15px;
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
        input, select {
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
    <h2>Food Waste Reporting</h2>
    <p>Record the food wasted in the hostel mess.</p>

    <% if ("1".equals(request.getParameter("success"))) { %>
        <p class="success">Food waste report saved successfully!</p>
    <% } %>

    <form action="foodwaste" method="post">
        <label>Food Item</label>
        <input type="text" name="food_item" maxlength="100"
               placeholder="e.g. Rice" required>

        <label>Quantity Wasted (kg)</label>
        <input type="number" name="quantity_kg"
               min="0.01" step="0.01" required>

        <label>Meal Type</label>
        <select name="meal_type" required>
            <option value="Breakfast">Breakfast</option>
            <option value="Lunch">Lunch</option>
            <option value="Dinner">Dinner</option>
        </select>

        <label>Date</label>
        <input type="date" name="waste_date"
               value="<%= java.time.LocalDate.now() %>" required>

        <button type="submit">Save Waste Report</button>
    </form>

    <p><a href="dashboard.jsp">Back to Dashboard</a></p>
</div>
</body>
</html>
