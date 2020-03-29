# api-webservice-COVID-19

API: Web Service Coronavirus Disease 2019 (COVID-19), Access to live data of outbreak of novel coronavirus disease 2019.

Based on [CoronaVirusOutbreakAPI](https://github.com/BaseMax/CoronaVirusOutbreakAPI).

## Features

- Free, Open Source, Easy and short code
- Ability to create token for suers
- Ability to search in country
- Ability to sort (ASC or DESC) in country list
- Ability to get total number (in world)
- Ability to limit auth and token

## COVID19 API

All request need `token` value in header, You can create `token` in **token** table.

### Country List

**GET:** http://localhost/api-webservice-COVID-19/?method=list

**POST:** http://localhost/api-webservice-COVID-19/ with `method=list` data

```json
{
	status: "success",
	message: "",
	lastUpdate: "2020-02-27 18:05:06",
	result: [
		{
		id: 1,
		name: "china",
		totalCase: 78514,
		newCase: 450,
		totalDeath: 2747,
		newDeath: 32,
		totalRecovered: 32954,
		seriousUser: 8346,
		datetime: "2020-02-27 18:05:03"
		},
		...
	]
}
```

### Country List with Sort

##### DESC sort:

**GET:** http://localhost/api-webservice-COVID-19/?method=list&sort=totalCase&type=desc

**POST:** http://localhost/api-webservice-COVID-19/ with `method=list&sort=totalCase&type=desc` data

##### or ASC sort:

**GET:** http://localhost/api-webservice-COVID-19/?method=list&sort=totalCase&type=asc

**POST:** http://localhost/api-webservice-COVID-19/ with `method=list&sort=totalCase&type=asc` data

### Search in country

**GET:** http://localhost/api-webservice-COVID-19/?method=search&query=ir

**POST:** http://localhost/api-webservice-COVID-19/ with `method=search&query=ir`

```json
{
	status: "success",
	message: "",
	result: [
		{
			id: 5,
			name: "iran",
			totalCase: 245,
			newCase: 106,
			totalDeath: 26,
			newDeath: 7,
			totalRecovered: 25,
			seriousUser: 0,
			datetime: "2020-02-27 16:05:56"
		},
		{
			id: 24,
			name: "iraq",
			totalCase: 6,
			newCase: 1,
			totalDeath: 0,
			newDeath: 0,
			totalRecovered: 0,
			seriousUser: 0,
			datetime: "2020-02-27 16:05:59"
		}
	]
}
```

### Search in country with sort

**GET:** http://localhost/api-webservice-COVID-19/?method=search&query=ir&sort=totalCase&type=asc

**POST:** http://localhost/api-webservice-COVID-19/ with `method=search&query=ir&sort=totalCase&type=asc` data


### Total numbers in all country and in the world

**GET:** http://localhost/api-webservice-COVID-19/?method=total

**POST:** http://localhost/api-webservice-COVID-19/ with `method=total`

```json
{
	status: "success",
	message: "",
	result: {
		all: "163492",
		died: "5588"
	}
}
```

## Installing / Using from COVID19 API

- Download source files
- Upload sources files in a webserver (e.g: `/var/www/html` or `/usr/share/nginx/html` or ...)
- Create a database for this project
- Put username, password and database name in `_core.php` file and config this project by modify `_core.php` file
- Import `corona.sql` file into your database (using phpmyadmin or mariadb, mysql cli or other tools)

> Note: corona.sql is database structure with empty table, you will use it to setup this project. But output.sql is a database output with current corona data.

## How keep data live and up to date?

Run `$ php _update.php update` every time you want to update your database rows.
It will automaticly update and change data, if they are new or changed!

## Using crontab to automaticly update results

Crontab command: `* */2 * * * php _update.php >/dev/null 2>&1`

Current time is: 2020-02-26 7:29:00 PM UTC

This cron job will be run at: (5 times displayed and more...)

- 2020-02-26 20:00:00 UTC
- 2020-02-26 20:01:00 UTC
- 2020-02-26 20:02:00 UTC
- 2020-02-26 20:03:00 UTC
- 2020-02-26 20:04:00 UTC
- ...

## Test Script

### `php src/_test.php `

```
Array
(
    [0] => Array
        (
            [name] => usa
            [totalCase] => 123,781
            [newCase] => +203
            [totalDeath] => 2,229
            [newDeath] => +8
            [totalRecovered] => 3,238
            [seriousUser] => 118,314
        )

    [1] => Array
        (
            [name] => spain
            [totalCase] => 78,797
            [newCase] => +5,562
            [totalDeath] => 6,528
            [newDeath] => +546
            [totalRecovered] => 14,709
            [seriousUser] => 57,560
        )

    [2] => Array
        (
            [name] => germany
            [totalCase] => 58,247
            [newCase] => +552
            [totalDeath] => 455
            [newDeath] => +22
            [totalRecovered] => 8,481
            [seriousUser] => 49,311
        )

    [3] => Array
        (
            [name] => iran
            [totalCase] => 38,309
            [newCase] => +2,901
            [totalDeath] => 2,640
            [newDeath] => +123
            [totalRecovered] => 12,391
            [seriousUser] => 23,278
        )

    [4] => Array
        (
            [name] => switzerland
            [totalCase] => 14,352
            [newCase] => +276
            [totalDeath] => 282
            [newDeath] => +18
            [totalRecovered] => 1,595
            [seriousUser] => 12,475
        )

    [5] => Array
        (
            [name] => netherlands
            [totalCase] => 10,866
            [newCase] => +1,104
            [totalDeath] => 771
            [newDeath] => +132
            [totalRecovered] => 3
            [seriousUser] => 10,092
        )

    [6] => Array
        (
            [name] => belgium
            [totalCase] => 10,836
            [newCase] => +1,702
            [totalDeath] => 431
            [newDeath] => +78
            [totalRecovered] => 1,359
            [seriousUser] => 9,046
        )

    [7] => Array
        (
            [name] => s. korea
            [totalCase] => 9,583
            [newCase] => +105
            [totalDeath] => 152
            [newDeath] => +8
            [totalRecovered] => 5,033
            [seriousUser] => 4,398
        )

    [8] => Array
        (
            [name] => austria
            [totalCase] => 8,486
            [newCase] => +215
            [totalDeath] => 86
            [newDeath] => +18
            [totalRecovered] => 479
            [seriousUser] => 7,921
        )

    [9] => Array
        (
            [name] => portugal
            [totalCase] => 5,962
            [newCase] => +792
            [totalDeath] => 119
            [newDeath] => +19
            [totalRecovered] => 43
            [seriousUser] => 5,800
        )

    [10] => Array
        (
            [name] => norway
            [totalCase] => 4,232
            [newCase] => +217
            [totalDeath] => 25
            [newDeath] => +2
            [totalRecovered] => 7
            [seriousUser] => 4,200
        )

    [11] => Array
        (
            [name] => australia
            [totalCase] => 3,969
            [newCase] => +334
            [totalDeath] => 16
            [newDeath] => +2
            [totalRecovered] => 226
            [seriousUser] => 3,727
        )

    [12] => Array
        (
            [name] => israel
            [totalCase] => 3,865
            [newCase] => +246
            [totalDeath] => 14
            [newDeath] => +2
            [totalRecovered] => 89
            [seriousUser] => 3,762
        )

    [13] => Array
        (
            [name] => sweden
            [totalCase] => 3,700
            [newCase] => +253
            [totalDeath] => 110
            [newDeath] => +5
            [totalRecovered] => 16
            [seriousUser] => 3,574
        )

    [14] => Array
        (
            [name] => czechia
            [totalCase] => 2,697
            [newCase] => +66
            [totalDeath] => 13
            [newDeath] => +2
            [totalRecovered] => 11
            [seriousUser] => 2,673
        )

    [15] => Array
        (
            [name] => malaysia
            [totalCase] => 2,470
            [newCase] => +150
            [totalDeath] => 34
            [newDeath] => +7
            [totalRecovered] => 388
            [seriousUser] => 2,048
        )

    [16] => Array
        (
            [name] => denmark
            [totalCase] => 2,395
            [newCase] => +194
            [totalDeath] => 72
            [newDeath] => +7
            [totalRecovered] => 1
            [seriousUser] => 2,322
        )

    [17] => Array
        (
            [name] => poland
            [totalCase] => 1,771
            [newCase] => +133
            [totalDeath] => 20
            [newDeath] => +2
            [totalRecovered] => 7
            [seriousUser] => 1,744
        )

    [18] => Array
        (
            [name] => romania
            [totalCase] => 1,760
            [newCase] => +308
            [totalDeath] => 40
            [newDeath] => +3
            [totalRecovered] => 169
            [seriousUser] => 1,551
        )

    [19] => Array
        (
            [name] => russia
            [totalCase] => 1,534
            [newCase] => +270
            [totalDeath] => 8
            [newDeath] => +4
            [totalRecovered] => 64
            [seriousUser] => 1,462
        )

    [20] => Array
        (
            [name] => pakistan
            [totalCase] => 1,526
            [newCase] => +31
            [totalDeath] => 13
            [newDeath] => +1
            [totalRecovered] => 29
            [seriousUser] => 1,484
        )

    [21] => Array
        (
            [name] => philippines
            [totalCase] => 1,418
            [newCase] => +343
            [totalDeath] => 71
            [newDeath] => +3
            [totalRecovered] => 42
            [seriousUser] => 1,305
        )

    [22] => Array
        (
            [name] => thailand
            [totalCase] => 1,388
            [newCase] => +143
            [totalDeath] => 7
            [newDeath] => +1
            [totalRecovered] => 97
            [seriousUser] => 1,284
        )

    [23] => Array
        (
            [name] => saudi arabia
            [totalCase] => 1,299
            [newCase] => +96
            [totalDeath] => 8
            [newDeath] => +4
            [totalRecovered] => 66
            [seriousUser] => 1,225
        )

    [24] => Array
        (
            [name] => indonesia
            [totalCase] => 1,285
            [newCase] => +130
            [totalDeath] => 114
            [newDeath] => +12
            [totalRecovered] => 64
            [seriousUser] => 1,107
        )

    [25] => Array
        (
            [name] => finland
            [totalCase] => 1,221
            [newCase] => +54
            [totalDeath] => 11
            [newDeath] => +2
            [totalRecovered] => 10
            [seriousUser] => 1,200
        )

    [26] => Array
        (
            [name] => mexico
            [totalCase] => 848
            [newCase] => +131
            [totalDeath] => 16
            [newDeath] => +4
            [totalRecovered] => 4
            [seriousUser] => 828
        )

    [27] => Array
        (
            [name] => singapore
            [totalCase] => 844
            [newCase] => +42
            [totalDeath] => 3
            [newDeath] => +1
            [totalRecovered] => 212
            [seriousUser] => 629
        )

    [28] => Array
        (
            [name] => slovenia
            [totalCase] => 730
            [newCase] => +46
            [totalDeath] => 11
            [newDeath] => +2
            [totalRecovered] => 10
            [seriousUser] => 709
        )

    [29] => Array
        (
            [name] => croatia
            [totalCase] => 713
            [newCase] => +56
            [totalDeath] => 6
            [newDeath] => +1
            [totalRecovered] => 52
            [seriousUser] => 655
        )

    [30] => Array
        (
            [name] => estonia
            [totalCase] => 679
            [newCase] => +34
            [totalDeath] => 3
            [newDeath] => +2
            [totalRecovered] => 20
            [seriousUser] => 656
        )

    [31] => Array
        (
            [name] => morocco
            [totalCase] => 450
            [newCase] => +48
            [totalDeath] => 26
            [newDeath] => +1
            [totalRecovered] => 13
            [seriousUser] => 411
        )

    [32] => Array
        (
            [name] => lebanon
            [totalCase] => 438
            [newCase] => +26
            [totalDeath] => 10
            [newDeath] => +2
            [totalRecovered] => 30
            [seriousUser] => 398
        )

    [33] => Array
        (
            [name] => armenia
            [totalCase] => 424
            [newCase] => +17
            [totalDeath] => 3
            [newDeath] => +2
            [totalRecovered] => 30
            [seriousUser] => 391
        )

    [34] => Array
        (
            [name] => hungary
            [totalCase] => 408
            [newCase] => +65
            [totalDeath] => 13
            [newDeath] => +2
            [totalRecovered] => 34
            [seriousUser] => 361
        )

    [35] => Array
        (
            [name] => bulgaria
            [totalCase] => 338
            [newCase] => +7
            [totalDeath] => 8
            [newDeath] => +1
            [totalRecovered] => 11
            [seriousUser] => 319
        )

    [36] => Array
        (
            [name] => north macedonia
            [totalCase] => 257
            [newCase] => +16
            [totalDeath] => 6
            [newDeath] => +2
            [totalRecovered] => 3
            [seriousUser] => 248
        )

    [37] => Array
        (
            [name] => china
            [totalCase] => 81,439
            [newCase] => +45
            [totalDeath] => 3,300
            [newDeath] => +5
            [totalRecovered] => 75,448
            [seriousUser] => 2,691
        )

    [38] => Array
        (
            [name] => china
            [totalCase] => 81,394
            [newCase] => +54
            [totalDeath] => 3,295
            [newDeath] => +3
            [totalRecovered] => 74,971
            [seriousUser] => 3,128
        )

    [39] => Array
        (
            [name] => usa
            [totalCase] => 123,578
            [newCase] => +19,452
            [totalDeath] => 2,221
            [newDeath] => +525
            [totalRecovered] => 3,231
            [seriousUser] => 118,126
        )

    [40] => Array
        (
            [name] => italy
            [totalCase] => 92,472
            [newCase] => +5,974
            [totalDeath] => 10,023
            [newDeath] => +889
            [totalRecovered] => 12,384
            [seriousUser] => 70,065
        )

    [41] => Array
        (
            [name] => spain
            [totalCase] => 73,235
            [newCase] => +7,516
            [totalDeath] => 5,982
            [newDeath] => +844
            [totalRecovered] => 12,285
            [seriousUser] => 54,968
        )

    [42] => Array
        (
            [name] => germany
            [totalCase] => 57,695
            [newCase] => +6,824
            [totalDeath] => 433
            [newDeath] => +82
            [totalRecovered] => 8,481
            [seriousUser] => 48,781
        )

    [43] => Array
        (
            [name] => france
            [totalCase] => 37,575
            [newCase] => +4,611
            [totalDeath] => 2,314
            [newDeath] => +319
            [totalRecovered] => 5,700
            [seriousUser] => 29,561
        )

    [44] => Array
        (
            [name] => iran
            [totalCase] => 35,408
            [newCase] => +3,076
            [totalDeath] => 2,517
            [newDeath] => +139
            [totalRecovered] => 11,679
            [seriousUser] => 21,212
        )

    [45] => Array
        (
            [name] => uk
            [totalCase] => 17,089
            [newCase] => +2,546
            [totalDeath] => 1,019
            [newDeath] => +260
            [totalRecovered] => 135
            [seriousUser] => 15,935
        )

    [46] => Array
        (
            [name] => switzerland
            [totalCase] => 14,076
            [newCase] => +1,148
            [totalDeath] => 264
            [newDeath] => +33
            [totalRecovered] => 1,530
            [seriousUser] => 12,282
        )

    [47] => Array
        (
            [name] => netherlands
            [totalCase] => 9,762
            [newCase] => +1,159
            [totalDeath] => 639
            [newDeath] => +93
            [totalRecovered] => 3
            [seriousUser] => 9,120
        )

    [48] => Array
        (
            [name] => s. korea
            [totalCase] => 9,478
            [newCase] => +146
            [totalDeath] => 144
            [newDeath] => +5
            [totalRecovered] => 4,811
            [seriousUser] => 4,523
        )

    [49] => Array
        (
            [name] => belgium
            [totalCase] => 9,134
            [newCase] => +1,850
            [totalDeath] => 353
            [newDeath] => +64
            [totalRecovered] => 1,063
            [seriousUser] => 7,718
        )

    [50] => Array
        (
            [name] => austria
            [totalCase] => 8,271
            [newCase] => +574
            [totalDeath] => 68
            [newDeath] => +10
            [totalRecovered] => 225
            [seriousUser] => 7,978
        )

    [51] => Array
        (
            [name] => turkey
            [totalCase] => 7,402
            [newCase] => +1,704
            [totalDeath] => 108
            [newDeath] => +16
            [totalRecovered] => 70
            [seriousUser] => 7,224
        )

    [52] => Array
        (
            [name] => canada
            [totalCase] => 5,655
            [newCase] => +898
            [totalDeath] => 60
            [newDeath] => +5
            [totalRecovered] => 396
            [seriousUser] => 5,199
        )

    [53] => Array
        (
            [name] => portugal
            [totalCase] => 5,170
            [newCase] => +902
            [totalDeath] => 100
            [newDeath] => +24
            [totalRecovered] => 43
            [seriousUser] => 5,027
        )

    [54] => Array
        (
            [name] => norway
            [totalCase] => 4,015
            [newCase] => +244
            [totalDeath] => 23
            [newDeath] => +4
            [totalRecovered] => 7
            [seriousUser] => 3,985
        )

    [55] => Array
        (
            [name] => brazil
            [totalCase] => 3,904
            [newCase] => +487
            [totalDeath] => 114
            [newDeath] => +22
            [totalRecovered] => 6
            [seriousUser] => 3,784
        )

    [56] => Array
        (
            [name] => australia
            [totalCase] => 3,635
            [newCase] => +257
            [totalDeath] => 14
            [newDeath] => +1
            [totalRecovered] => 170
            [seriousUser] => 3,451
        )

    [57] => Array
        (
            [name] => czechia
            [totalCase] => 2,631
            [newCase] => +352
            [totalDeath] => 11
            [newDeath] => +2
            [totalRecovered] => 11
            [seriousUser] => 2,609
        )

    [58] => Array
        (
            [name] => ireland
            [totalCase] => 2,415
            [newCase] => +294
            [totalDeath] => 36
            [newDeath] => +14
            [totalRecovered] => 5
            [seriousUser] => 2,374
        )

    [59] => Array
        (
            [name] => malaysia
            [totalCase] => 2,320
            [newCase] => +159
            [totalDeath] => 27
            [newDeath] => +1
            [totalRecovered] => 320
            [seriousUser] => 1,973
        )

    [60] => Array
        (
            [name] => denmark
            [totalCase] => 2,201
            [newCase] => +155
            [totalDeath] => 65
            [newDeath] => +13
            [totalRecovered] => 1
            [seriousUser] => 2,135
        )

    [61] => Array
        (
            [name] => chile
            [totalCase] => 1,909
            [newCase] => +299
            [totalDeath] => 6
            [newDeath] => +1
            [totalRecovered] => 61
            [seriousUser] => 1,842
        )

    [62] => Array
        (
            [name] => luxembourg
            [totalCase] => 1,831
            [newCase] => +226
            [totalDeath] => 18
            [newDeath] => +3
            [totalRecovered] => 40
            [seriousUser] => 1,773
        )

    [63] => Array
        (
            [name] => ecuador
            [totalCase] => 1,823
            [newCase] => +196
            [totalDeath] => 48
            [newDeath] => +7
            [totalRecovered] => 3
            [seriousUser] => 1,772
        )

    [64] => Array
        (
            [name] => japan
            [totalCase] => 1,693
            [newCase] => +194
            [totalDeath] => 52
            [newDeath] => +3
            [totalRecovered] => 404
            [seriousUser] => 1,237
        )

    [65] => Array
        (
            [name] => poland
            [totalCase] => 1,638
            [newCase] => +249
            [totalDeath] => 18
            [newDeath] => +2
            [totalRecovered] => 7
            [seriousUser] => 1,613
        )

    [66] => Array
        (
            [name] => pakistan
            [totalCase] => 1,495
            [newCase] => +122
            [totalDeath] => 12
            [newDeath] => +1
            [totalRecovered] => 29
            [seriousUser] => 1,454
        )

    [67] => Array
        (
            [name] => romania
            [totalCase] => 1,452
            [newCase] => +160
            [totalDeath] => 37
            [newDeath] => +11
            [totalRecovered] => 139
            [seriousUser] => 1,276
        )

    [68] => Array
        (
            [name] => thailand
            [totalCase] => 1,245
            [newCase] => +109
            [totalDeath] => 6
            [newDeath] => +1
            [totalRecovered] => 97
            [seriousUser] => 1,142
        )

    [69] => Array
        (
            [name] => saudi arabia
            [totalCase] => 1,203
            [newCase] => +99
            [totalDeath] => 4
            [newDeath] => +1
            [totalRecovered] => 37
            [seriousUser] => 1,162
        )

    [70] => Array
        (
            [name] => finland
            [totalCase] => 1,167
            [newCase] => +126
            [totalDeath] => 9
            [newDeath] => +2
            [totalRecovered] => 10
            [seriousUser] => 1,148
        )

    [71] => Array
        (
            [name] => indonesia
            [totalCase] => 1,155
            [newCase] => +109
            [totalDeath] => 102
            [newDeath] => +15
            [totalRecovered] => 59
            [seriousUser] => 994
        )

    [72] => Array
        (
            [name] => philippines
            [totalCase] => 1,075
            [newCase] => +272
            [totalDeath] => 68
            [newDeath] => +14
            [totalRecovered] => 35
            [seriousUser] => 972
        )

    [73] => Array
        (
            [name] => greece
            [totalCase] => 1,061
            [newCase] => +95
            [totalDeath] => 32
            [newDeath] => +4
            [totalRecovered] => 52
            [seriousUser] => 977
        )

    [74] => Array
        (
            [name] => india
            [totalCase] => 987
            [newCase] => +100
            [totalDeath] => 24
            [newDeath] => +4
            [totalRecovered] => 84
            [seriousUser] => 879
        )

    [75] => Array
        (
            [name] => panama
            [totalCase] => 901
            [newCase] => +115
            [totalDeath] => 17
            [newDeath] => +3
            [totalRecovered] => 4
            [seriousUser] => 880
        )

    [76] => Array
        (
            [name] => argentina
            [totalCase] => 745
            [newCase] => +156
            [totalDeath] => 19
            [newDeath] => +6
            [totalRecovered] => 72
            [seriousUser] => 654
        )

    [77] => Array
        (
            [name] => dominican republic
            [totalCase] => 719
            [newCase] => +138
            [totalDeath] => 28
            [newDeath] => +8
            [totalRecovered] => 3
            [seriousUser] => 688
        )

    [78] => Array
        (
            [name] => mexico
            [totalCase] => 717
            [newCase] => +132
            [totalDeath] => 12
            [newDeath] => +4
            [totalRecovered] => 4
            [seriousUser] => 701
        )

    [79] => Array
        (
            [name] => peru
            [totalCase] => 671
            [newCase] => +36
            [totalDeath] => 16
            [newDeath] => +5
            [totalRecovered] => 16
            [seriousUser] => 639
        )

    [80] => Array
        (
            [name] => serbia
            [totalCase] => 659
            [newCase] => +131
            [totalDeath] => 10
            [newDeath] => +2
            [totalRecovered] => 42
            [seriousUser] => 607
        )

    [81] => Array
        (
            [name] => croatia
            [totalCase] => 657
            [newCase] => +71
            [totalDeath] => 5
            [newDeath] => +2
            [totalRecovered] => 45
            [seriousUser] => 607
        )

    [82] => Array
        (
            [name] => qatar
            [totalCase] => 590
            [newCase] => +28
            [totalDeath] => 1
            [newDeath] => +1
            [totalRecovered] => 45
            [seriousUser] => 544
        )

    [83] => Array
        (
            [name] => egypt
            [totalCase] => 576
            [newCase] => +40
            [totalDeath] => 36
            [newDeath] => +6
            [totalRecovered] => 121
            [seriousUser] => 419
        )

    [84] => Array
        (
            [name] => new zealand
            [totalCase] => 514
            [newCase] => +146
            [totalDeath] => 1
            [newDeath] => +1
            [totalRecovered] => 56
            [seriousUser] => 457
        )

    [85] => Array
        (
            [name] => iraq
            [totalCase] => 506
            [newCase] => +48
            [totalDeath] => 42
            [newDeath] => +2
            [totalRecovered] => 131
            [seriousUser] => 333
        )

    [86] => Array
        (
            [name] => algeria
            [totalCase] => 454
            [newCase] => +45
            [totalDeath] => 29
            [newDeath] => +3
            [totalRecovered] => 31
            [seriousUser] => 394
        )

    [87] => Array
        (
            [name] => morocco
            [totalCase] => 402
            [newCase] => +57
            [totalDeath] => 25
            [newDeath] => +2
            [totalRecovered] => 12
            [seriousUser] => 365
        )

    [88] => Array
        (
            [name] => lithuania
            [totalCase] => 394
            [newCase] => +36
            [totalDeath] => 7
            [newDeath] => +2
            [totalRecovered] => 1
            [seriousUser] => 386
        )

    [89] => Array
        (
            [name] => ukraine
            [totalCase] => 356
            [newCase] => +46
            [totalDeath] => 9
            [newDeath] => +4
            [totalRecovered] => 5
            [seriousUser] => 342
        )

    [90] => Array
        (
            [name] => hungary
            [totalCase] => 343
            [newCase] => +43
            [totalDeath] => 11
            [newDeath] => +1
            [totalRecovered] => 34
            [seriousUser] => 298
        )

    [91] => Array
        (
            [name] => bulgaria
            [totalCase] => 331
            [newCase] => +38
            [totalDeath] => 7
            [newDeath] => +4
            [totalRecovered] => 11
            [seriousUser] => 313
        )

    [92] => Array
        (
            [name] => tunisia
            [totalCase] => 278
            [newCase] => +51
            [totalDeath] => 8
            [newDeath] => +1
            [totalRecovered] => 2
            [seriousUser] => 268
        )

    [93] => Array
        (
            [name] => bosnia and herzegovina
            [totalCase] => 278
            [newCase] => +41
            [totalDeath] => 6
            [newDeath] => +2
            [totalRecovered] => 8
            [seriousUser] => 264
        )

    [94] => Array
        (
            [name] => north macedonia
            [totalCase] => 241
            [newCase] => +22
            [totalDeath] => 4
            [newDeath] => +1
            [totalRecovered] => 3
            [seriousUser] => 234
        )

    [95] => Array
        (
            [name] => san marino
            [totalCase] => 224
            [newCase] => +1
            [totalDeath] => 22
            [newDeath] => +1
            [totalRecovered] => 6
            [seriousUser] => 196
        )

    [96] => Array
        (
            [name] => burkina faso
            [totalCase] => 207
            [newCase] => +27
            [totalDeath] => 11
            [newDeath] => +2
            [totalRecovered] => 21
            [seriousUser] => 175
        )

    [97] => Array
        (
            [name] => albania
            [totalCase] => 197
            [newCase] => +11
            [totalDeath] => 10
            [newDeath] => +2
            [totalRecovered] => 31
            [seriousUser] => 156
        )

    [98] => Array
        (
            [name] => azerbaijan
            [totalCase] => 182
            [newCase] => +17
            [totalDeath] => 4
            [newDeath] => +1
            [totalRecovered] => 15
            [seriousUser] => 163
        )

    [99] => Array
        (
            [name] => ghana
            [totalCase] => 141
            [newCase] => +4
            [totalDeath] => 5
            [newDeath] => +1
            [totalRecovered] => 2
            [seriousUser] => 134
        )

    [100] => Array
        (
            [name] => brunei
            [totalCase] => 120
            [newCase] => +5
            [totalDeath] => 1
            [newDeath] => +1
            [totalRecovered] => 25
            [seriousUser] => 94
        )

    [101] => Array
        (
            [name] => cuba
            [totalCase] => 119
            [newCase] => +39
            [totalDeath] => 3
            [newDeath] => +1
            [totalRecovered] => 4
            [seriousUser] => 112
        )

    [102] => Array
        (
            [name] => sri lanka
            [totalCase] => 113
            [newCase] => +7
            [totalDeath] => 1
            [newDeath] => +1
            [totalRecovered] => 9
            [seriousUser] => 103
        )

    [103] => Array
        (
            [name] => uzbekistan
            [totalCase] => 104
            [newCase] => +16
            [totalDeath] => 2
            [newDeath] => +1
            [totalRecovered] => 5
            [seriousUser] => 97
        )

    [104] => Array
        (
            [name] => guadeloupe
            [totalCase] => 102
            [newCase] => +29
            [totalDeath] => 2
            [newDeath] => +1
            [totalRecovered] => 17
            [seriousUser] => 83
        )

    [105] => Array
        (
            [name] => trinidad and tobago
            [totalCase] => 76
            [newCase] => +10
            [totalDeath] => 3
            [newDeath] => +1
            [totalRecovered] => 1
            [seriousUser] => 72
        )

    [106] => Array
        (
            [name] => drc
            [totalCase] => 65
            [newCase] => +14
            [totalDeath] => 6
            [newDeath] => +3
            [totalRecovered] => 2
            [seriousUser] => 57
        )

    [107] => Array
        (
            [name] => monaco
            [totalCase] => 43
            [newCase] => +1
            [totalDeath] => 1
            [newDeath] => +1
            [totalRecovered] => 1
            [seriousUser] => 41
        )

)
```

----------

# COVID-19 CORONAVIRUS OUTBREAK

# Corona Virus Outbreak API

A tiny and small program to crawler and analyze outbreak of COVID-19 in world and every country using PHP.

## Confirmed Cases and Deaths by Country, Territory, or Conveyance

The novel coronavirus COVID-19 is affecting 45 countries and territories around the world and 1 international conveyance (the "Diamond Princess" cruise ship harbored in Yokohama, Japan).

The bulk of China's new cases and deaths are reported after 22:00 GMT (5:00 PM ET) for Hubei (lately with delays of up to 2 hours), and after 00:00 GMT (7:00 PM ET) for the rest of China (lately with delays of up to 9 hours).

---------

# Max Base

My nickname is Max, Programming language developer, Full-stack programmer. I love computer scientists, researchers, and compilers. ([Max Base](https://maxbase.org/))

## Asrez Team

A team includes some programmer, developer, designer, researcher(s) especially Max Base.

[Asrez Team](https://www.asrez.com/)
