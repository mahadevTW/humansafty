<?php
require_once 'fcmconnect.php';
$messagetosend = "";
$title = "Hello";
$serverUrl = "https://fcm.googleapis.com/fcm/send";
$key="AAAAIOlxAxU:APA91bGJV_kXUU1wTFMhPkbrFA0cbLdoy6meugi1YbSbqTVWik-vY_spprAoSaADz2iTVds1Ery9H-SCFQtzpMAWJh4S04u-ZBKveOewzoyuwNtCDNNVGxHTTPkbiM_9FcG6MgdvSRrW";
$to = "";
$headers = array(
    'Authorization:key =' .$key,
        'Content-Type: application/json'
);

$fields = array(
    'to'=>$to,
    'notification'=>array('title'=>$title,'body'=>$messagetosend)
);
$payload= json_encode($fields);
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $serverUrl);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch, CURLOPT_IPRESOLVE, CURL_IPRESOLVE_V4 );
curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
$result = curl_exec($ch);
curl_close($ch);
?>
