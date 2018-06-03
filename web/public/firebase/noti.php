<?php

              $token = "dMfCjanfLnI:APA91bFe0j76ggWsFU-VugCVOt-KrYx5L-UBcA5yDIrM4e5C25H32QNa20X0QbHHLQF_FvSRufmfbO-JUaJhFYy4ekLn32BirLfSD3soP88J68HDBpLbw8zeKOPbamo0fLSwxd82TTfO";

              $massage = "I am In Trouble My id is 1";
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
 ?>