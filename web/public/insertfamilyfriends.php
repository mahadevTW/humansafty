

 <?php 
 
 require_once 'dbconnect3.php';
 
 $response = array();
 
 if(isset($_GET['apicall'])){
 
 switch($_GET['apicall']){
 
 case 'signup':
 if(isTheseParametersAvailable(array('userid'))){
         	$family1 = $_POST['family1'];
			$family2 = $_POST['family2'];
			$family3 = $_POST['family3'];
			$friend1 = $_POST['friend1'];
			$friend2 = $_POST['friend2'];
			$friend3 = $_POST['friend3'];
			$userid = $_POST['userid'];

 
 $stmt = $conn->prepare("SELECT id FROM familyfriends WHERE userid = ?");
 $stmt->bind_param("s", $userid);
 $stmt->execute();
 $stmt->store_result();
 
 if($stmt->num_rows > 0){
 $response['error'] = true;
 $response['message'] = 'User already registered';
 $stmt->close();
 }else{
 $stmt = $conn->prepare("INSERT INTO familyfriends(family1,family2,family3,friend1,friend2,friend3,userid) VALUES (?, ?, ?, ?, ?, ?, ?)");
 $stmt->bind_param("sssssss", $family1, $family2, $family3, $friend1, $friend2,$friend3,$userid);
 
 if($stmt->execute()){
 $stmt = $conn->prepare("SELECT  id, family1,family2,family3,friend1,friend2,friend3,userid FROM familyfriends WHERE userid = ?"); 
 $stmt->bind_param("s",$userid);
 $stmt->execute();
 $stmt->bind_result( $id, $family1, $family2, $family3, $friend1, $friend2,$friend3,$userid);
 $stmt->fetch();
 
 $user = array(
 'id'=>$id, 
 'family1'=>$family1, 
 'family2'=>$family2,
 'family3'=>$family3,
 'friend1'=>$friend1,
 'friend2'=>$friend2,
 'friend3'=>$friend3,
 'userid'=>$userid

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
 
 if(isTheseParametersAvailable(array('userid'))){
 
 $userid = $_POST['userid'];

 
 $stmt = $conn->prepare("SELECT  id, family1,family2,family3,friend1,friend2,friend3,userid FROM familyfriends WHERE userid = ?");
  $stmt->bind_param("s",$userid);
 
 $stmt->execute();
 
 $stmt->store_result();
 
 if($stmt->num_rows > 0){
 
  $stmt->bind_result( $id, $family1, $family2, $family3, $friend1, $friend2,$friend3,$userid);
 $stmt->fetch();
 
 $user = array(
 'id'=>$id, 
 'family1'=>$family1, 
 'family2'=>$family2,
 'family3'=>$family3,
 'friend1'=>$friend1,
 'friend2'=>$friend2,
 'friend3'=>$friend3,
 'userid'=>$userid

 );
 
 $response['error'] = false; 
 $response['message'] = 'Login successfull'; 
 $response['id'] = $id;
 $response['family1'] = $family1;
 $response['family2'] = $family2;
  $response['family3'] = $family3;
 $response['friend1'] = $friend1;
  $response['friend2'] = $friend2;
 $response['friend3'] = $friend3;
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