<?php

$state_Name = filter_input(INPUT_POST,'stateName');
    $user = 'root';
     $pass = '';
     $db = 'art_gallery';

     $conn = new mysqli('localhost',$user,$pass,$db) or die("not connected");       
     if($conn){
         $data = "delete from STATE where stateName = '$state_Name'";
         $result = mysqli_query($conn,$data);
         echo "State Details is Deleted Successfully";
         
     }
?>