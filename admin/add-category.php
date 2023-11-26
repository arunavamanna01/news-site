<?php include "header.php"; ?>
  <div id="admin-content">
      <div class="container">
          <div class="row">
              <div class="col-md-12">
                  <h1 class="admin-heading">Add New Category</h1>
              </div>
              <div class="col-md-offset-3 col-md-6">
                <?php
                if(isset($_POST['save'])){
              include "config.php";

                $Category =mysqli_real_escape_string($conn, $_POST['cat']);
                $sql = "SELECT category_name FROM category WHERE category_name ='{$Category}'";
                $result = mysqli_query($conn,$sql) or dai("quary failed :");
                if(mysqli_num_rows($result)>0){
                    echo "<p>Category already Exists.</p>";
                }else{
                    $sql1 ="INSERT INTO category (category_name)
                            VALUES('{$Category}')";
                            if(mysqli_query($conn,$sql1)){
                                header("location: http://localhost/news-site/admin/category.php");
                            };    
                };
            };
            
                    ?>
                  <!-- Form Start -->
                  <form action="<?php $_SERVER['PHP_SELF'];?>" method="POST" autocomplete="off">
                      <div class="form-group">
                          <label>Category Name</label>
                          <input type="text" name="cat" class="form-control" placeholder="Category Name" required>
                      </div>
                      <input type="submit" name="save" class="btn btn-primary" value="Save" required />
                  </form>
                  <!-- /Form End -->
              </div>
          </div>
      </div>
  </div>
<?php include "footer.php"; ?>
