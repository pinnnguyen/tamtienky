<?php
$sqlname = 'root';
$sqlpass = 'root';//xjyxi.com
$dbhost = 'localhost';
$dbname = 'game';
$dsn = "mysql:host=$dbhost;dbname=$dbname;";
$dblj = new PDO($dsn, $sqlname, $sqlpass, array(PDO::ATTR_PERSISTENT => true));
$dblj->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$dblj->query("SET NAMES utf8mb4");
