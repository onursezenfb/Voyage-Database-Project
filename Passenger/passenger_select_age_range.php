<?php

include "/Applications/XAMPP/xamppfiles/htdocs/Voyage/config.php";
// ids ne?
if(!empty($_POST['age']) && !empty($_POST['age2'] ))
{
    $age = $_POST['age'];
    $age2 = $_POST['age2'];
    $sql_statement = "SELECT * FROM passengers WHERE age >= $age AND age <= $age2";
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
    echo "You didn't enter any age!";
}
?>
