<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Greeting</title>
    <style>
        .greeting {
            margin: 20px;
            padding: 20px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
    <div class="greeting">
        <%
            String name = request.getParameter("name");
            String ageStr = request.getParameter("age");
            
            if(name != null && ageStr != null) {
                int age = Integer.parseInt(ageStr);
                String greeting;
                
                if(age < 18) {
                    greeting = "Hello, Youngster!";
                } else if(age < 30) {
                    greeting = "Hello, Young Adult!";
                } else if(age < 50) {
                    greeting = "Hello, Adult!";
                } else {
                    greeting = "Hello, Wise One!";
                }
        %>
                <h2><%= greeting %></h2>
                <p>Name: <%= name %></p>
                <p>Age: <%= age %></p>
        <%
            }
        %>
        <br>
        <a href="userform.jsp">Back to Form</a>
    </div>
</body>
</html>