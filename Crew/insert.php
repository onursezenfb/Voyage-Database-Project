<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";



$captainid = $_POST['captainid'];
$crewid = $_POST['crewid'];

$result2 = $db->query("SELECT COUNT(*) FROM Works_In WHERE crewId = '$crewid'");
$num = $result2->fetch_row();

$crating = $_POST['crating'];
$sql_statement = "INSERT INTO crew(crewId, numberOfEmployees, crewRating, captainId) VALUES ('$crewid','$num[0]','$crating','$captainid')";

$result = mysqli_query($db, $sql_statement);
if($result == 1){
    include 'success.html';
}

else{
    include 'fail.html';
}
?>

