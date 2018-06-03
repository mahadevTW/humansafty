<?php
require("dbconnect1.php");
//error_reporting(0);
/*****Display Country Spinner ****////
error_reporting(E_ALL);
ini_set('display_errors', 1);
header("Content-Type:application/json");
$id = $_POST['id'];

$case_sql="SELECT Latitude,Longitude from Upload_Loc WHERE id = '$id'";

    $case_sql_params=array();
    try
    {
        $case_stmt=$db->prepare($case_sql);
        $case_result=$case_stmt->execute($case_sql_params);
        $cnt=$case_stmt->rowCount();
    }
    catch (PDOException $ex) 
    {
        $response["result"] = 0;
        $response["message"] = "Data Not Found!";
        die(json_encode($response));
    }
    if($case_result==0)
    {
		$response["result"] = 0;
		$response["message"] = "Data not found.";
		die(json_encode($response));
    }
    else
    {
		$case=$case_stmt->fetchAll();
		if(!empty($case))
		{
			$response['result']=1;
			$response['message']=$case;
			die(json_encode($response));
		}
		else
		{
			$response['result']=0;
			$response["message"] = "Data not found.";
		        die(json_encode($response));
		}

    }
?>