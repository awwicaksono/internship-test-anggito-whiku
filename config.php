<?php 
$config = mysqli_connect("localhost","root","","suitmedia");
if (!$config) {
	die('Gagal terhubung ke MySQLi :'.mysqli_connect_error());
}
 ?>