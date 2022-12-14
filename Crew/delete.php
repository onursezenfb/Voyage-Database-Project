<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?

$crewid = $_POST['crewid'];
$sql_statement = "DELETE FROM crew WHERE crewId = $crewid";
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
