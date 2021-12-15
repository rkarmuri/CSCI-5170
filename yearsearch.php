<!DOCTYPE html>
<html>

<head>
    <title>Book information</title>
</head>

<body>
    <center>
        <?php
        $servername = "localhost";
        $username = "root";
        $password = "Project7273@";
        $db = "Library";

        // get the post records
        $BookName = $_REQUEST['BookName'];
        $Author = $_REQUEST['Author'];
        $ISBN = $_REQUEST['ISBN'];
        $yearPublished = $_REQUEST['yearPublished'];
        $BookFormat = $_REQUEST['BookFormat'];
        $Genre = $_REQUEST['Genre'];
        $Pages = $_REQUEST['Pages'];
        $Autorenew = $_REQUEST['Autorenew'];
        $search = $_REQUEST['search'];

        // Create connection
        $conn = new mysqli($servername, $username, $password, $db);


        // Check connection
        if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
        }
?>


<?php

$query = mysqli_query($conn, "SELECT distinct(ISBN) FROM Books where yearPublished like '%$search%'")
   or die (mysqli_error($conn));

echo "<h3>Number of books published</h3> ";
    $rowcount = mysqli_num_rows( $query );

    // Display result
    printf("%d\n", $rowcount);

?>


</center>
</body>

</html>
