<?php
define("BASE", __DIR__ . "/");
require_once "_core.php";
require_once "_api.php";
$tmpFileName="page.html";
function update() {
	global $db;
	global $tmpFileName;
	$file=get("https://www.worldometers.info/coronavirus/");
	// print_r($file);
	$file=$file[0];
	// file_put_contents is suitable for here, but we will use curl for other projects!
	// Sample library and project in this case: https://github.com/BaseMax/netphp
	file_put_contents($tmpFileName, $file);
	$matchs=parseData($file);
	$items=prepareData($matchs);
	// print_r($items);
	foreach($items as $item) {
		// name, totalCase, newCase, totalDeath, newDeath, totalRecovered, seriousUser
		$clauses=[
			"name"=>$item["name"],
		];
		// print_r($item);
		foreach($item as $i=>$v) {
			if($i != "name") {
				$item[$i]=str_replace(",", "", $item[$i]);// ,
				$item[$i]=str_replace("+", "", $item[$i]);// +
			}
		}
		// print_r($item);
		$values=[
			"name"=>$item["name"],
			"totalCase"=>$item["totalCase"],
			"newCase"=>$item["newCase"],
			"totalDeath"=>$item["totalDeath"],
			"newDeath"=>$item["newDeath"],
			"totalRecovered"=>$item["totalRecovered"],
			"seriousUser"=>$item["seriousUser"],
		];
		print_r($values);
	}
}
update();
