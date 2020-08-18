<?php
	session_start();
	include_once '../lib/database.php';
	include_once 'header.php';
	$id = $_GET['id'];				
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Konsultasi</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<link rel="shortcut icon" href="../img/favicon.png"/>
	<link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
    
	<style>
		body{
			background-image: url(../img/body.jpg);
			background-repeat: repeat;
			background-attachment: fixed;
		}
	</style>
</head>

<body>	

<div class="container">
        <div class="navbar-inner" style="border:1px solid #bbb; border-radius:10px; padding:10px 20px 10px 20px; margin-top:50px; margin-left:auto; margin-right:auto;">
			<div>
            	<div class="text-error.input-prepend pull-left">
                	<h4>Tips Perawatan</h4>
                </div>
                
                <div style="margin-top:10px">
                    <form name="form1" method="post" action="">
                        <table class="table table-condensed table-hover">
                            <?php 
                                $sg = mysqli_query($GLOBALS["___mysqli_ston"], "select * from informasi");
                                while($dg = mysqli_fetch_array($sg)){
                                    echo
                                    "<tr>
                                    <td class='text-left.text-error' width='20%'>$dg[judul]</td>
                                        <td class='text-left.text-error' width='80%'>$dg[isi]</td>		
                                    </tr>";
                                }
                            ?>
                        </table>
                        
                        
                    </form>
				</div>
			</div>
		</div>
</div>

<br><br><br><br>

<script src="../js/jquery-1.8.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>

</body>
</html>