<?php 
//koneksi ke database
 $conn = mysqli_connect("localhost","laras","laras","ecommerce");

function tambah ($data){
	global $conn;
	$kode=htmlspecialchars($data['kode']);
	$merk=htmlspecialchars($data['merk']);
	$nama=htmlspecialchars($data['nama']);
	$ket=htmlspecialchars($data['ket']);
	$jumlah=htmlspecialchars($data['jumlah']);
	$harga=htmlspecialchars($data['harga']);
	$foto=upload();
		if (!$foto){
			return false;
		}

	//query insert data
	$query = "INSERT INTO produk (KodeProduk , NamaProduk , MerkProduk, KetProduk, Jumlah, HargaProduk , foto) 
	VALUES ('$kode','$nama','$merk', '$ket', '$jumlah','$harga','$foto') ";
	mysqli_query($conn,$query);

	return mysqli_affected_rows($conn);
 
}

function upload(){
	$namafile=$_FILES['foto']['name'];
	$ukuranfile=$_FILES['foto']['size'];
	$error=$_FILES['foto']['error'];
	$namatempat=$_FILES['foto']['tmp_name'];

	//cek apakah tidak ada gambar yang diupload
	if($error=== 4){
	echo "<script>
		alert('pilih gambar terlebih dahulu!');
	</script>";
	return false;
	}

	//cek apakah yang diupload adalah gambar
	$ekstensivalid=['jpg','jpeg','png'];
	$ekstensi= explode ('.' ,$namafile);
	$ekstensi= strtolower(end($ekstensi));
	if (!in_array($ekstensi,$ekstensivalid)){
	echo "<script>  
		alert('yang anda upload bukan gambar!');
	</script>";
	return false;
}

	//cek jika ukurannya terlalu besar
	if($ukuranfile >1000000){
	echo "<script>
		alert('ukuran gambar terlau besar!');
	</script>";
	return false;
	}

	//gambar siap di upload
	move_uploaded_file($namatempat, 'img/' . $namafile);
	return $namafile;
}

function query($query){
	global $conn;  
	$result= mysqli_query($conn, $query);
	$rows=[];
	while($row = mysqli_fetch_assoc($result)){
		$rows[] = $row;
	}
	return $rows;
}