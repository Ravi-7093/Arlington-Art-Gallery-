<?php
$state_Ab = filter_input(INPUT_POST,'stateAb');
$state_Name = filter_input(INPUT_POST,'stateName');
     $user = 'root';
     $pass = '';
     $db = 'art_gallery';

     $conn = new mysqli('localhost',$user,$pass,$db) or die("not connected");       
     if($conn){
         $data = "Insert into state values('$state_Ab','$state_Name')";
         $result = mysqli_query($conn,$data);
         echo "State Details is Inserted Successfully";
         
     }
?>