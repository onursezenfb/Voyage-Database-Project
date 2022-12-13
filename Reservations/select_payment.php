<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?
$payment = $_POST['payment'];

$sql_statement = "SELECT * FROM reservations WHERE paymentMethod = '$payment'";

$result = mysqli_query($db, $sql_statement);

while($row = mysqli_fetch_assoc($result)) { // Iterating the result
    $ssn = $row['ssn'];
    $voyageId = $row['voyageId'];
    $dt = $row['reservationDate'];
    $payment = $row['paymentMethod'];
    $room = $row['roomType'];
    echo $ssn . " " . $voyageId . " " . $dt . " " . $payment . " " . $room . "<br>";
}

?>
