<?php
	($GLOBALS["___mysqli_ston"] = mysqli_connect('localhost', 'root', '')) or die("<h2>Koneksi Database Gagal..</h2>");
	mysqli_select_db($GLOBALS["___mysqli_ston"], soba4974_sistempakarlovebird) or die("<h2>Database Belum Ada..</h2>");
?>

