<?php
$state_Ab = filter_input(INPUT_POST,'stateAb');
$state_Name = filter_input(INPUT_POST,'stateName');
    $user = 'root';
     $pass = '';
     $db = 'art_gallery';

     $conn = new mysqli('localhost',$user,$pass,$db) or die("not connected");       
     if($conn){
         $data = "update STATE set StateAb = '$state_Ab' where stateName = '$state_Name';";
         $result = mysqli_query($conn,$data);
         echo "State Details is Updated Successfully";
         
     }
?>
