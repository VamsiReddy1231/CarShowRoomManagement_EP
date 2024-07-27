<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image:url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStgN_iuMV3xP9zEHCaZh8iqXGBGkK4GYlssA&usqp=CAU');
            background-size: cover;
        }
        .navbar, .footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #333;
            padding: 5px 10px; /* Reduced padding for the navbar */
        }
        .navbar a, .footer a {
            color: white;
            text-decoration: none;
            padding: 10px 15px; /* Reduced padding for the navbar links */
            display: block;
        }
        .navbar a:hover, .footer a:hover {
            background-color: #575757;
        }
        .dropdown {
            position: relative;
            display: inline-block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
        .dropdown:hover .dropbtn {
            background-color: #575757;
        }
        .container {
            padding: 20px;
        }
        .header {
            background-color: #333;
            color: white;
            padding: 10px 20px;
            text-align: center;
        }
        .carousel-container {
            width: 100vw; /* Full width */
            overflow: hidden;
            position: relative;
            left: 50%;
            right: 50%;
            margin-left: -50vw;
            margin-right: -50vw;
        }
        .carousel-inner {
            max-height: 500px; /* Adjust the max-height to your desired height */
        }
        .carousel-item img {
            width: 100vw; /* Adjust the width to full viewport width */
            height: auto;
            max-height: 500px; /* Adjust the max-height to your desired height */
            object-fit: cover;
        }
        .car-grid {
            width: 100vw;
            overflow: hidden;
            position: relative;
            left: 50%;
            right: 50%;
            margin-left: -50vw;
            margin-right: -50vw;
            display: flex;
        }
        .car-grid-item {
            margin: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            overflow: hidden;
            width: 300px; /* Adjust the width as needed */
        }
        .car-grid-item img {
            width: 100%;
            height: 150px; /* Adjust the height as needed */
            object-fit: cover;
        }
        .car-grid-item a {
            text-decoration: none;
            color: #333;
            display: block;
            text-align: center;
        }
        .car-grid-item h5 {
            margin: 10px;
        }
        h2 {
            color: #333;
        }
        h3 {
            color: #666;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        ul li {
            background-color: #f4f4f4;
            margin: 10px 0;
            padding: 10px;
            border-left: 5px solid #333;
        }
        .footer p {
            color: white;
            margin: 10px 0;
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Car Showroom Management System</h1>
    </div>

    <div class="navbar">
        <div class="dropdown">
            <a href="javascript:void(0)" class="dropbtn">Cars</a>
            <div class="dropdown-content">
                <a href="AddCar.jsf">Add Cars</a>
                <a href="viewallcars.jsf">View Cars</a>
            </div>
        </div>
        <a href="empadd.jsf">Employees</a>
        <a href="Records.jsp">Records</a>
        <a href="Sales.jsp">Sales</a>
        <div class="dropdown">
            <a href="javascript:void(0)" class="dropbtn">Admin</a>
            <div class="dropdown-content">
                <a href="adminlogin.jsf">Logout</a>
            </div>
        </div>
    </div>

    <div class="container">
        <center><h1>Welcome to CarShowRoom</h1></center>
        <div class="carousel-container">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://www.rolls-roycemotorcars.com/content/dam/rrmc/marketUK/rollsroycemotorcars_com/black-badge-ghost-2021/page-components/BB_RR21_HERO_D.jpg/jcr:content/renditions/cq5dam.web.1920.webp" class="d-block w-100" alt="Car 1">
                    </div>
                    <div class="carousel-item">
                        <img src="https://wallpapersmug.com/download/1920x1080/a56fb5/rolls-royce-wraith-luminary-collection-luxrious-2018-4k.jpeg" class="d-block w-100" alt="Car 2">
                    </div>
                    <div class="carousel-item">
                        <img src="https://s1.1zoom.me/big7/745/Rolls-Royce_Wraith_482557.jpg" class="d-block w-100" alt="Car 3">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        
        <br>
        <br>
        <center><h1>Different types of Cars</h1></center>
        <!-- Car Grid Section -->
        <div class="car-grid">
            <div class="car-grid-item">
                <a href="https://www.google.com/search?q=Rolls+Royce+Wraith" target="_blank">
                    <img src="https://w0.peakpx.com/wallpaper/888/484/HD-wallpaper-rolls-royce-wraith.jpg" alt="Rolls Royce Wraith">
                    <h5>Rolls Royce Wraith</h5>
                </a>
            </div>
            <div class="car-grid-item">
                <a href="https://www.google.com/search?q=Rolls+Royce+Ghost" target="_blank">
                    <img src="https://w0.peakpx.com/wallpaper/586/108/HD-wallpaper-rolls-royce-ghost-2020-4.jpg" alt="Rolls Royce Ghost">
                    <h5>Rolls Royce Ghost</h5>
                </a>
            </div>
            <div class="car-grid-item">
                <a href="https://www.google.com/search?q=Rolls+Royce+Phantom" target="_blank">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFUebwGEFKWY9SmeETFXkRj9hWk-Ym1TI9s2AmvV0ct1LCTnpU-kS2-aR-QgVIX8eWMhw&usqp=CAU" alt="Rolls Royce Phantom">
                    <h5>Rolls Royce Phantom</h5>
                </a>
            </div>
            <div class="car-grid-item">
                <a href="https://www.cardekho.com/volvo/xc-90#leadForm" target="_blank">
                    <img src="https://d2m3nfprmhqjvd.cloudfront.net/blog/20221216165227/Volvo-XC90-1160x653.webp" alt="Volvo XC90">
                    <h5>Volvo XC90</h5>
                </a>
            </div>
            <div class="car-grid-item">
                <a href="https://www.cardekho.com/carmodels/Toyota/Toyota_Fortuner" target="_blank">
                    <img src="https://cdn.motor1.com/images/mgl/02EE3/s3/toyota-fortuner-gr-sport-indonesia.jpg" alt="Toyota Fortuner">
                    <h5>Toyota Fortuner</h5>
                </a>
            </div>
            <div class="car-grid-item">
                <a href="https://www.cardekho.com/toyota/innova-crysta" target="_blank">
                    <img src="https://stimg.cardekho.com/images/carexteriorimages/930x620/Toyota/Innova-Crysta/9612/1680599962805/front-view-118.jpg?impolicy=resize&imwidth=420" alt="Toyota Innova Crysta">
                    <h5>Toyota Innova Crysta</h5>
                </a>
            </div>
            
            <!-- Add more car grid items as needed -->
        </div>

        <div class="sales-graph">
            <h3>Sales Graph</h3>
        </div>
    </div>

    <div class="footer">
        <div>
            <a href="#privacy">Privacy Policy</a>
            <a href="#terms">Terms of Service</a>
            <a href="#contact">Contact Us</a>
        </div>
        <p>&copy; 2024 Car Showroom Management System</p>
        <p>Our system provides comprehensive management solutions for car showrooms, ensuring smooth operations and efficient record-keeping. Manage your inventory, employees, and sales records all in one place.</p>
    </div>
    
    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
