<?php




              $token = "cVya768XwGk:APA91bElNNbgJoosDdhiz3dVGDtMyunoym073jrBYHoH-b4pwz8khw2QNwfb1sS7NEnpNxU95YCvMcfyjPH-8nn09so40OjHffuoak3AU1VUbhkWJS8Ldij6lckUvSorhivEjV-7lROU";

              $massage = "Help Me! I am In Trouble, My ID is 1";
              $path_to_firebase_cm = 'https://fcm.googleapis.com/fcm/send';
              $fields = array(
                  'to' => $token,
                  'notification' => array('title' => 'HumanSafty', 'body' => $massage,'vibrate'=>"1",'sound'=>"mySound","priority"=>"high")
              );

              $headers = array(
                  'Authorization:key = AIzaSyBjE-cRBqb0vkge7MNKSkmFs5WWtMfi6ew',
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
 ?>