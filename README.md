<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AMC Cinemas Clone - Movie Listings</title>
    <style>
        /* CSS styling for movie listings */
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
        }
        .movie-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        .movie {
            width: 200px;
            margin: 10px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 10px;
        }
        .movie img {
            width: 100%;
            border-radius: 5px;
        }
        .movie h3 {
            margin-top: 10px;
            font-size: 16px;
        }
        .movie p {
            font-size: 14px;
            color: #666666;
        }
    </style>
</head>
<body>
    <h1>AMC Cinemas Clone - Movie Listings</h1>
    <div class="movie-container">
        <div class="movie">
            <img src="movie1.jpg" alt="Movie 1">
            <h3>Movie 1</h3>
            <p>Action, Adventure</p>
            <p>PG-13</p>
        </div>
        <div class="movie">
            <img src="movie2.jpg" alt="Movie 2">
            <h3>Movie 2</h3>
            <p>Comedy</p>
            <p>PG</p>
   
