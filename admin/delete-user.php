<?php
include "config.php";
if($_SESSION["user_role"] == 0){

    header("location: http://localhost/news-site/admin/post.php");
  }
$user_id =$_GET['id'];

$sql = "DELETE FROM user WHERE user_id ={$user_id}";

if(mysqli_query($conn,$sql)){
    header("location: http://localhost/news-site/admin/users.php");
}else{
    echo "<p>can't Delete the user record</p>";
}

mysqli_close($conn);



?>