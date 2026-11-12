
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.Map" %>
<%
    if (session.getAttribute("userId") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    double totalWaste = request.getAttribute("totalWaste") == null
            ? 0.0 : (Double) request.getAttribute("totalWaste");

    int totalReports = request.getAttribute("totalReports") == null
            ? 0 : (Integer) request.getAttribute("totalReports");

    Map<String, Double> mealWaste =
            (Map<String, Double>) request.getAttribute("mealWaste");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MessMate - Food Waste Analytics</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f1f8f4;
            margin: 0;
            padding: 30px 15px;
            color: #24352b;
        }
        .container {
            max-width: 750px;
            margin: auto;
            background: white;
            padding: 25px;
            border-radius: 14px;
        }
        h1, h2 { color: #18794e; }
        .cards {
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
        }
        .card {
            flex: 1;
            min-width: 180px;
            padding: 20px;
            background: #e5f5e9;
            border-radius: 10px;
        }
        .number {
            font-size: 28px;
            font-weight: bold;
            color: #18794e;
        }
        .meal {
            margin: 18px 0;
        }
        .bar {
            background: #e5e7eb;
            height: 20px;
            border-radius: 10px;
            overflow: hidden;
        }
        .fill {
            background: #23945b;
            height: 20px;
            border-radius: 10px;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 18px;
            background: #18794e;
            color: white;
            text-decoration: none;
            border-radius: 6px;
        }
        .note { color: #555; font-size: 14px; }
    </style>
</head>
<body>
<div class="container">
    <h1>MessMate Food Waste Analytics</h1>
    <p>Understand food waste and help reduce it in your hostel mess.</p>

    <div class="cards">
        <div class="card">
            <p>Total Food Waste</p>
            <div class="number">
                <%= String.format("%.2f", totalWaste) %> kg
            </div>
        </div>

        <div class="card">
            <p>Total Waste Reports</p>
            <div class="number"><%= totalReports %></div>
        </div>
    </div>

    <h2>Waste by Meal Type</h2>

    <%
        String[] meals = {"Breakfast", "Lunch", "Dinner"};

        for (String meal : meals) {
            double amount = mealWaste == null
                    ? 0.0 : mealWaste.getOrDefault(meal, 0.0);

            double percentage = totalWaste > 0
                    ? (amount / totalWaste) * 100 : 0;
    %>
        <div class="meal">
            <strong><%= meal %></strong> —
            <%= String.format("%.2f", amount) %> kg
            <div class="bar">
                <div class="fill"
                     style="width:<%= percentage %>%;"></div>
            </div>
        </div>
    <% } %>

    <p class="note">
        Analytics are calculated automatically from saved food-waste reports.
    </p>

    <a href="dashboard.jsp">Back to Dashboard</a>
</div>
</body>
</html>
