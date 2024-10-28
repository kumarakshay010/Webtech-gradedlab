// header.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header class="site-header">
    <nav>
        <div class="logo">
            <h1>My Website</h1>
        </div>
        <ul class="nav-links">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="about.jsp">About</a></li>
            <li><a href="contact.jsp">Contact</a></li>
        </ul>
    </nav>
</header>
<style>
    .site-header {
        background-color: #333;
        color: white;
        padding: 1rem;
    }
    .nav-links {
        list-style: none;
        display: flex;
        gap: 20px;
    }
    .nav-links a {
        color: white;
        text-decoration: none;
    }
</style>