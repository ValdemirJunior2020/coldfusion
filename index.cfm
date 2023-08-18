<cfset imgSrc1 = "" />
<cfset imgSrc2 = "" />

<cfif structKeyExists(FORM, "reloadImages")>
    <cfhttp url="https://dog.ceo/api/breeds/image/random/2" method="get">
    </cfhttp>
    <cfset imagesData = deserializeJSON(cfhttp.FILECONTENT)>
    <cfset imgSrc1 = imagesData.message[1]>
    <cfset imgSrc2 = imagesData.message[2]>
</cfif>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="./styles.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Cards</title>
    <style>
    .button-container {
    text-align: center;
    margin-bottom: 20px; 
    }
    .btn {
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;/* Add some space below the button */
  }
    .navbar-nav .nav-link {
        font-weight: bold;
    }

        .navbar {
            background-color: #f8f9fa; /* Set the navbar background color */
            position: sticky; /* Keep the navbar visible while scrolling */
            top: 0; /* Position the navbar at the top of the viewport */
            z-index: 1000; /* Ensure the navbar is on top of other elements */
        }
        .card {
            margin-bottom: 20px; /* Add some spacing between cards */
        }
    </style>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your external CSS file -->
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-warning">
    <div class="container">
        <img src="./brand-image.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
        <a class="navbar-brand" href="#">Made for HotelPlanner </a>
        
        
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="https://boisterous-cobbler-648a2c.netlify.app/">My Portfolio"Resume Included"</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="https://booking-pi-nine.vercel.app/">Booking Project</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<cfoutput>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="card" id="card1">
                    <div class="card-image">
                        <img src="#imgSrc1#" alt="Card Image 1" id="image1">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Dog Api</h5>
                        <p class="card-text">This Dog Api was made using CF,JS,HTML,bootStrap cards from https://apilist.fun</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card" id="card2">
                    <div class="card-image">
                        <img src="#imgSrc2#" alt="Card Image 2" id="image2">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Dog Api</h5>
                        <p class="card-text">This Dog Api was made using CF,JS,HTML,bootStrap cards from https://apilist.fun</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</cfoutput>
<div class="container">
    <!-- Your existing content here, including navigation bar if any -->
    
    <div class="custom-button-container">
        <form method="post">
            <input type="hidden" name="reloadImages" value="true">
            <button type="submit" class="custom-btn btn-primary">Reload Both Images</button>
        </form>
    </div>

<!-- Add a flexible horizontal line (divider) here -->
<hr class="my-4  mx-auto">
<p>adding </p>
<!-- Add a flexible horizontal line (divider) here -->
<hr class="my-4 w-100 mx-auto">

<!-- Container for the certificate images -->
<div class="container text-center">
    <h2>Certificates</h2>
    <div class="row">
        <div class="col-md-6 mx-auto">
            <img src="./bethel.jpg" alt="Certificate 1" class="img-fluid certificate-img">
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 mx-auto">
            <img src="./udemy.jpg" alt="Certificate 2" class="img-fluid certificate-img">
        </div>
    </div>
</div>


<script>
    function reloadImage(imageId, cardId) {
        fetch("https://dog.ceo/api/breeds/image/random")
            .then(response => response.json())
            .then(data => {
                const imgSrc = data.message;
                document.getElementById(imageId).src = imgSrc; // Update the src attribute
                document.getElementById(cardId).style.display = "block";
            })
            .catch(error => {
                console.error("Error fetching image:", error);
            });
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36
