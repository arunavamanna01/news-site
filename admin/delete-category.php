<?php

include "config.php";
if($_SESSION["user_role"] == 0){

    header("location: http://localhost/news-site/admin/post.php");
  }
$category_id =$_GET['id'];

$sql = "DELETE FROM category WHERE category_id ={$category_id}";
if(mysqli_query($conn,$sql)){
    header("location: http://localhost/news-site/admin/category.php");
}else{
    echo "<p>can't Delete the user record</p>";
}

mysqli_close($conn);








?>