<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "assignment2";

/* Create connection */
$conn = new mysqli($servername, $username, $password, $dbname);

/* Check connection */
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

/* SQL to retrieve data */
$sql = "SELECT * FROM person";
$result = $conn->query($sql);

if ($result->num_rows > 0) {

    echo "<h2>Registered People</h2>";

    while ($row = $result->fetch_assoc()) {

        echo "<hr>";
        echo "Entry No: " . $row['id'] . "<br>";
        echo "Name: " . $row['first_name'] . " " . $row['last_name'] . "<br>";
        echo "Email: " . $row['email'] . "<br>";
        echo "Gender: " . $row['gender'] . "<br>";
        echo "Favourite Food: " . $row['favourite_food'] . "<br>";
        echo "Favourite Quote: " . $row['textarea'] . "<br>";
        echo "Education: " . $row['education'] . "<br>";
        echo "Favourite Time: " . $row['favourite_time'] . "<br>";
    }

} else {
    echo "0 results";
}

$conn->close();

?>