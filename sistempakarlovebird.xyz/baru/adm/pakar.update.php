<?php
	session_start();
	include_once('admin.session.php');
	$kode = $_GET['kode'];
	$sql	= mysqli_query($GLOBALS["___mysqli_ston"], "select * from penyakit_gejala where kode_penyakit='$kode'");
	$data	= mysqli_fetch_array($sql);
	if(mysqli_num_rows($sql) > 0){
		$id_gejala	= $data['id_gejala'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Edit Ilmu Pakar</title>
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

<?php
	include_once('menu.php');
?>
<div class="container">
        <div class="navbar-inner" style="border:1px solid #bbb; border-radius:10px; padding:10px 20px 10px 20px; margin-top:50px; margin-left:auto; margin-right:auto;">
			<div class="modal-header">
            	<h3>Edit Ilmu Pakar</h3>
            </div>
            <div style="margin-top:10px;">
            	<form class="form-horizontal" name="form1" method="post" action="" enctype="multipart/form-data">
                    <div class="control-group">
                        <label class="control-label" for="kode_penyakit">Nama Penyakit</label>
                        <div class="controls">
                            <select class="input-xxlarge" name="kode_penyakit" id="kode_penyakit">
								<?php
									$sp0 = mysqli_query($GLOBALS["___mysqli_ston"], "select * from penyakit where kode_penyakit='$kode'");
									if($dp0 = mysqli_fetch_array($sp0)){
                                		echo "<option value='$kode'>$kode == $dp0[nama_penyakit]</option>";
									}
								?>
                                <?php
                                    $sp = mysqli_query($GLOBALS["___mysqli_ston"], "select * from penyakit");
                                    while($dp = mysqli_fetch_array($sp)){
										echo "<option value=$dp[kode_penyakit]>$dp[kode_penyakit] == $dp[nama_penyakit]</option>";
									}
                                ?>
                            </select>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <label class="control-label" for="gejala">Gejala</label>
                        <div class="controls">
                        	<?php
                            	$sg = mysqli_query($GLOBALS["___mysqli_ston"], "select * from gejala");
								while($dg = mysqli_fetch_array($sg)){
									echo "<input type='checkbox' name='item[]' id_gejala='item[]' value='$dg[id_gejala]'>";
									echo "  $dg[kode_gejala] == $dg[nama_gejala]<br>";
								}
							?>
                        </div>
                    </div>
                    <div class="control-group">
                    	<label class="control-label" for="simpan"></label>
                        <div class="controls">
	                    	<input name="simpan" type="submit" id="simpan" value="Simpan" class="btn btn-success">
                            <input name="batal" type="submit" id="batal" value="Batal" class="btn btn-warning">
						</div>
                    </div>
                    
                    <?php }
						if(isset($_POST['simpan'])){
							mysqli_query($GLOBALS["___mysqli_ston"], "delete from penyakit_gejala where kode_penyakit='$kode'") or die(mysqli_error($GLOBALS["___mysqli_ston"]));
							
							$jumlah = count($_POST['item']);
							
							for($i=0; $i < $jumlah; $i++){
								$gejala=$_POST['item'][$i];
								
								
								$q=mysqli_query($GLOBALS["___mysqli_ston"], "insert into penyakit_gejala(kode_penyakit, id_gejala) values ('$_POST[kode_penyakit]', '$gejala')") or die(mysqli_error($GLOBALS["___mysqli_ston"]));
							}
								
								if($q){
									echo "<script language=javascript> alert('Data Berhasil Disimpan');
											window.location='pakar.php'</script>";
								}
								else{
									echo "Data Gagal Di Simpan";
									echo "Silahkan <a href = 'pakar.php'>Ulangi Disini</a>";
								}
						}
						
						if(isset($_POST['batal'])){
							echo "<script language=javascript>
								window.location='pakar.php';
								</script>";
							exit;
						}
					?>
                </form>
			</div>
    	</div>
</div>

<br><br><br><br>
<?php include_once('../footer.php'); ?>
<script src="../js/jquery-1.8.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>

</body>
</html>