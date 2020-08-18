<?php
	include_once '../lib/database.php';

	$nama	= ((isset($GLOBALS["___mysqli_ston"]) && is_object($GLOBALS["___mysqli_ston"])) ? mysqli_real_escape_string($GLOBALS["___mysqli_ston"], $_POST['username']) : ((trigger_error("[MySQLConverterToo] Fix the mysql_escape_string() call! This code does not work.", E_USER_ERROR)) ? "" : ""));
	$pass	= ((isset($GLOBALS["___mysqli_ston"]) && is_object($GLOBALS["___mysqli_ston"])) ? mysqli_real_escape_string($GLOBALS["___mysqli_ston"], $_POST['password']) : ((trigger_error("[MySQLConverterToo] Fix the mysql_escape_string() call! This code does not work.", E_USER_ERROR)) ? "" : ""));

	$sql	= mysqli_query($GLOBALS["___mysqli_ston"], "SELECT * FROM admin WHERE username='$nama' && password='$pass'");
	$data	= mysqli_fetch_array($sql);

	if(mysqli_num_rows($sql) > 0){
		session_start();
		$_SESSION['id_user']	= $data['id_user'];;
		$_SESSION['username']	= $data['username'];
		$_SESSION['password']	= $data['password'];
		
		echo "<script language=javascript>
				window.location='home.php';
				</script>";
		exit;
		
	}else{
		echo "<script language=javascript>
				window.alert('Login GAGAL');
				history.back();
				</script>";
		exit;
	}
?>