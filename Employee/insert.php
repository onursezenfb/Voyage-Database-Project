<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";



$id = $_POST['id'];
$exp = $_POST['exp'];

$sql_statement = "INSERT INTO employee(employeeId, yearsOfExperience) VALUES ('$id', '$exp')";

$result = mysqli_query($db, $sql_statement);
if($result != 1){
    include 'fail.html';
}

else{
    include 'success.html';
}
?>

