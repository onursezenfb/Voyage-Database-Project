<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";



$id = $_POST['id'];
$exp = $_POST['exp'];
$type = $_POST['type'];


$sql_statement = "INSERT INTO servant(employeeId, YearsOfExperience, servantType) VALUES ('$id', '$exp', '$type')";
$sql_statement2 = "INSERT INTO employee(employeeId, YearsOfExperience) VALUES ('$id', '$exp')";

$result = mysqli_query($db, $sql_statement);
$result2 = mysqli_query($db, $sql_statement2);

if($result != 1){
    include 'fail.html';
}

else{
    include 'success.html';
}
?>

