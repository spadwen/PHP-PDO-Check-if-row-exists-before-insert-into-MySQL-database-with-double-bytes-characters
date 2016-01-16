<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Record Form</title>
</head>
<body>

<?php 
/**
 * 
 * @Author : DavidWen.net; 
 * @Date : Sunday Jan 16 10:17:17 2016;
 * @Filename sxm.php;
 * @URL: davidwen.net
 */
    $host = 'hostName';
    $dbname = 'databaseName';
    $username = 'userName';
    $password = 'passWord';

// Escape user inputs for security

$cn_name = ($_POST['cn_name']);
$en_name = ($_POST['en_name']);
$cn_address = ($_POST['cn_address']);
$en_address = ($_POST['en_address']);
$cn_city = ($_POST['cn_city']);



try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password, array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'));
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	
	$stmt = $conn->prepare("SELECT count(*) from members where en_name =:en_name");
    $stmt->bindParam(":en_name", $en_name);
    $stmt->execute();
    $row = $stmt->fetch(PDO::FETCH_NUM);

 if (empty($cn_name) || empty($en_name) || empty($cn_address) || empty($en_address) || empty($cn_city))
    {echo "Please complete all fields"; }

else if(!(empty($cn_name) || empty($en_name) || empty($cn_address) || empty($en_address) || empty($cn_city)) && $row[0]==0)
    { $sql = "INSERT INTO members (cn_name, en_name, cn_address, en_address, cn_city)
              VALUES ('$cn_name', '$en_name', '$cn_address', '$en_address', '$cn_city')";

    $conn->exec($sql);
    echo "New record created successfully";
     }
	
	else if ($row[0]>0){ 
	echo "This name ".$en_name. " exists! Row=" .$row[0];
	    }
	}
    catch(PDOException $e)
    {
    echo $stmt . "<br>" . $e->getMessage();
    }
    $conn = null;
 
 ?>
 </body>

</html>