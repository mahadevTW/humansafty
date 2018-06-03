<?php

include 'DatabaseConfig.php' ;
 
 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
 
 
            $id=$_POST['id'];
			$Latitude=$_POST['Latitude'];
			$Longitude=$_POST['Longitude'];
			
			
			

 $Sql_Query="update Upload_Loc SET Latitude = '$Latitude',Longitude = '$Longitude' WHERE id = '$id'";

  
 // json response array
 $response=array();
 if(mysqli_query($con,$Sql_Query)){
 
                        $response['result']=1;
                        $response['message']="Successfully..";
					
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