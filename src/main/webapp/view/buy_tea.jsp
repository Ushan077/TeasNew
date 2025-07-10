<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*, com.datapackage.model.Tea" %>
<html>
<head><title>Tea List</title></head>
<body>
    <h2>Available Tea Products</h2>
    <table border="1">
        <tr>
            <th>Name</th><th>Region</th><th>Grade</th><th>Weight (g)</th>
            <th>Strength</th><th>Price ($)</th><th>Qty</th><th>Image</th><th>Created At</th>
        </tr>
        <%
            List<Tea> teas = (List<Tea>) request.getAttribute("teaList");
            for (Tea tea : teas) {
        %>
        <tr>
            <td><%= tea.getName() %></td>
            <td><%= tea.getRegion() %></td>
            <td><%= tea.getGrade() %></td>
            <td><%= tea.getWeight() %></td>
            <td><%= tea.getStrength() %></td>
            <td><%= tea.getPrice() %></td>
            <td><%= tea.getQuantity() %></td>
            <td>
                <% if (tea.getImageUrl() != null) { %>
                    <img src="<%= tea.getImageUrl() %>" alt="Tea Image" width="60" height="60"/>
                <% } else { %>
                    No Image
                <% } %>
            </td>
            <td><%= tea.getCreatedAt() %></td>
        </tr>
        <% } %>
    </table>
</body>
</html>
