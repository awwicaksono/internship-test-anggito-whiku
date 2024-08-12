<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Suitmedia</title>
    <link rel="stylesheet" href="asset/css/index.css">
</head>
<body>

<header>
        <div class="container">
            <div class="logo">
                <img src="asset/image/suitmedialogo.png" alt="Logo Suitmedia">
            </div>
            <nav>
                <ul>
                    <li><a href="#">Work</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#" class="active">Ideas</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <div class="banner">
        <div class="overlay"></div>
        <img src="asset/image/idea.jpg" alt="Banner Image">
        <div class="banner-content">
            <h1>Ideas</h1>
            <h2>Where All Our Great Things Begin</h2>
        </div>
    </div>


    <div class="sort-container">
        <label for="items-per-page">Show per page:</label>
        <select id="items-per-page">
            <option value="10">10</option>
            <option value="20">20</option>
            <option value="50">50</option>
        </select>

        <label for="date-filter">Sort by:</label>
            <select id="date-filter">
                <option value="newest">Newest</option>
                <option value="latest">Latest</option>
            </select>
    </div>



    <div class="card-container">
        
    </div>

    <div class="pagination-container">
        <button id="prev-page" disabled>Previous</button>
        <span id="page-info">Page 1</span>
        <button id="next-page">Next</button>
    </div>

    <script src="asset/js/script.js"></script>
    <script src="asset/js/header.js"></script>
    
</body>
</html>