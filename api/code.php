<?php

$json = file_get_contents('php://input');

// decoding the received JSON and store into $obj variable.
$obj = json_decode($json, true);
// $module_id = $obj['module_id'];

$code = $obj['code'];
// $code = `public class Main {
//     public static void main(String[] args) {
//       System.out.println("Hello World");
//     }
//   }`;

$file_handle = fopen('./Main.java', 'w');
fwrite($file_handle, $code);



exec("javac Main.java  2>error.txt");

$code = exec("java Main");
// $error = readfile("error.txt");
$myfile = fopen("error.txt", "r");
$fileSize = filesize("error.txt");

if ($fileSize == 0) {
    $Message["code"]  = $code;
} else {
    $error = fread($myfile, filesize("error.txt"));
    $Message["code"] = $error;
}


// if (!empty($myfile)) {
//     $Message["code"] = $error;
// } else {
//     $Message["code"]  = $code;
// }

fclose($myfile);
echo json_encode($Message);

fclose($file_handle);
