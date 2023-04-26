# mapon_api
 
## To start
* in phpmyadmin create 'mapon_api' database, and then import mapon_api.sql file that is stored in uploads
* in /Lib/var.php set your mysql login credentials. And in upload.php at the top set your mapon $api_key
* place all files in wanted directory, and set upload.php, and 'uploads' folder right permissions, something like '777'
* navigate to ./register.php to create an account 

### libraries used
* php timezone database, i imported it to quicly search up php timezone by country iso, i had to search for it because [geoip_time_zone_by_country_and_region](https://www.php.net/manual/en/function.geoip-time-zone-by-country-and-region.php) php function also required region code, which i didn't have
* for database menagement [PHP-MySQLi-Database-Class](https://github.com/Skrazzo/mapon_api/edit/main/README.md), library has a lot of features, that make sql statements easy af. + protection against sql injection is applied everywhere automatically
