<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?

$rating = $_POST['rating'];
$rating2 = $_POST['rating2'];
$sql_statement = "SELECT * FROM captain WHERE captainRating >= '$rating' AND captainRating <= '$rating2'";
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
