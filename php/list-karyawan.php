<div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_content">
                    <div class="row">
                      <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                        <ul class="pagination pagination-split">
                          <li><a href="#">A</a></li>
                          <li><a href="#">B</a></li>
                          <li><a href="#">C</a></li>
                          <li><a href="#">D</a></li>
                          <li><a href="#">E</a></li>
                          <li>...</li>
                          <li><a href="#">W</a></li>
                          <li><a href="#">X</a></li>
                          <li><a href="#">Y</a></li>
                          <li><a href="#">Z</a></li>
                        </ul>
                      </div>

                      <div class="clearfix"></div>

                      <div class="row">
                          <div class="col-md-12">
                              <?php

                              $list = new Karyawan();
                              $stmt = $list->runQuery("SELECT tb_karyawan.no_ktp, tb_karyawan.nama_depan, tb_karyawan.nama_belakang, tb_karyawan.email, tb_karyawan.nomor_hp, tb_karyawan.alamat, tb_karyawan.kelurahan, tb_karyawan.kecamatan, tb_karyawan.kota, tb_karyawan.foto, tb_info_test.kode_test, tb_info_interview.kd_interview, tb_hasil_test.kd_test, tb_hasil_interview.kd_interview FROM tb_karyawan
RIGHT JOIN tb_info_test ON tb_info_test.no_ktp = tb_karyawan.no_ktp
RIGHT JOIN tb_info_interview ON tb_info_interview.no_ktp = tb_karyawan.no_ktp
RIGHT JOIN tb_hasil_test ON tb_hasil_test.kd_test = tb_info_test.kode_test
RIGHT JOIN tb_hasil_interview ON tb_hasil_interview.kd_interview = tb_info_interview.kd_interview");
                              $stmt->execute();

                              while ($row = $stmt->fetch(PDO::FETCH_LAZY)) {
                              # code...


                              ?>
                              <div class="col-md-6 col-sm-6 col-xs-12 profile_details">
                                  <div class="well profile_view">
                                      <div class="col-sm-12">
                                          <h4 class="brief"><span class="fa fa-qrcode"></span> <i><?php echo $row['no_NIK']; ?></i></h4>
                                          <div class="left col-xs-8">
                                              <h2><?php echo $row['nama_depan']; ?> <?php echo $row['nama_belakang']; ?></h2>
                                              <p><strong>About: </strong> Web Designer / UI. </p>
                                              <ul class="list-unstyled">
                                                  <li><i class="fa fa-building"></i> Address: <?php echo $row['alamat']; ?>, <?php echo $row['kelurahan']; ?>, <?php echo $row['kecamatan']; ?>, <?php echo $row['kota']; ?></li>
                                                  <li><i class="fa fa-envelope"></i> Mail : <?php echo $row['email']; ?></li>
                                                  <li><i class="fa fa-phone-square"></i> Phone : <?php echo $row['nomor_hp']; ?></li>
                                              </ul>
                                          </div>
                                          <div class="right col-xs-4 text-center">
                                              <img src="<?php echo $row['foto']; ?>" alt="" class="img-rounded img-responsive">
                                          </div>
                                      </div>
                                      <div class="col-xs-12 bottom text-center">
                                          <div class="col-xs-12 col-sm-6 emphasis">
                                              <p class="ratings">
                                                  <a>4.0</a>
                                                  <a href="#"><span class="fa fa-star"></span></a>
                                                  <a href="#"><span class="fa fa-star"></span></a>
                                                  <a href="#"><span class="fa fa-star"></span></a>
                                                  <a href="#"><span class="fa fa-star"></span></a>
                                                  <a href="#"><span class="fa fa-star-o"></span></a>
                                              </p>
                                          </div>
                                          <div class="col-xs-12 col-sm-6 emphasis">
                                              <button type="button" class="btn btn-success btn-xs daftar" data-id="<?php echo $row['no_ktp']; ?>"> <i class="fa fa-user">
                                                  </i> Approve</button>
                                              <a href="?p=detail-karyawan&id=<?php echo $row['no_ktp']; ?>">
                                                  <button type="button" class="btn btn-primary btn-xs">
                                                      <i class="fa fa-user"> </i> View Profile
                                                  </button>
                                              </a>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                                  <?php
                              }
                              ?>
                          </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>