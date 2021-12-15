<!DOCTYPE html>
<html>

<head>
    <title>Insert Page page</title>
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
        // Create connection
        $conn = new mysqli($servername, $username, $password, $db);


        // Check connection
        if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
        }

        $sql = "INSERT INTO Books  VALUES ('$BookName',
            '$Author','$ISBN','$yearPublished','$BookFormat','$Genre','$Pages','$Autorenew')";

        if(mysqli_query($conn, $sql)){
            echo "<h3>Data is stored in the database successfully."
                . " Please browse through the table"
                . " to view the updated data</h3>";
				
            echo nl2br("\nTitle:$BookName\n Author:$Author\n "
                . "ISBN:$ISBN\n Published year:$yearPublished\n Format:$BookFormat\n Genre:$Genre\n Pages:$Pages\n Autorenew:$Autorenew");
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
