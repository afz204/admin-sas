<br/>
<h4 class="page-header">List berdasarkan Karyawan</h4>


<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

    <?php
    $kode = $_GET['id'];
    $conn = new Karyawan();
    $query = "SELECT tb_job.nomor_kontrak, tb_list_karyawan.no_nip, tb_karyawan.nama_depan, tb_karyawan.nama_belakang FROM tb_job INNER JOIN tb_list_karyawan ON tb_list_karyawan.kode_list_karyawan=tb_job.nomor_kontrak INNER JOIN tb_karyawan ON tb_karyawan.no_NIK=tb_list_karyawan.no_nip WHERE tb_job.nomor_kontrak =:nomor_kontrak";
    $stmt = $conn->runQuery($query);
    $stmt->execute(array(
        ':nomor_kontrak' => $kode
    ));
    while ($col = $stmt->fetch(PDO::FETCH_LAZY)) {
        ?>

        <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingOne">
                <h4 class="panel-title">
                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#1" aria-expanded="true"
                       aria-controls="1">
                        <?php echo $col['nama_depan']; ?>
                    </a>
                </h4>
            </div>
            <div id="1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                <div class="panel-body"> <?php echo $col['no_nip']; ?>
                </div>
            </div>
        </div>

     <?php
    }
    ?>


</div>