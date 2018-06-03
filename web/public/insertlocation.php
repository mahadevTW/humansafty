<?php

include 'DatabaseConfig.php' ;
 
 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
 
 

			$Latitude = $_POST['Latitude'];
			$Longitude = $_POST['Longitude'];
		
			
		
			

 $Sql_Query="INSERT INTO Upload_Loc(Latitude,Longitude) VALUES('$Latitude','$Longitude')";

  
 // json response array
 $response=array();
 if(mysqli_query($con,$Sql_Query)){
 
                        $response['result']=1;
                        $response['message']="Successfully..";
						
						
						
			
                      
                        die(json_encode($response));
                       
 
 }
 else{
 
        $response['result']=0;
		$response['message']="Something went wrong";
		die(json_encode($response));	
 
 }
 mysqli_close($con);
?>