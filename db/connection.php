<?php

    $dsn = 'mysql:host=localhost;dbname=iteh2_lab1';
    $username = "root";
    $password = "";

try{
    $pdo = new PDO($dsn, $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
}catch(PDOException $e) {
    die();
}

$sql_base = <<< QUERY
    select i.`name`, i.`price`, i.`quantity`, i.`quality`, v.`name` `vendor`, c.`name` `category` from `ITEMS` i 
        join `VENDORS` v on v.ID_Vendor = i.FID_Vendor 
        join `CATEGORY` c on c.ID_Category = i.FID_Category 
    QUERY;

$sql_price = $sql_base . " where price between :from and :to";
$sql_type = $sql_base . " where c.`name` = :type";
$sql_vendor = $sql_base . " where v.`name` = :vendor";