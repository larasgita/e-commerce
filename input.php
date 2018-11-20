<?php 
include ("functions.php"); 
?>

<h1>Input barang</h1>
	<form method="post" action="" enctype="multipart/form-data"> 
		<table >
			<tr>
				<td>Kode Barang</td>
				<td><input type="text" name="kode"></td>
			</tr>
				<tr>
				<td>Merk Barang</td>
				<td><input type="text" name="merk"></td>
			</tr>
			<tr>
				<td>Nama Barang</td>
				<td><input type="text" name="nama"></td>
			</tr>
			<tr>
				<td>Jumlah Barang</td>
				<td><input type="text" name="jumlah"></td>
			</tr>
			<tr>
				<td>Harga Barang</td>
				<td><input type="text" name="harga"></td>
			</tr>
			<tr>
				<td>Keterangan</td>
				<td><input type="text" name="ket"></td>
			</tr>
			<tr>
				<td>Foto Barang</td>
				<td><input type="file" name="foto"></td>
			</tr>
		</table>
		<button type="submit" name="OK">OK</button> <button type="reset">reset</button>
	</form>

<?php 
if(isset($_POST['OK'])) {
tambah($_POST);
}
 ?>