<?php 

// db location
$shvldata = 'shvldb.txt';

// check for above, and then 
if (file_exists($shvldata)) {
// read file into array 
    foreach (file($shvldata) as $line); 
	    $arr = explode('|', $line); 

//run through array and grab phone numbers
	$data = [
		'First'    => $arr[0],
		'Last'     => $arr[1],
		'Phone'    => $arr[2], 
        'Active'   => $arr[3], 
		'Comment'  => $arr[4], 
	];

	echo $arr[2]; 

?>
