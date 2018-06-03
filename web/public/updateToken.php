<?php

include 'DatabaseConfig.php' ;
 
 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
 
 
            $id=$_POST['id'];
			$token=$_POST['token'];
			

 $Sql_Query="update login_register SET token = '$token' WHERE id = '$id'";

  
 // json response array
 $response=array();
 if(mysqli_query($con,$Sql_Query)){
 
                        $response['result']=1;
                        $response['message']="token Update Successfully...";
					
						//$response['reply'] =$reply;
						
			
                      
                        die(json_encode($response));
                       
 
 }
 else{
 
        $response['result']=0;
		$response['message']="Something went wrong";
		die(json_encode($response));	
 
 }
 mysqli_close($con);
?>