<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Upload Page</title>
    <style>
        body {
            background-image: url("images/swiss.jpg");
            background-size: cover;
            background-position: center;
            min-height: 100vh;
            /* Set the minimum height to 100% of the viewport height */
            padding: 2em;
            overflow: hidden;
        }

        h1 {
            text-align: center;
            font-size: 4em;
            color: white;
            margin-top: 20%;
        }

        .button {
            display: inline-block;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            margin-top: 2em;
        }

        .button:hover {
            background-color: #3e8e41;
            color: skyblue;
        }
    </style>
</head>

<body>
    <h1>Upload</h1>
    <div style="text-align: center;">
        <a href="http://localhost/example/" class="button">Upload Now</a>
    </div>
</body>

</html>