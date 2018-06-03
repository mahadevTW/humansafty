<?php 
 
 require_once 'dbconnect3.php';
 
 $response = array();
 
 if(isset($_GET['apicall'])){
 
 switch($_GET['apicall']){
 
 case 'signup':
 if(isTheseParametersAvailable(array('Username','Email','Mobile_No','Password','Re_enter_Password'))){
 $Username = $_POST['Username']; 
 $Email = $_POST['Email']; 
 $Mobile_No = $_POST['Mobile_No'];
 $token = $_POST['token'];
 $Password = $_POST['Password'];
 $Re_enter_Password = $_POST['Re_enter_Password'];
 

 
 $stmt = $conn->prepare("SELECT id FROM login_register WHERE Username = ? OR Email = ?");
 $stmt->bind_param("ss", $Username, $Email);
 $stmt->execute();
 $stmt->store_result();
 
 if($stmt->num_rows > 0){
 $response['error'] = true;
 $response['message'] = 'User already registered';
 $stmt->close();
 }else{
 $stmt = $conn->prepare("INSERT INTO login_register (Username, Email, Mobile_No,token, Password, Re_enter_Password) VALUES (?, ?, ?,?, ?,?)");
 $stmt->bind_param("ssssss", $Username, $Email, $Mobile_No, $token, $Password,$Re_enter_Password);
 
 if($stmt->execute()){
 $stmt = $conn->prepare("SELECT  id, Username, Email, Mobile_No, token FROM login_register WHERE Username = ?"); 
 $stmt->bind_param("s",$Username);
 $stmt->execute();
 $stmt->bind_result( $id, $Username, $Email, $Mobile_No, $token);
 $stmt->fetch();
 
 $user = array(
 'id'=>$id, 
 'Username'=>$Username, 
 'Email'=>$Email,
 'Mobile_No'=>$Mobile_No,
 'token'=>$token

 );
 
 $stmt->close();
 
 $response['error'] = false; 
 $response['message'] = 'User registered successfully'; 
 $response['user'] = $user; 
 }
 }
 
 }else{
 $response['error'] = true; 
 $response['message'] = 'required parameters are not available'; 
 }
 
 break; 
 
 case 'login':
 
 if(isTheseParametersAvailable(array('Username', 'Password'))){
 
 $Username = $_POST['Username'];
 $Password = $_POST['Password']; 
 
 $stmt = $conn->prepare("SELECT id, Username, Email,Mobile_No FROM login_register WHERE Username = ? AND Password = ?");
 $stmt->bind_param("ss",$Username, $Password);
 
 $stmt->execute();
 
 $stmt->store_result();
 
 if($stmt->num_rows > 0){
 
 $stmt->bind_result($id, $Username, $Email, $Mobile_No);
 $stmt->fetch();
 
 $user = array(
 'id'=>$id, 
 'Username'=>$Username, 
 'Email'=>$Email,
 'Mobile_No'=>$Mobile_No
 
 );
 
 $response['error'] = false; 
 $response['message'] = 'Login successfull'; 
 $response['id'] = $id;
 $response['Username'] = $Username;
 $response['Password'] = $Password;
 }else{
 $response['error'] = false; 
 $response['message'] = 'Invalid username or password';
 }
 }
 break; 
 
 default: 
 $response['error'] = true; 
 $response['message'] = 'Invalid Operation Called';
 }
 
 }else{
 $response['error'] = true; 
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