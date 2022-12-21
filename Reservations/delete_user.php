<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?

$ssn = $_POST['ssn'];
$id = $_POST['id'];
$sql_statement = "DELETE FROM reservations WHERE ssn = $ssn AND voyageId = $id";
$result = mysqli_query($db, $sql_statement);

if($result == 1){
    if(mysqli_affected_rows($db) >= 1){
        include 'success_user.html';
    }
    else{
        include 'no_record_user.html';
    }
}
else{
    include 'fail_user.html';
}

?>
