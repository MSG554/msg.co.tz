<?php
include "config.php";

if(isset($_POST['submit'])){

    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $gender = $_POST['gender'];
    $education = $_POST['education'];
    $time = $_POST['time'];
    $quote = $_POST['quote'];

    // Handle multiple checkbox
    if(isset($_POST['food'])){
        $favorite_food = implode(", ", $_POST['food']);
    } else {
        $favorite_food = "";
    }

    $stmt = $conn->prepare("INSERT INTO students 
        (first_name, last_name, gender, favorite_food, favorite_quote, education_level, favorite_time) 
        VALUES (?, ?, ?, ?, ?, ?, ?)");

    $stmt->bind_param("sssssss", 
        $first_name, 
        $last_name, 
        $gender, 
        $favorite_food, 
        $quote, 
        $education, 
        $time
    );

    if($stmt->execute()){
        echo "<h3>Data inserted successfully!</h3>";
        echo "<a href='index.php'>Go Back</a>";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}

$conn->close();
?>