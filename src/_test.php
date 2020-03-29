<?php
define("BASE", __DIR__ . "/");
require_once "_core.php";
require_once "_api.php";
$tmpFileName="page.html";
// Crontab command: `* */2 * * * php _update.php >/dev/null 2>&1`
// Current time is: 2020-02-26 7:29:00 PM UTC
// This cron job will be run at: (5 times displayed and more...)
// 2020-02-26 20:00:00 UTC
// 2020-02-26 20:01:00 UTC
// 2020-02-26 20:02:00 UTC
// 2020-02-26 20:03:00 UTC
// 2020-02-26 20:04:00 UTC
// ...
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
	print_r($items);
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
