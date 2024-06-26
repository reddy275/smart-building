
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="assets/img/png-clipart-building-logo-building-building-text-thumbnail-removebg-preview.png" type="image/png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Building Facades </title>
    <style>
        /* Style for the dashboard container */
        .dashboard {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        /* Style for the navigation bar */
        .navbar {
            background-color: #333;
            color: #fff;
            padding: 10px 0;
            text-align: center;
        }

        /* Style for navigation links */
        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 20px;
        }

        /* Style for building facades */
        .facade {
            width: 100%;
            background-color: white;
            border: 1px solid white;
            margin: 10px;
            padding: 10px;
            display: flex;
            flex-direction: column;
            align-items: left ;
            cursor: pointer;
        }

        /* Style for images within facades */
        .facade img {
            max-width: 100%;
            height: auto;
        }

        /* Style for the dropdown button */
        .dropdown-button {
            margin-top: 10px;
            background-color: #f1f1f1;
            color: #333;
            padding: 5px 10px;
            border: 1px solid #999;
            border-radius: 5px;
            cursor: pointer;
        }

        /* Style for the hidden content */
        .content {
            display: none;
            padding: 10px;
            text-align: center;
        }

        /* Style for the details container */
        .details-container {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="dashboard.php">Home</a>
        <a href="login.php">Logout</a>
    </div>

    <div class="dashboard">
        <!-- Building facades -->
        <div class="facade">
           
           
                <h5> Dont’s:</br>

                    1.Leaving cooking appliances unattended.</br>
                    2.Using barbecue grills in or on any building or fire escape.</br>
                    3.Tamper with smoke detectors, carbon monoxide alarms, fire alarms or sprinkler systems.</h5></br>
               
            </div>
        </div>

        </div>

        </div>
    </div>

    <script>
        function showDetails(id) {
            var detailsContainer = document.getElementById(id + '-details');
            if (detailsContainer) {
                detailsContainer.style.display = 'block';
            }
        }
    </script>
</body>
</html>
