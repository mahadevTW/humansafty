<?php
if(isset($_POST['submit'])){
// Fetching variables of the form which travels in URL

$id = $_POST['id'];
echo $id;
if($id !='')
{
    
//  To redirect form on a particular page
header("Location:HeartRate.php");
}
else{
?><span><?php echo "Please fill all fields.....!!!!!!!!!!!!";?></span> <?php
}
}
?>