<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";


$id = $_POST['id'];
$sql_statement = "DELETE FROM employee WHERE employeeId = $id";
$sql_statement2 = "DELETE FROM servant WHERE servantId = $id";
$sql_statement3 = "DELETE FROM technician WHERE technicianId = $id";

mysqli_query($db, $sql_statement2);
mysqli_query($db, $sql_statement3);
$result = mysqli_query($db, $sql_statement);


if($result == 1){
    if(mysqli_affected_rows($db) >= 1){
        include 'success.html';
    }
    else{
        include 'no_record.html';
    }
}
else{
    include 'fail.html';
}

?>
