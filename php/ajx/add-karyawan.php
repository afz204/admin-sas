<?php

$id = $_GET['id'];
$kode = $_GET['kode'];

include_once '../../config/api.php';

    $kelas = new Admin();
    $sql = "INSERT INTO tb_job (nomor_kontrak, no_nip) VALUES (:kode, :id)";
    $stmt = $kelas->runQuery($sql);

    $stmt->execute(array(
    	':kode'		=> $kode,
    	':id'		=> $id));

    if (!$stmt) {
    	# code...
    	echo "gagal";
    } else {

        $query = "UPDATE tb_karyawan SET status = '1' WHERE no_ktp = :data";
        $stmt = $kelas->runQuery($query);
        $stmt->execute(array(
        ':data' => $id));
    	
          print "<script>window.location='../../index.php?p=select-karyawan&id=".$kode."';</script>";

    }

?>