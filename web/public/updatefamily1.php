<?php

include 'DatabaseConfig.php' ;
 
 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
 
 
            $userid=$_POST['userid'];
			$family1=$_POST['family1'];
			

 $Sql_Query="update familyfriends SET family1 = '$family1' WHERE userid = '$userid'";

  
 // json response array
 $response=array();
 if(mysqli_query($con,$Sql_Query)){
 
                        $response['result']=1;
                        $response['message']="Update Successfully...";
					
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