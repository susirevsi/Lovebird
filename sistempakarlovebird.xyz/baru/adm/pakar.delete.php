<?php
	session_start();
	include_once('admin.session.php');
	$kode	= $_GET['kode'];
	$sql	= mysqli_query($GLOBALS["___mysqli_ston"], "delete from penyakit_gejala where kode_penyakit='$kode'");
	
	echo "<script language=javascript>
			window.alert('Hapus Berhasil');
			window.location='pakar.php';
			</script>";
?>