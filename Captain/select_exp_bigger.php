<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?

$age = $_POST['exp'];
$sql_statement = "SELECT * FROM passengers WHERE yearsOfExperience >= $exp";
$result = mysqli_query($db, $sql_statement);
while($row = mysqli_fetch_assoc($result)) { // Iterating the result
    $captainid = $row['captainId'];
    $cname = $row['name'];
    $exp = $row['yearsOfExperience'];
    $gender = $row['gender'];
    $rating = $row['captainRating'];
    echo $captainid . " " . $cname . " " . $exp . " " . $gender . " " . $rating . "<br>";
}

?>
