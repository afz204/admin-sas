<?php
$id = $_GET['id'];
$data = new Admin();

    if (isset($_POST['addTest']))
    {
        $kode = $_POST['txt_kode'];
        $admin = $_POST['txt_admin'];
        $nama = $_POST['txt_nama'];
        $n = $_POST['txt_nilai'];
        if ($n == "0")
        {
            echo "<script>
            alert('GRADE is not NULL');
            window.location.href='?p=input-nilai&id=".$id."';
            </script>";
        } else
        {
            $query = "INSERT INTO tb_hasil_test (kd_test, nama_penilaian, nilai, kd_admin) VALUES (:kd, :nama, :nilai, :admin)";
            $sys = $data->runQuery($query);
            $sys->execute(array(
                ':kd'   => $kode,
                ':nama' => $nama,
                ':nilai'=> $n,
                ':admin'=> $admin
            ));
            if (!$sys){
                echo "data tidak masuk";
            } else {

            }
        }
    }elseif (isset($_POST['addInterview'])){
        $kode = $_POST['txt_kode'];
        $admin = $_POST['txt_admin'];
        $nama = $_POST['txt_nama'];
        $n = $_POST['txt_nilai'];
        if ($n == "0")
        {
            echo "<script>
            alert('GRADE is not NULL');
            window.location.href='?p=input-nilai&id=".$id."';
            </script>";
        } else
        {
            $query = "INSERT INTO tb_hasil_interview (kd_interview, nama_penilaian, nilai, kd_admin) VALUES (:kd, :nama, :nilai, :admin)";
            $sys = $data->runQuery($query);
            $sys->execute(array(
                ':kd'   => $kode,
                ':nama' => $nama,
                ':nilai'=> $n,
                ':admin'=> $admin
            ));
            if (!$sys){
                echo "data tidak masuk";
            } else {

            }
        }
    }

    $sql ="SELECT tb_info_test.no_ktp, tb_info_test.kode_test, tb_info_interview.kd_interview FROM tb_info_test
            INNER JOIN tb_info_interview ON tb_info_interview.no_ktp = tb_info_test.no_ktp WHERE tb_info_test.no_ktp = :id";
    $stmt = $data->runQuery($sql);
    $stmt->execute(array(
        ':id'   => $id
    ));

    $info = $stmt->fetch(PDO::FETCH_LAZY);
    $test = $info['kode_test'];
    $interview = $info['kd_interview'];
?>

<div class="row">
    <div class="col-md-6">
        <div class="x_panel">
            <div class="x_title">
                <h2>Data Test <span class="small">hasil psikotes</span></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"></a>
                    <li><a class="collapse-link"></a>
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <br>
                <form class="form-inline" method="post" action="">
                    <div class="form-group">
                        <label class="sr-only" for="exampleInputEmail3">Email address</label>
                        <input type="text" name="txt_nama" class="form-control" id="exampleInputEmail3" placeholder="nama kriteria penilaian" required>
                        <input type="hidden" name="txt_kode" class="form-control" id="exampleInputEmail3" value="<?php echo $info['kode_test'];?>">
                        <input type="hidden" name="txt_admin" class="form-control" id="exampleInputEmail3" value="<?php echo $admin_id?>">
                    </div>
                    <div class="form-group">
                    <select name="txt_nilai" class="form-control">
                        <option value="0" selected>GRADE</option>
                        <option value="A">=> A</option>
                        <option value="B">=> B</option>
                        <option value="C">=> C</option>
                        <option value="D">=> D</option>
                    </select>
            </div>
                    <button type="submit" name="addTest" class="btn btn-sm btn-danger"><span class="fa fa-fw fa-plus"></span></button>
                </form>
                <br>
                <table class="table table-striped">
                    <thead>
                    <th>nama kriteria</th>
                    <th>grade</th>
                    <th>#</th>
                    </thead>
                    <tbody>
                    <?php
                        $qr = "SELECT * FROM tb_hasil_test WHERE kd_test = :kd";
                        $soq = $data->runQuery($qr);
                        $soq->execute(array(
                            ':kd'   => $test
                        ));
                        while ($row = $soq->fetch(PDO::FETCH_LAZY)){
                    ?>
                    <tr>
                        <td width="70%"><?php echo $row['nama_penilaian'];?></td>
                        <td width="20%"><?php echo $row['nilai'];?></td>
                        <td width="10%">
                            <a href="php/delete-nilai-test.php?kode=<?php echo $row['id'];?>&id=<?php echo $id;?>" onclick="return confirm('Are you sure you want to delete this item?');">
                                <button class="btn btn-xs btn-danger"><span class="fa fa-fw fa-trash"></span></button>
                            </a>
                        </td>
                    </tr>
                    <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="x_panel">
            <div class="x_title">
                <h2>Data Interview <span class="small">hasil interviews</span></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"></a>
                    <li><a class="collapse-link"></a>
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <br>
                <form class="form-inline" method="post" action="">
                    <div class="form-group">
                        <label class="sr-only" for="exampleInputEmail3">Email address</label>
                        <input type="text" name="txt_nama" class="form-control" id="exampleInputEmail3" placeholder="nama kriteria penilaian" required>
                        <input type="hidden" name="txt_kode" class="form-control" id="exampleInputEmail3" value="<?php echo $info['kd_interview'];?>">
                        <input type="hidden" name="txt_admin" class="form-control" id="exampleInputEmail3" value="<?php echo $admin_id?>">
                    </div>
                    <div class="form-group">
                        <select name="txt_nilai" class="form-control">
                            <option value="0" selected>GRADE</option>
                            <option value="A">=> A</option>
                            <option value="B">=> B</option>
                            <option value="C">=> C</option>
                            <option value="D">=> D</option>
                        </select>
                    </div>
                    <button type="submit" name="addInterview" class="btn btn-sm btn-danger"><span class="fa fa-fw fa-plus"></span></button>
                </form>
                <br>
                <table class="table table-striped">
                    <thead>
                    <th>nama kriteria</th>
                    <th>grade</th>
                    <th>#</th>
                    </thead>
                    <tbody>
                    <?php
                    $qr = "SELECT * FROM tb_hasil_interview WHERE kd_interview = :kd";
                    $soq = $data->runQuery($qr);
                    $soq->execute(array(
                        ':kd'   => $interview
                    ));
                    while ($row = $soq->fetch(PDO::FETCH_LAZY)){
                        ?>
                        <tr>
                            <td width="70%"><?php echo $row['nama_penilaian'];?></td>
                            <td width="20%"><?php echo $row['nilai'];?></td>
                            <td width="10%">
                                <a href="php/delete-nilai-interview.php?kode=<?php echo $row['id'];?>&id=<?php echo $id;?>" onclick="return confirm('Are you sure you want to delete this item?');">
                                    <button class="btn btn-xs btn-danger"><span class="fa fa-fw fa-trash"></span></button>
                                </a>
                            </td>
                        </tr>
                    <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
