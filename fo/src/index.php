<?php

//$ip = getenv('API_IP');

//$url = 'http://' . $ip . ':8090/api';
$url = 'http://api-svc:8090/api';

$ch = curl_init($url);

$data = array(
    'task' => 'status'
);

$json = json_encode($data);

//Tell cURL that we want to send a POST request.
curl_setopt($ch, CURLOPT_POST, 1);

//Attach our encoded JSON string to the POST fields.
curl_setopt($ch, CURLOPT_POSTFIELDS, $json);

//Set the content type to application/json
curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));

//Execute the request
$result = curl_exec($ch);

print $result[0];
?>
