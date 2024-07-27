<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>About Us</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://wallpapers.com/images/hd/plain-background-7h91softhxck36gv.jpg');
            background-size: cover;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            padding: 40px;
            max-width: 1200px;
            margin: auto;
            align-items: center;
        }

        .content {
            flex: 1;
            max-width: 50%;
            margin-right: 20px;
        }

        .content h1 {
            color: #2980b9;
            margin-bottom: 20px;
        }

        .content h2 {
            color: #333;
            margin-top: 20px;
            margin-bottom: 15px;
        }

        .content p {
            font-size: 18px;
            color: #666;
            line-height: 1.6;
        }

        .image {
            flex: 1;
            max-width: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .image img {
            width: 600px;
            height: 600px;
            border-radius: 10px;
            object-fit: cover; /* Ensures the image covers the dimensions */
        }

        footer {
            background-color: #2980b9;
            color: white;
            text-align: center;
            padding: 40px;
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
    <div class="container">
        <div class="content">
            <h1>About Our Car Showroom</h1>
            <b><h2 style="color:white">Our Mission</h2></b>
            <p style="color:dark white">At our car showroom, our mission is to deliver exceptional service and high-quality vehicles to our customers. We strive to create a welcoming environment where you can explore a wide range of cars and find the perfect one for your needs.</p>
            <b><h2 style="color:white">Our History</h2></b>
            <p>Established in 2010, our showroom has been a trusted name in the automotive industry. From our humble beginnings, we have expanded our offerings and established a reputation for reliability and customer satisfaction.</p>
            <b><h2 style="color:white">Our Team</h2></b>
            <p>Our team comprises experienced professionals who are passionate about cars and dedicated to providing top-notch service. We are here to assist you in every step of your car-buying journey, ensuring a smooth and enjoyable experience.</p>
        </div>
        <div class="image">
            <img src="https://www.shutterstock.com/image-photo/audi-headlights-600nw-2455921057.jpg" alt="Car Showroom Image">
        </div>
    </div>
    <footer>
        <p>Car Showroom Name | 1234 Showroom Address, City, State, ZIP</p>
        <p>&copy; 2024 Car Showroom Name. All rights reserved.</p>
    </footer>
</body>
</html>
