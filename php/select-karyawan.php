<?php
$id = $_GET['id'];

$data  = new Admin();
$sql = "SELECT tb_kerjasama_perusahan.nomor_kontrak, tb_temporary_perusahaan.nama_perusahaan, tb_temporary_perusahaan.kode_perusahaan, tb_temporary_perusahaan.nama_perusahaan, tb_temporary_perusahaan.kebutuhan, tb_temporary_perusahaan.kode_pekerjaan FROM tb_kerjasama_perusahan
LEFT JOIN tb_temporary_perusahaan ON tb_temporary_perusahaan.kode_perusahaan=tb_kerjasama_perusahan.kode_perusahaan WHERE tb_kerjasama_perusahan.nomor_kontrak = :kode";
$stmt = $data->runQuery($sql);
$stmt->execute(array(
	':kode'	=> $id));
while ($row = $stmt->fetch(PDO::FETCH_LAZY)) {
	# code...

	$noKontrak = $row['nomor_kontrak'];

	if (!empty($row['kode_pekerjaan'])) {
		# code...
		$kodePekerjaan = $row['kode_pekerjaan'];
		
	?>

<h2>Pilih Karyawan</h2>
<hr>
<p>Select Karyawan untuk bekerja pada Perusahaan <strong><?php echo $row['nama_perusahaan']; ?></strong> dengan NOMOR KONTRAK <strong><?php echo $row['nomor_kontrak']; ?></strong>.</p>
<div class="table-responsive">
    <table class="table table-striped jambo_table bulk_action">
        <thead>
            <tr class="headings">
                <th class="column-title">Nomor KTP </th>
                <th class="column-title">Nomor NIP </th>
                <th class="column-title">Nama Karyawan </th>
                <th class="column-title">Pekerjaan </th>
                <th class="column-title">Action </th>
            </tr>
        </thead>
        <tbody>
        <?php 
        
        $query = "SELECT tb_karyawan.no_ktp, tb_karyawan.no_NIK, tb_karyawan.nama_depan, tb_karyawan.nama_belakang,tb_karyawan.status, tb_apply_pekerjaan.kd_pekerjaan, tb_jenis_pekerjaan.nama_pekerjaan FROM tb_karyawan
LEFT JOIN tb_apply_pekerjaan ON tb_apply_pekerjaan.no_ktp=tb_karyawan.no_ktp
LEFT JOIN tb_jenis_pekerjaan ON tb_jenis_pekerjaan.kd_pekerjaan=tb_apply_pekerjaan.kd_pekerjaan WHERE tb_karyawan.status = '' AND tb_apply_pekerjaan.kd_pekerjaan = :data ";
		$stmt = $data->runQuery($query);
		$stmt->execute(array(
			':data'	=> $kodePekerjaan));
		if ($stmt->rowCount() == '0') {
			# code...
			?>
			<tr>
				<td colspan="5">Data tidak ada</td>
			</tr>
			<?php
		}else{
			while ($col = $stmt->fetch(PDO::FETCH_LAZY)) {
				# code...
			
        ?>
    
           
                <tr class="even pointer">

                    
                   <td><?php echo $col['no_ktp']; ?></td>
                   <td><?php echo $col['no_NIK']; ?></td>
                   <td><?php echo $col['nama_depan']; ?> <?php echo $col['nama_belakang']; ?></td>
                   <td><?php echo $col['nama_pekerjaan']; ?></td>
                   <td>
                   	<a href="php/ajx/add-karyawan.php?id=<?php echo $col['no_NIK']; ?>&kode=<?php echo $row['nomor_kontrak']; ?>">
                   			<button class="btn btn-xs btn-primary"><span class="fa fa-fw fa-plus"></span> Add</button>
                   	</a>
                   </td>

                </tr>
    	<?php } } ?>
        </tbody>
    </table>
</div>

	<?php
	}else{
		$query = "SELECT tb_karyawan.no_ktp, tb_karyawan.no_NIK, tb_karyawan.nama_depan, tb_karyawan.nama_belakang,tb_karyawan.status, tb_apply_pekerjaan.kd_pekerjaan FROM tb_karyawan
LEFT JOIN tb_apply_pekerjaan ON tb_apply_pekerjaan.no_ktp=tb_karyawan.no_ktp WHERE tb_karyawan.status = ''";
	}
?>

<!-- <ul>
	<li><?php echo $row['nomor_kontrak']; ?></li>
	<li><?php echo $row['kode_perusahaan']; ?></li>
	<li><?php echo $row['nama_perusahaan']; ?></li>
	<li><?php echo $row['kebutuhan']; ?></li>
	<li><?php echo $row['kode_pekerjaan']; ?></li>
	<li><?php echo $query; ?></li>
	
</ul>
 -->




<?php } ?>