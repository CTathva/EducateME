<?php
              $con = mysqli_connect("localhost","root","","educateme") or die("Connection Failed");
              $sql = "SELECT name,image,website,role,linkedin,instagram,facebook,twitter from educators";
              $result = $con-> query($sql);
              

              if($result-> num_rows >0){
                while($row = $result-> fetch_assoc()){

                    echo '<img src="<?php echo $row['image'];?>" alt=" " height="75" width="75">';

                 
                }
                

              }
              else{
                echo "No Result";
              }
              $con->close();
              ?>