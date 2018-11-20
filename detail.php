<link rel="stylesheet" type="text/css" href="style.css">
<?php 			
include ("header.php");
include ("functions.php");
include ("opsi.php");
$id=$_GET['id'];

$mhs = query("SELECT * FROM produk where IdProduk='$id' ");


?>


<?php	 foreach ($mhs as $row) : ?>

<div class="detail">

		<div>
		<img src="img/<?= $row["foto"] ;?>" ></div>
		<div>
		Merk Produk :<p><?php echo $row['MerkProduk'];  ?></p><br><br>
		Nama Produk :<p><?php echo $row['NamaProduk']; ?></p><br><br>
		Keterangan : <br> <br><?php echo $row['KetProduk']; ?><br><br>
		Harga : Rp <?php echo $row['HargaProduk']; ?>&nbsp&nbsp&nbsp&nbsp
		<a href="#">BELI</a> <br>
		</div>
</div>

<?php endforeach ?>
<?php 
include ("end.php"); ?>