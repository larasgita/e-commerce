<link rel="stylesheet" type="text/css" href="style.css">
<?php 			
include ("header.php");
include ("functions.php");
include ("opsi.php");

$mhs = query("SELECT * FROM produk where KodeProduk like '03%' ");


?>


<?php $i=1;	 foreach ($mhs as $row) : ?>

<div class="bestsell">

		<div>
		<img src="img/<?= $row["foto"] ;?>" ></div>
		<div>
		<p><?php echo $row['MerkProduk'];  ?><br>
			<?php echo $row['NamaProduk']; ?>
		</p>
		Rp <?php echo $row['HargaProduk']; ?><br>
		<a href="detail.php?id=<?php echo $row['IdProduk']; ?>">DETAIL</a> <br>
		<a href="#">beli</a>
		</div>
</div>

<?php endforeach ?>
<?php 
include ("end.php"); ?>