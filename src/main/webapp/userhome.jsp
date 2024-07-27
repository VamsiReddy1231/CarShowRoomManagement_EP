<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Home Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: green;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .navbar a:hover {
            background-color: #6dd5fa;
        }

        .navbar .right {
            float: right;
        }

        .container {
            padding: 20px;
            text-align: center;
            background-image: url('https://wallpapers.com/images/hd/4k-laptop-car-show-lamborghini-aventador-fnoqmtipzs4040xw.jpg'); /* Add your image URL here */
            background-size: cover;
            background-position: center;
            height: 500px; /* Adjust height as needed */
        }

        footer {
            background-color: green;
            color: white;
            text-align: center;
            padding: 40px; /* Increased padding for more height */
            position: relative;
            bottom: 0;
            width: 100%;
        }

        footer p {
            margin: 0;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="userhome.jsp">Home</a>
        <a href="UserAbout.jsp">About</a>
        <a href="Records.jsp">Records</a>
        <a href="adminlogin.jsf" class="right">Admin</a>
        <a href="userlogin.jsf" class="right">Login</a>
    </div>
    <div class="container">
        <!-- No content section -->
    </div>
    <footer>
        <p>Showroom Name | Lucky car Showroom , Darsi, Prakasam,AP, 523247</p>
        <p>&copy; 2024 Showroom Name. All rights reserved.</p>
        <p>Contact:7865123467</p>
    </footer>
</body>
</html>
