<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";
// ids ne?
$room = $_POST['room'];

$sql_statement = "SELECT * FROM reservations WHERE roomType = '$room'";

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
