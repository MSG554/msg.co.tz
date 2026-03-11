<?php
$conn=new mysqli("localhost","root","","student_db");
$fullname=$_POST['fullname'];
$email=$_POST['email'];
$password=$_POST['sex'];

$password=$_POST['comment'];
$password=$_POST['password'];

$sql="INSERT INTO students (fullname,email,password)
VALUES('$fullname','$email','$password')";

$conn->query($sql);
echo"Data inserted successfully";
?>