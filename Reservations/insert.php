<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";

$ssn = $_POST['ssn'];
$id = $_POST['id'];
$dt = $_POST['dt'];
$payment = $_POST['payment'];
$room = $_POST['room'];

$sql_statement = "INSERT INTO reservations(ssn, voyageId, reservationDate, paymentMethod, roomType) VALUES ('$ssn','$id', '$dt', '$payment', '$room')";
$result = mysqli_query($db, $sql_statement);
if($result != 1){
    include 'fail.html';
}

else{
    include 'success.html';
}
?>

