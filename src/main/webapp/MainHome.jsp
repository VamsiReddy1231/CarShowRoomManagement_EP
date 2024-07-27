<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Home Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background-image:url('https://i.pinimg.com/736x/d0/74/07/d0740754707cd62a47c8c9593774625e.jpg');
        }

        .navbar {
            background-color: grey;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            float: left;
            display: block;
            color: black;
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

        .content {
            flex: 1;
            padding: 20px;
        }
       
        footer {
            background-color: grey;
            color: black;
            text-align: center;
            padding: 40px;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        footer p {
            margin: 0;
        }

        /* Carousel Styles */
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
            max-height: 505px; /* Adjust the max-height to your desired height */
        }
        .carousel-item img {
            width: 100vw; /* Adjust the width to full viewport width */
            height: auto;
            max-height: 505px; /* Adjust the max-height to your desired height */
            object-fit: cover;
        }
        /* Updated Styles */
.car-grid {
    width: 100vw;
    overflow: hidden;
    position: relative;
    left: 50%;
    right: 50%;
    margin-left: -50vw;
    margin-right: -50vw;
    display: flex;
    flex-wrap: wrap; /* Allows items to wrap onto the next line */
    justify-content: center; /* Centers items horizontally */
}

.car-grid-item {
    margin: 15px; /* Increase margin for spacing between items */
    border: 1px solid #ddd;
    border-radius: 5px;
    overflow: hidden;
    width: 300px; /* Adjust the width as needed */
    height: 200px; /* Increase height to accommodate more content */
}
.car-grid-item img {
    width: 100%;
    height: 150px; /* Adjust the height as needed */
    object-fit: cover;
}

.car-grid-item h5 {
    margin: 10px;
}
   .navbar .dropdown-menu {
            min-width: 100px;
        }
        
    </style>
</head>
<body>
    <div class="navbar">
        <a href="MainHome.jsp">Home</a>
        <a href="UserAbout.jsp">About</a>
        <a href="Records.jsp">Records</a>
        <a href="FeedBack.jsp">FeedBack</a>
        <a href="viewallcars.jsf">View Cars</a>
         <div class="ml-auto">
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Profile
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="customerlogin.jsf">Logout</a>
                </div>
            </div>
        </div>
    </div>
    <center><h1 style="color:white">Welcome to Carshowroom</h1></center>
    <div class="content">
        <div id="carouselExampleSlidesOnly" class="carousel slide carousel-container" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://wallpapers.com/images/featured/1920-x-1080-car-4sdj5tojfx747aly.jpg" class="d-block w-100" alt="Car 1">
                </div>
                <div class="carousel-item">
                    <img src="https://wallpapers.com/images/featured/4k-laptop-car-tchphr7vwuc9w59w.jpg" class="d-block w-100" alt="Car 2">
                </div>
                <div class="carousel-item">
                    <img src="https://wallpaperswide.com/download/best_car_hd_wallpaper-wallpaper-1920x1080.jpg" class="d-block w-100" alt="Car 3">
                </div>
            </div>
        </div>
    </div>
    <center><h1 style="color:white">Different Model Cars</h1></center>
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
            
            <div class="car-grid-item">
                <a href="https://www.carwale.com/tata-cars/harrier/" target="_blank">
                    <img src="https://w0.peakpx.com/wallpaper/800/920/HD-wallpaper-toyota-harrier-2020.jpg" alt="Toyota Harrier">
                    <h5>Toyota Harrier</h5>
                </a>
            </div>
            
            <div class="car-grid-item">
                <a href="https://www.carwale.com/mg-cars/hector/" target="_blank">
                    <img src="https://assets.gqindia.com/photos/5cdc04a7306c1c61f76e2b86/16:9/w_2560%2Cc_limit/top-image103.jpg" alt="MG Hector">
                    <h5>MG Hector</h5>
                </a>
            </div>
            
            
            <div class="car-grid-item">
                <a href="https://www.carwale.com/jaguar-cars/" target="_blank">
                    <img src="https://wallpapercave.com/wp/wp2803107.jpg" alt="Jaguar">
                    <h5>Jaguar</h5>
                </a>
            </div>
            
             <div class="car-grid-item">
                <a href="https://www.carwale.com/volkswagen-cars/" target="_blank">
                    <img src="https://i.pinimg.com/originals/9d/4e/d7/9d4ed7c00cdffaceb167466bd8b4fc77.jpg" alt="Vokswagan">
                    <h5>Vokswagan</h5>
                </a>
            </div>
            
            <div class="car-grid-item">
                <a href="https://www.carwale.com/hyundai-cars/creta/" target="_blank">
                    <img src="https://spn-sta.spinny.com/blog/20220228142605/ezgif.com-gif-maker-100-8.jpg?compress=true&quality=80&w=576&dpr=2.6" alt="Hyundai Creta">
                    <h5>Hyundai Creta</h5>
                </a>
            </div>
            
            <div class="car-grid-item">
                <a href="https://www.carwale.com/volkswagen-cars/" target="_blank">
                    <img src="https://uploads.audi-mediacenter.com/system/production/media/13182/images/9070439c87474570d36def53ac8e39936da1d928/PQ100050_web_2880.jpg?1698189734" alt="Audi">
                    <h5>Audi</h5>
                </a>
            </div>
            
            <!-- Add more car grid items as needed -->
            
        </div>
    
    <footer>
        <p>Showroom Name | Lucky car Showroom , Darsi, Prakasam,AP, 523247</p>
        <p>&copy; 2024 Showroom Name. All rights reserved.</p>
        <p>Contact:7865123467</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>