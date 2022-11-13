<?php

include "/Applications/XAMPP/xamppfiles/htdocs/Voyage/config.php";
// ids ne?
if(!empty($_POST['gender']))
{
    $gender = $_POST['gender'];

    $sql_statement = "SELECT * FROM passengers WHERE gender = '$gender'";

    $result = mysqli_query($db, $sql_statement);

    while($row = mysqli_fetch_assoc($result)) { // Iterating the result
        $ssn = $row['ssn'];
        $pname = $row['pname'];
        $gender = $row['gender'];
        $age = $row['age'];
        echo $ssn . " " . $pname . " " . $gender . " " . $age . "<br>";
    }
}
else{
    echo "You didn't enter any gender!";
}
?>
