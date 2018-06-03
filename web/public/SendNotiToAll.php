<?php 
 date_default_timezone_set('Asia/Kolkata');
 require_once 'bali.php';
 
 $response = array();
 
 if(isset($_GET['apicall'])){
 
 switch($_GET['apicall']){
 

 case 'login':
 
 if(isTheseParametersAvailable(array('myid'))){
 
 
 
 $myid = $_POST['myid'];
 
 $stmt = $conn->prepare("SELECT token FROM login_register");
 /*$stmt->bind_param("i",$id);*/
 
 
 
 $stmt->execute();
 
 $stmt->store_result();
 
 if($stmt->num_rows > 0){
 
 $stmt->bind_result($token);
 $stmt->fetch();
 
 $user = array(
 'token'=>$token

 );
 
 $response['result'] = 1; 
 $response['message'] = 'Login successfull'; 
 $response['token']=$token;
  $response['myid']=$myid;

    //$token = 'token';

              $massage = 'Help Me! I am In Trouble My id is ' . $myid;
              $path_to_firebase_cm = 'https://fcm.googleapis.com/fcm/send';
              $fields = array(
                  'to' => $token,
                  'notification' => array('title' => 'HumanSafety', 'body' => $massage,'vibrate'=>"1",'sound'=>"mySound","priority"=>"high")
              );

              $headers = array(
                  'Authorization:key = AIzaSyAkztC2XE9RgZHJnhseAYSJhhjX5PY53Ec',
                      'Content-Type: application/json'
              );
              $ch = curl_init();

              curl_setopt($ch, CURLOPT_URL, $path_to_firebase_cm);
              curl_setopt($ch, CURLOPT_POST, true);
              curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
              curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
              curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
              curl_setopt($ch, CURLOPT_IPRESOLVE, CURL_IPRESOLVE_V4 );
              curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));

              $result = curl_exec($ch);
              curl_close($ch);
 }else{
 $response['result'] = 0; 
 $response['message'] = 'Invalid username or password';
 }
 }
 break; 
 
      /**
     * Remove User by User_ID,Employee_Name
     */
  case 'delete':
  
  if((array('User_ID', 'Employee_Name'))){
 
 $User_ID = $_POST['User_ID'];
 $Employee_Name = $_POST['Employee_Name'];
 
 $stmt =$conn->prepare("DELETE FROM register_user WHERE User_ID = ? AND Employee_Name = ?");
 
 $stmt->bind_param("ss",$User_ID, $Employee_Name);

        if ($stmt->execute()) {
           		 $stmt->close();
            	return true;
            }else{
				$stmt->close();
				 $response['message'] = ''; 
                return false;    
			}
  }
 break;
 
 default: 
 $response['result'] = 1; 
 $response['message'] = 'Invalid Operation Called';
 }
 
 }else{
 $response['result'] = 0; 
 $response['message'] = 'Invalid API Call';
 }
 
 echo json_encode($response);
 
 function isTheseParametersAvailable($params){
 
 foreach($params as $param){
 if(!isset($_POST[$param])){
 return false; 
 }
 }
 return true; 
 }