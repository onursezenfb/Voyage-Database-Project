<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="crew.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <style>
        
        html,
body {
	height: 100%;
}

body {
	margin: 0;
	background: linear-gradient(45deg, #4ca1af, #c4e0e5);
	font-family: Roboto, sans-serif;
	font-weight: 100;
}

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

table {
	width: 800px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.1);
}

th,
td {
	padding: 15px;
	background-color: rgba(255,255,255,0.2);
	color: #fff;
}

th{
	text-align: left;
}


h1{
    color: rgba(255,255,255);
}

    tr:hover{
        background-color: rgba(255,255,255,0.3);
    }
	td{
		position: relative;
    }
		td:hover:before {

				content: "";
				position: absolute;
				left: 0;
				right: 0;
				top: -9999px;
				bottom: -9999px;
				background-color: rgba(255,255,255,0.2);
				z-index: -1;
			}
	

    </style>
    
</head>
<body>
    <div class = "container">
        <h1> Crew Table </h1>
        <table class="Table">
        <thead style = "background-color: rgb(80,105,160)">
        <tr>
            <th> Crew ID </th>
            <th> Number of Employees </th>
            <th> Crew Rating </th>
            <th> Captain ID </th>
        </tr>
        </thead>
        <?php

            include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
            // ids ne?

            $rating = $_POST['rating'];
            $sql_statement = "SELECT * FROM crew WHERE crewRating >= $rating";
            $result = mysqli_query($db, $sql_statement);
            while($row = mysqli_fetch_assoc($result)) { // Iterating the result
                $crewid = $row['crewId'];
                $num = $row['numberOfEmployees'];
                $crating = $row['crewRating'];
                $captainId = $row['captainId'];
                echo "<tbody>" . "<tr>" . "<th>" . $crewid . "</th>". "<th>" . $num . "</th>". "<th>" . $crating . "</th>" . "<th>" . $captainId . "</th>" . "</tr>" . "</tbody>";
            }
        ?>
        </table>
        <div style = "display: flex; flex-direction: row; margin-top: 15px">
                    <a href = "http://localhost/Voyage-Database-Project/Main Page/main_page.html">
                        <input class = "pure-material-button-contained" style = "background-color: rgb(80,105,160); margin-bottom: 15px; margin-right: 5px;" type="submit" value="Return to Main Page">
                    </a>
                    <a href = "http://localhost/Voyage-Database-Project/Main Page/admin_panel.html">
                        <input class = "pure-material-button-contained" style = "background-color: rgb(80,105,160); margin-bottom: 15px; margin-left: 5px;" type="submit" value="Return to Admin Panel">
                    </a>
        </div>
    </div>
</body>
</html>