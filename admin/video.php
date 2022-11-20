<?php

//include koneksi database
include('koneksi.php');

//get data dari form
$id_video     = $_POST['id_video'];
$tgl          = $_POST['tanggal'];
$judul        = $_POST['judul'];
$link_video   = $_POST['link_video'];


//query update data ke dalam database berdasarkan ID
$query = "UPDATE tb_video SET tanggal = '$tgl', judul = '$judul', link_video = '$link_video' WHERE id_video = '$id_video'";

//kondisi pengecekan apakah data berhasil diupdate atau tidak
if($connection->query($query)) {
    //redirect ke halaman index.php 
    header("location: dashboard.php");
} else {
    //pesan error gagal update data
    echo "Data Gagal Diupate!";
}

?>