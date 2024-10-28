// index.jsp (main page)
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to My Website</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        .main-content {
            padding: 20px;
            margin-bottom: 60px; /* Space for footer */
        }
    </style>
</head>
<body>
    <jsp:include page="header.jsp" />
    
    <div class="main-content">
        <h2>Welcome to Our Website</h2>
        <p>This is the main content area of our website. The header and footer are included using JSP include directives.</p>
        
        <%-- Example of dynamic content --%>
        <% 
            java.time.LocalDateTime now = java.time.LocalDateTime.now();
            out.println("<p>Current server time: " + now + "</p>");
        %>
        
        <%-- Example of using a forward directive (commented out) --%>
        <%-- 
        <jsp:forward page="welcome.jsp">
            <jsp:param name="user" value="Guest" />
        </jsp:forward>
        --%>
    </div>

    <jsp:include page="footer.jsp" />
</body>
</html>