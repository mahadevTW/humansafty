<!DOCTYPE html>
<html>
<head>
<title>Redirect Form To a Particular Page On Submit - Demo Preview</title>
<meta content="noindex, nofollow" name="robots">
<link href='css/redirect_form.css' rel='stylesheet' type='text/css'> <!--== Include CSS File Here ==-->
</head>
<body>
<div class="main">
<div class="first">
<h2>Heath care record by Id</h2>
<form action="HeartRate.php" id="#form" method="post" name="#form">
<label>Name :</label>
<input id="id" name="id" placeholder='Enter Id' type=number>
<input id='btn' name="submit" type='submit' value='Submit'>
<!---- Including PHP File Here ---->
<?php
include "redirect.php";
?>
</form>
</div>
</div>
</body>
</html>