<?php

include 'db.php';
$id = $_GET['id'];

$query = $link->query("SELECT * FROM species WHERE id=$id");
$info = $query->fetch_all(PDO::FETCH_NUM);
