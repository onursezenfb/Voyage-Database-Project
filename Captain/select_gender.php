<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?
$gender = $_POST['gender'];

$sql_statement = "SELECT * FROM captain WHERE gender = '$gender'";

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
