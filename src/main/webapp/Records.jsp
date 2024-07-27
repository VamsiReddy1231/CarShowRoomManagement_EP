<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Showroom Records</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://wallpapers.com/images/hd/plain-background-7h91softhxck36gv.jpg');
            background-size: cover;
            background-attachment: fixed;
        }
        .container {
            margin-top: 20px;
        }
        .record {
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            padding: 20px;
            background-color: transparent; /* No background color */
        }
        .record img {
            border-radius: 8px;
            max-width: 100%;
            height: auto;
            width: 40%; /* Adjust width as needed */
            object-fit: cover; /* Ensure image covers its container */
        }
        .record-content {
            flex: 1;
            padding-left: 20px; /* Add padding to the left of text */
        }
        .record-content h2 {
            margin-top: 0;
            color: #fff; /* Text color to ensure readability on background image */
        }
        .record-content p {
            color: #ddd; /* Light text color for better contrast */
            line-height: 1.6;
        }
        .record-content a {
            color: #00f; /* Blue link color */
            text-decoration: none;
        }
        .record-content a:hover {
            text-decoration: underline;
        }
        .header {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Our Car Showroom Records</h1>
    </div>

    <div class="container">
        <!-- Record 1 -->
        <div class="record">
            <div class="record-content">
                <h2>Rolls Royce Wraith</h2>
                <p>
                    The Rolls Royce Wraith stands as a symbol of luxury and opulence. With its stunning design and powerful performance, it offers a driving experience that is both exhilarating and refined. The Wraith combines classic elegance with modern technology, ensuring a superior ride in every way. For more details, visit <a href="https://www.rolls-royce.com/models/wraith/" target="_blank">Rolls Royce Wraith</a>.
                </p>
            </div>
            <img src="https://w0.peakpx.com/wallpaper/888/484/HD-wallpaper-rolls-royce-wraith.jpg" alt="Rolls Royce Wraith">
        </div>

        <!-- Record 2 -->
        <div class="record">
            <div class="record-content">
                <h2>Rolls Royce Ghost</h2>
                <p>
                    The Rolls Royce Ghost is renowned for its unmatched luxury and refinement. It is designed to offer an ultra-smooth ride, with an emphasis on comfort and tranquility. The Ghost is ideal for those who seek the ultimate in sophistication and class. Learn more about it at <a href="https://www.rolls-royce.com/models/ghost/" target="_blank">Rolls Royce Ghost</a>.
                </p>
            </div>
            <img src="https://w0.peakpx.com/wallpaper/586/108/HD-wallpaper-rolls-royce-ghost-2020-4.jpg" alt="Rolls Royce Ghost">
        </div>

        <!-- Record 3 -->
        <div class="record">
            <div class="record-content">
                <h2>Volvo XC90</h2>
                <p>
                    The Volvo XC90 is a premium SUV that excels in safety and technology. With its spacious interior and advanced features, it provides a comfortable and secure driving experience for families. Discover more about the XC90 at <a href="https://www.volvocars.com/us/cars/new-models/xc90" target="_blank">Volvo XC90</a>.
                </p>
            </div>
            <img src="https://d2m3nfprmhqjvd.cloudfront.net/blog/20221216165227/Volvo-XC90-1160x653.webp" alt="Volvo XC90">
        </div>
    </div>

    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
