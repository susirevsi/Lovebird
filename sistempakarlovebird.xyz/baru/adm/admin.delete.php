<?php
	session_start();
	include_once('admin.session.php');
	$id	= $_GET['id'];
	$sql	= mysqli_query($GLOBALS["___mysqli_ston"], "delete from admin where id_user='$id'");
	
	echo "<script language=javascript>
			window.alert('Hapus Berhasil');
			window.location='admin.php?hal=1';
			</script>";
	
	session_destroy();		
?>