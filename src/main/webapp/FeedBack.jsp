<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url('https://images.pexels.com/photos/120049/pexels-photo-120049.jpeg?cs=srgb&dl=pexels-mikebirdy-120049.jpg&fm=jpg'); /* Replace with your image URL */
            background-size: cover;
            background-attachment: fixed;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent dark background for better readability */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
            text-align: center;
        }
        .form-container h2 {
            margin-bottom: 20px;
            color: #fff; /* White text color for contrast */
        }
        .form-container input, .form-container textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            background-color: #fff; /* Ensure form elements have a white background */
        }
        .form-container button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        .form-container button:hover {
            background-color: #0056b3;
        }
        .message {
            display: none;
            margin-top: 20px;
            font-size: 16px;
            color: #00f; /* Blue color for the message */
        }
    </style>
    <script>
        function handleSubmit(event) {
            event.preventDefault(); // Prevent form submission

            // Show the success message
            document.querySelector('.message').style.display = 'block';

            // Optionally, reset the form
            event.target.reset();
        }
    </script>
</head>
<body>
    <div class="form-container">
        <h2>Feedback Form</h2>
        <form onsubmit="handleSubmit(event)">
            <input type="text" name="username" placeholder="Username" required>
            <input type="email" name="email" placeholder="Email" required>
            <textarea name="feedback" rows="4" placeholder="Your Feedback" required></textarea>
            <button type="submit">Submit</button>
        </form>
        <div class="message">The feedback is successfully submitted</div>
    </div>
</body>
</html>
