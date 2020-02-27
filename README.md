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


## Using from COVID19 API

- Download source files
- Upload sources files in a webserver (e.g: /var/www/html or /usr/share/nginx/html or ...)
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
