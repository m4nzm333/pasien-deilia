<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Pasien</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">
    <style media="screen">
    @media all {
      .page-break { display: none; }
      }

      @media print {
      .page-break { display: block; page-break-before: always; }
      }
    </style>
  </head>
  <body>

    <div class="container">
      <h2 class="text-center">
        <u>Kartu Status Pasien</u>
      </h2>
      <br>
      <div class="row">
        <div class="col-8">
          <table width="100%">
            <tbody>
              <tr>
                <td width="100px" rowspan="6"></td>
                <td width="160px">Nama</td>
                <td>
                  : <strong><?php echo $pasien['nama']; ?></strong>
                </td>
              </tr>
              <tr>
                <td>Umur / Tanggal Lahir</td>
                <td>
                  : <strong><?php
                  echo $pasien['umur'].' tahun / ';
                  $date = date_create_from_format( 'Y-m-d' ,$pasien['tanggal_lahir']);
                  setlocale(LC_TIME, "id");
                  echo strftime("%e %B %Y", $date->getTimestamp()); ?></strong>
                </td>
              </tr>
              <tr>
                <td>Jenis Kelamin</td>
                <td>
                  : <strong><?php echo $pasien['jenis_kelamin']; ?></strong>
                </td>

              </tr>
              <tr>
                <td>Alamat</td>
                <td>
                  : <strong><?php echo $pasien['alamat']; ?></strong>
                </td>
              </tr>
              <tr>
                <td>Pekerjaan</td>
                <td>
                  : <strong><?php echo $pasien['pekerjaan']; ?></strong>
                </td>
              </tr>
              <tr>
                <td>Phone</td>
                <td>
                  : <strong><?php echo $pasien['no_hp']; ?></strong>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="col-4">
          <table border="1" width="200px" height="150px">
            <tbody>
              <tr height="10%" style="border : none">
                <td>
                  <h5 class="text-center">Riwayat Alergi</h5>
                </td>
              </tr>
              <tr align="center" valign="top">
                <td>
                  <p><?php echo $pasien['riwayat_alergi']; ?></p>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
      <br>
      <div class="row">
        <div class="col-12">
          <table border="1" width="100%">
            <thead>
              <tr class="text-center">
                <th scope="col" width="40px">No.</th>
                <th scope="col" width="100px">Tanggal</th>
                <th scope="col">Diagnosa</th>
                <th scope="col">Terapi</th>
                <th scope="col" width="200px">Biaya</th>
                <th scope="col">Keterangan</th>
              </tr>
            </thead>
            <tbody>
              <?php $i = 1; foreach($pasien['perawatan'] as $row){ ?>
              <tr class="text-center" style="height: 40px">
                <td><?php echo $i++; ?></td>
                <td><?php echo $row['tanggal']; ?></td>
                <td><?php echo $row['diagnosa']; ?></td>
                <td><?php echo $row['terapi']; ?></td>
                <td class="text-right">Rp. <?php echo number_format($row['biaya'], 2, ',', '.'); ?>,-</td>
                <td><?php echo $row['keterangan']; ?></td>
              </tr>
              <?php } ?>
              <tr class="text-right">
                <td colspan="4">
                  <strong>Total &nbsp</strong>
                </td>
                <td>
                  <strong>Rp. <?php echo number_format($pasien['total_biaya'], 2, ',', '.'); ?>,-</strong>
                </td>
                <td></td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>

    <div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
  </body>
</html>
