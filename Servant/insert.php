<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";



$id = $_POST['id'];
$exp = $_POST['exp'];
$type = $_POST['type'];


$sql_statement = "INSERT INTO servant(servantId, YearsOfExperience, servantType) VALUES ('$id', '$exp', '$type')";
$sql_statement2 = "INSERT INTO employee(employeeId, YearsOfExperience) VALUES ('$id', '$exp')";

$result2 = mysqli_query($db, $sql_statement2);
$result = mysqli_query($db, $sql_statement);


if($result2 != 1){
    include 'fail.html';
}

else{
    if($result == 1){
        include 'success.html';
    }
    else{
        include 'fail.html';
    }
    
}
?>

