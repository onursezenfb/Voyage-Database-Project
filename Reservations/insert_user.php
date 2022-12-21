<?php

include "/Applications/XAMPP/htdocs/Voyage-Database-Project/config.php";


$ssn = $_POST['ssn'];
$id = $_POST['id'];
$dt = $_POST['dt'];
$payment = $_POST['payment'];
$room = $_POST['room'];
$pname = $_POST['pname'];
$gender = $_POST['gender'];
$age = $_POST['age'];



$sql_statement = "INSERT INTO reservations(ssn, voyageId, reservationDate, paymentMethod, roomType) VALUES ('$ssn','$id', '$dt', '$payment', '$room')";
$result = mysqli_query($db, $sql_statement);

$result3 = $db->query("SELECT COUNT(*) FROM passengers WHERE ssn = '$ssn'");
$num = $result3->fetch_row();

if($result != 1){
    include 'fail_user.html';
}

else{
    $result2 = 1;
    if($num[0] == 0){
        $sql_statement2 = "INSERT INTO passengers(ssn, pname, gender, age) VALUES ($ssn,'$pname','$gender',$age)";

        $result2 = mysqli_query($db, $sql_statement2);
    }
    
    if($result2 == 1){
        include 'success_user.html';
    }
    else{
        include 'fail_user.html';
    }
}
?>

