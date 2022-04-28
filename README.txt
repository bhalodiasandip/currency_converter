# currency_converter

Create new virtual host entry for the project as per below. Here change your actual path to project public folder
<VirtualHost myconverer.dev:80>  
  DocumentRoot "D:/wamp64/www/currency_converter/public"
  <Directory "D:/wamp64/www/currency_converter/public">
    AllowOverride all
  </Directory>
</VirtualHost>

add myconverer.dev into your system's host entry 

Database name: currency_converter

If you require any database changes edit these two file.
.env  file
-----------
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=currency_converter
DB_USERNAME=root
DB_PASSWORD=


/config/database.php file
------------------------
 'mysql' => [
            'driver' => 'mysql',
            'host' => env('DB_HOST', '127.0.0.1'),
            'port' => env('DB_PORT', '3306'),
            'database' => env('DB_DATABASE', 'currency_converter'),
            'username' => env('DB_USERNAME', 'root'),
            'password' => env('DB_PASSWORD', ''),
            'unix_socket' => env('DB_SOCKET', ''),
            'charset' => 'utf8mb4',
            'collation' => 'utf8mb4_unicode_ci',
            'prefix' => '',
            'strict' => true,
            'engine' => null,
        ],
		
		

Delete all contenet from storage\framework\cache folder
m1
