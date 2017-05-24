<?php

$id = $_GET['id'];

$jadwal = new Karyawan();

$stmt  = $jadwal->runQuery("SELECT no_ktp FROM tb_info_test WHERE :id");
$stmt->execute(array(
  ':id' => $id));
  if ($stmt->rowCount() == 0) {
    $stmt = $jadwal->runQuery("SELECT * FROM tb_karyawan WHERE no_ktp = :id");
$stmt->bindParam(':id', $id);
$stmt->execute();

$id = "kode_test";
$kode = "TESPSKT";
$tbName = "tb_info_test";
$kd = $jadwal->Generate($id, $kode, $tbName);
// ===========================================//

$row = $stmt->fetch(PDO::FETCH_LAZY);



if (isset($_POST['addJadwal'])) {
  # code...

  $kodeTest = strip_tags($_POST['kode_test']);
  $ktp = strip_tags($_POST['no_ktp']);
  $kdAdmin = strip_tags($_POST['kode_admin']);
  $tanggalTest = strip_tags($_POST['tanggal']);

  $input = new Karyawan();
  $stmt = $input->addTest($kodeTest, $ktp, $kdAdmin, $tanggalTest);
  if (!$stmt) {
    # code...
    echo "data tidak masuk";
  }else{
    print "<script>window.location='index.php?p=schedule-test';</script>";
  }


}



?>

<div class="x_panel">
    <div class="x_title">
      <h2>Input Mask</h2>
      
      <div class="clearfix"></div>
    </div>
    <div class="x_content">
      <br>
      <form method="post" action="" class="form-horizontal form-label-left">
          <div class="form-group">
              <label class="control-label col-md-3 col-sm-3 col-xs-3">Kode Test</label>
              <div class="col-md-5 col-sm-5 col-xs-9">
                <input name="kode_test" type="text" class="form-control" value="<?php echo $kd; ?>" readonly>
                <input name="kode_admin" type="hidden" class="form-control" value="<?php echo $admin_id; ?>">
                <input name="no_ktp" type="hidden" class="form-control" value="<?php echo $row['no_ktp']; ?>">

              </div>
          </div>
          <div class="form-group">
              <label class="control-label col-md-3 col-sm-3 col-xs-3">Calon Karyawan</label>
              <div class="col-md-5 col-sm-5 col-xs-9">
                <input name="nama_karyawan" type="text" class="form-control" value="<?php echo $row['nama_depan']; ?> <?php echo $row['nama_belakang']; ?>" readonly>
              </div>
          </div>
          <div class="form-group">
              <label class="control-label col-md-3 col-sm-3 col-xs-3">Tanggal Test Psikolog</label>
              <div class="col-md-5 col-sm-5 col-xs-9">
                <div class="control-group">
                    <input type="text" class="form-control has-feedback-left" name="tanggal" id="datepsikotes"  aria-describedby="inputSuccess2Status4">
                    <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
                    <span id="inputSuccess2Status4" class="sr-only">(success)</span>
                  </div>
              </div>
          </div>
          <div class="form-group">
            <div class="col-md-9 col-md-offset-3">
              <button type="submit" name="addJadwal" class="btn btn-success">Submit</button>
            </div>
          </div>

      </form>
    </div>
</div>






                </div>
              
  </div>
  </div>
  </div>
<?php
  } else {
    
    $stmt = $jadwal->runQuery("SELECT tb_karyawan.nama_depan, tb_karyawan.nama_belakang, tb_info_test.kode_test, tb_info_test.no_ktp, tb_info_test.date_test, tb_info_test.nilai, tb_info_test.kode_admin FROM tb_info_test
LEFT JOIN tb_karyawan ON tb_karyawan.no_ktp=tb_info_test.no_ktp
WHERE tb_info_test.no_ktp = :id");
$stmt->bindParam(':id', $id);
$stmt->execute();



$row = $stmt->fetch(PDO::FETCH_LAZY);



if (isset($_POST['addJadwal'])) {
  # code...

  $kodeTest = strip_tags($_POST['kode_test']);
  $ktp = strip_tags($_POST['no_ktp']);
  $kdAdmin = strip_tags($_POST['kode_admin']);
  $tanggalTest = strip_tags($_POST['tanggal']);

  $input = new Karyawan();
  $stmt = $input->runQuery("UPDATE tb_info_test SET kode_test = :kode, date_test = :tanggal, kode_admin = :admin WHERE no_ktp = :id");
  $stmt->execute(array(
    ':kode'   => $kodeTest,
    ':tanggal'=> $tanggalTest,
    ':admin'  => $kdAdmin,
    ':id'     => $ktp));
  if (!$stmt) {
    # code...
    echo "data tidak masuk";
  }else{
    print "<script>window.location='index.php?p=schedule-test';</script>";
  }


}



?>

<div class="x_panel">
    <div class="x_title">
      <h2>Update Schedule</h2>
      
      <div class="clearfix"></div>
    </div>
    <div class="x_content">
      <br>
      <form method="post" action="" class="form-horizontal form-label-left">
          <div class="form-group">
              <label class="control-label col-md-3 col-sm-3 col-xs-3">Kode Test</label>
              <div class="col-md-5 col-sm-5 col-xs-9">
                <input name="kode_test" type="text" class="form-control" value="<?php echo $row['kode_test']; ?>" readonly>
                <input name="kode_admin" type="hidden" class="form-control" value="<?php echo $admin_id; ?>">
                <input name="no_ktp" type="hidden" class="form-control" value="<?php echo $row['no_ktp']; ?>">

              </div>
          </div>
          <div class="form-group">
              <label class="control-label col-md-3 col-sm-3 col-xs-3">Calon Karyawan</label>
              <div class="col-md-5 col-sm-5 col-xs-9">
                <input name="nama_karyawan" type="text" class="form-control" value="<?php echo $row['nama_depan']; ?> <?php echo $row['nama_belakang']; ?>" readonly>
              </div>
          </div>
          <div class="form-group">
              <label class="control-label col-md-3 col-sm-3 col-xs-3">Tanggal Test Psikolog</label>
              <div class="col-md-5 col-sm-5 col-xs-9">
                <div class="control-group">
                    <input type="text" class="form-control has-feedback-left" name="tanggal" id="datepsikotes"  aria-describedby="inputSuccess2Status4" value="<?php echo $row['date_test']; ?>">
                    <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
                    <span id="inputSuccess2Status4" class="sr-only">(success)</span>
                  </div>
              </div>
          </div>
          <div class="form-group">
            <div class="col-md-9 col-md-offset-3">
              <button type="submit" name="addJadwal" class="btn btn-success">Submit</button>
            </div>
          </div>

      </form>
    </div>
</div>






                </div>
              
  </div>
  </div>
  </div>
<?php
  } ?>

