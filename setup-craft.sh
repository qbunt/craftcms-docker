#!/bin/bash


# Download craft

curl -o latest.zip -L 'http://craftcms.com/latest.zip?accept_license=yes'
mkdir source
unzip latest.zip -d source
mv source/public source/html
rm latest.zip

cat << EOF > source/craft/config/db.php
<?php

/**
 * Database Configuration
 *
 * All of your system's database configuration settings go in here.
 * You can see a list of the default settings in craft/app/etc/config/defaults/db.php
 */

return array(

	// The database server name or IP address. Usually this is 'localhost' or '127.0.0.1'.
	'server' => 'db',

	// The name of the database to select.
	'database' => 'craft',

	// The database username to connect with.
	'user' => 'root',

	// The database password to connect with.
	'password' => '',

	// The prefix to use when naming tables. This can be no more than 5 characters.
	'tablePrefix' => 'craft',

);
EOF