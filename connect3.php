<!DOCTYPE html>
<html>

<head>
    <title>Insert employee data</title>
</head>

<body>
    <center>
        <?php
        $servername = "localhost";
        $username = "root";
        $password = "Project7273@";
        $db = "Library";

        // get the post records
        $transID = $_REQUEST['transID'];
        $patronID = $_REQUEST['patronID'];
        $empID = $_REQUEST['empID'];
        $ISBN = $_REQUEST['ISBN'];
        $Checked = $_REQUEST['Checked'];
        // Create connection
        $conn = new mysqli($servername, $username, $password, $db);


        // Check connection
        if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
        }

        $sql = "INSERT INTO Transactions VALUES ('$transID',
            '$ISBN','$patronID','$empID','$Checked')";

        if(mysqli_query($conn, $sql)){
            echo "<h3>Data is stored in our database successfully."
                . " Please browse your php my admin"
                . " to view the updated data</h3>";

            echo nl2br("\nTransaction ID:$transID\n ISBN:$ISBN\n Patron ID:$patronID\n Employee ID:$empID\n "
                . "Borrowed status:$Checked");
				        } else{
            echo "ERROR: Hush! Sorry $sql. "
                . mysqli_error($conn);
        }

        // Close connection
        mysqli_close($conn);
        ?>
    </center>
</body>

</html>


