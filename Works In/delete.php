<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?

$eid = $_POST['eid'];
$cid = $_POST['cid'];
$sql_statement = "DELETE FROM Works_In WHERE employeeId = $eid AND crewId = $cid";

$result = mysqli_query($db, $sql_statement);

if($result == 1){
    if(mysqli_affected_rows($db) >= 1){
        $db->query("UPDATE crew SET numberOfEmployees = numberOfEmployees - 1 WHERE crewId = '$cid'");
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
