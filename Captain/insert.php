<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";

$captainid = $_POST['captainid'];
$cname = $_POST['cname'];
$gender = $_POST['gender'];
$exp = $_POST['exp'];
$crating = $_POST['crating'];
$sql_statement = "INSERT INTO captain(captainId, name, yearsOfExperience, captainRating, gender) VALUES ('$captainid','$cname', $exp, $crating, '$gender')";

$result = mysqli_query($db, $sql_statement);
if($result != 1){
    include 'fail.html';
}

else{
    include 'success.html';
}
?>

