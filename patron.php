<!DOCTYPE html>
<html>

<head>
    <title>Patron Information</title>
</head>

<body>
    <center>
        <?php
        $servername = "localhost";
        $username = "root";
        $password = "Project7273@";
        $db = "Library";

        // get the post records
        $patronID = $_REQUEST['patronID'];


        // Create connection
        $conn = new mysqli($servername, $username, $password, $db);


        // Check connection
        if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
        }
?>


<?php

$query = mysqli_query($conn, "Select distinct(patronID) from Transactions where Checked='borrow'")
   or die (mysqli_error($conn));

echo "<h3>Number of patrons checked out</h3> ";
    $rowcount = mysqli_num_rows( $query );

    // Display result
    printf("Total rows in this table :  %d\n", $rowcount);
	
?>


    </center>
</body>

</html>



