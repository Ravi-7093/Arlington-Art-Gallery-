<?php

$user = 'root';
$pass = '';
$db = 'art_gallery';

$conn = new mysqli('localhost',$user,$pass,$db) or die("not connected");
if($conn)
    $query = "SELECT * FROM `CUSTOMER` WHERE stateAb = 'TX';";
    $result = mysqli_query($conn,$query);
    $states = mysqli_fetch_all($result,MYSQLI_ASSOC);
?>

<!DOCTYPE html>
<html>
<title>
    <head>fetched data from database</head>
    </title>
    <style>
#cust {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#cust td, #cust th {
  border: 1px solid black;
  padding: 8px;
}

#cust tr:nth-child(even){background-color: #f2f2f2;}

#custtr:hover {background-color:  #3385ff;}

#cust th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color:  #3385ff;
  color: white;
}
</style>
    <body>
    <table id="cust">
    <tr>
    <th>Customer Id</th>
    <th>Customer Name</th> 
    <th>Street Adress</th>
    <th>City</th>
    <th>State Code</th> 
    <th>Zipcode</th>
  </tr>
        <tr>
        <?php foreach($states as $state){?>
        <td><?php echo htmlspecialchars($state['cID']); ?></td>
        <td><?php echo htmlspecialchars($state['name']); ?></td> 
        <td><?php echo htmlspecialchars($state['street']); ?></td>
        <td><?php echo htmlspecialchars($state['city']); ?></td>
        <td><?php echo htmlspecialchars($state['stateAb']); ?></td> 
        <td><?php echo htmlspecialchars($state['zipcode']); ?></td>
        </tr>
        <?php } ?>
        </table>
        
    </body>
</html>