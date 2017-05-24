<div class="x_panel">
<div class="x_title">
  <h2>Projects</h2>
  
  <div class="clearfix"></div>
</div>
<div class="x_content">

  <p>List Job</p>

  <!-- start project list -->
  <table class="table table-striped projects">
    <thead>
      <tr>
        <th style="width: 1%">#</th>
        <th style="width: 20%">Project Name</th>
        <th>Team Members</th>
        <th>Project Progress</th>
        <th>Status</th>
        <th style="width: 20%">#Edit</th>
      </tr>
    </thead>
    <tbody>

    <?php 
      $sql = "SELECT tb_kerjasama_perusahan.nomor_kontrak, tb_kerjasama_perusahan.kode_perusahaan, tb_kerjasama_perusahan.deskripsi, tb_kerjasama_perusahan.tugas, tb_kerjasama_perusahan.tanggung_jwb, tb_kerjasama_perusahan.penempatan, tb_kerjasama_perusahan.tgl_input, tb_job.no_nip, tb_job.kode_detail_job, tb_list_job.nama_job, tb_list_job.deskripsi_job, tb_list_job.keterangan, tb_list_job.start_at, tb_list_job.finish_at,  tb_karyawan.nama_depan, tb_karyawan.nama_belakang, tb_karyawan.foto FROM tb_kerjasama_perusahan
INNER JOIN tb_job ON tb_job.nomor_kontrak=tb_kerjasama_perusahan.nomor_kontrak
INNER JOIN tb_list_job ON tb_list_job.kode_detail_job=tb_job.kode_detail_job
INNER JOIN tb_karyawan ON tb_karyawan.no_NIK=tb_job.no_nip";
      $data = new Karyawan();
      $stmt = $data->runQuery($sql);
      $stmt->execute();

      while ($row = $stmt->fetch(PDO::FETCH_LAZY)) {
        # code...
      if ($row['start_at'] == "") {
        # code...
        $progress = "0";
        $status = "Null";
      }elseif (!empty($row['start_at'] && $row['finish_at'] == "")) {
        # code...
        $progress = "50";
        $status ="In Progress";
      } elseif (!empty($row['finish_at'])) {
        # code...
        $progress = "100";
        $status = "Done";
      }
    ?>
      <tr>
        <td>#</td>
        <td>
          <a style="text-transform: uppercase;"><?php echo $row['nama_job']; ?></a>
          <br>
          <small>Created <?php echo $row['tgl_input']; ?></small>
        </td>
        <td>
          <ul class="list-inline">
            <li>
              <img src="<?php echo $row['foto']; ?>" class="avatar" alt="Avatar">
            </li>
          </ul>
        </td>
        <td class="project_progress">
          <div class="progress progress">
            <div class="progress-bar bg-info" role="progressbar" data-transitiongoal="<?php echo $progress; ?>" aria-valuenow="50" style="width: 0%;"> <?php echo $progress; ?>%</div>
          </div>
          <small><?php echo $progress; ?>% Complete</small>
        </td>
        <td>
          <button type="button" class="btn btn-success btn-xs"><?php echo $status; ?></button>
        </td>
        <td>
          <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
          <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
          <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
        </td>
      </tr>
      <?php } ?>
      
    </tbody>
  </table>
  <!-- end project list -->

</div>
</div>