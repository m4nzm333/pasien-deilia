<html lang="en" class="h-100">
	<head>
	    <title>Pasien | Deilia</title>
			<link rel="icon" href="<?php echo base_url(); ?>asset/img/icon.png">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
			<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
			<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap4.min.css">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
			<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	    <style>
	      .bd-placeholder-img {
	        font-size: 1.125rem;
	        text-anchor: middle;
	        -webkit-user-select: none;
	        -moz-user-select: none;
	        -ms-user-select: none;
	        user-select: none;
	      }

	      @media (min-width: 768px) {
	        .bd-placeholder-img-lg {
	          font-size: 3.5rem;
	        }
	      }
	    </style>
  	</head>
	<body class="d-flex flex-column h-100 bg-light">

		<?php $this->load->view('include/navbar'); ?>

		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<?php $this->load->view('include/notification'); ?>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="card">
						<div class="card-body">
							<div class="container-fluid">
								<h2>Tambah Pasien</h2>
								<form method="post" action="<?php echo base_url(); ?>admin/pasien/tambah">
								  <div class="form-group col-md-12">
								    <label for="inputNama">Nama</label>
								    <input type="text" class="form-control" name="inputNamaPasien" id="inputNamaPasien" placeholder="Nama Pasien" required>
								  </div>
									<div class="form-group col-md-12">
								    <label for="inputUmur">Umur</label>
								    <input type="text" class="form-control" name="inputUmur" id="inputUmur" placeholder="Umur" required>
								  </div>
									<div class="form-group col-md-12">
								    <label for="inputTanggalLahir">Tanggal Lahir</label>
								    <input type="text" class="form-control" name="inputTanggalLahir" id="inputTanggalLahir" placeholder="Tanggal Lahir" required>
								  </div>
									<div class="form-group col-md-12">
								    <label for="inputJenisKelamin">Jenis Kelamin</label>
										<select class="form-control" name="inputJenisKelamin" id="inputJenisKelamin" >
											<option value="Laki-laki">Laki-laki</option>
											<option value="Perempuan">Perempuan</option>
										</select>
								  </div>
									<div class="form-group col-md-12">
								    <label for="inputPekerjaan">Pekerjaan</label>
								    <input type="text" class="form-control" name="inputPekerjaan" id="inputPekerjaan" placeholder="Pekerjaan" required>
								  </div>
									<div class="form-group col-md-12">
								    <label for="inputAlamat">Alamat</label>
								    <input type="text" class="form-control" name="inputAlamat" id="inputAlamat" placeholder="Alamat" required>
								  </div>
									<div class="form-group col-md-12">
								    <label for="inputHP">Nomor Hp</label>
								    <input type="text" class="form-control" name="inputHP" id="inputHP" placeholder="Nomor HP" required>
								  </div>
									<div class="form-group col-md-12">
								    <label for="inputRiwayatAlergi">Riwayat Alergi </label>
										<textarea name="inputRiwayatAlergi" rows="5" cols="80" class="form-control" placeholder="Riwayat Alergi"></textarea>
								  </div>
									<div class="form-group col-md-12">
										<button type="submit" name="button" class="btn btn-success btn-lg">
											<i class="fa fa-plus"></i>
											Tambah
										</button>
								  </div>
								</form>

							</div>

						</div>
					</div>
				</div>
				<div class="col-md-8">
					<div class="card">
						<div class="card-body">
							<h1>Tabel Pasien</h1>
							<table class="table table-striped table-bordered table-responsive nowrap" id="tabelPasien">
							  <thead>
							    <tr>
							      <th scope="col">No.</th>
							      <th scope="col">Nama</th>
										<th scope="col">Umur</th>
										<th scope="col">Tanggal Lahir</th>
										<th scope="col">Alamat</th>
										<th scope="col">Nomor HP</th>
										<th scope="col">Action</th>
							    </tr>
							  </thead>
							  <tbody>
									<?php $i = 1; foreach($pasien as $row){ ?>
										<tr>
											<td><?php echo $i++; ?></td>
											<td><?php echo $row['nama']; ?></td>
											<td><?php echo $row['umur']; ?></td>
											<td><?php echo $row['tanggal_lahir']; ?></td>
											<td><?php echo $row['alamat']; ?></td>
											<td><?php echo $row['no_hp']; ?></td>
											<td>
												<a href="<?php echo base_url(); ?>admin/pasien/<?php echo $row['id_pasien']; ?>/detail" class="btn btn-success">
													<i class="fa fa-list"></i>
													Detail
												</a>
												<button type="button" name="button" id="btnEdit" class="btn btn-primary" onclick="edit_pasien(<?php echo $row['id_pasien']; ?>)">
													<i class="fa fa-edit"></i>
													Edit
												</button>
												<button type="button" name="button" id="btnHapus" class="btn btn-danger" onclick="hapus_pasien(<?php echo $row['id_pasien']; ?>)">
													<i class="fa fa-trash"></i>
													Hapus
												</button>
											</td>
										</tr>
									<?php } ?>
							  </tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

		</div>

		<div class="modal fade" id="modalEditPasien" tabindex="-1" role="dialog" aria-labelledby="modalEditPasienLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
				<form method="post" action="#" id="formEditPasien">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="modalEditPasienLabel">Edit Pasien <a href="javascript:void(0)" id="formEditPasienJudul"></a></h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
							<div class="container-fluid">
									<div class="form-group col-md-12">
										<label for="inputNamaEdit">Nama</label>
										<input type="text" class="form-control" name="inputNamaEdit" id="inputNamaEdit" placeholder="Nama Pasien" required>
									</div>
									<div class="form-group col-md-12">
								    <label for="inputJenisKelaminEdit">Jenis Kelamin</label>
										<select class="form-control" name="inputJenisKelaminEdit" id="inputJenisKelaminEdit" >
											<option value="Laki-laki">Laki-laki</option>
											<option value="Perempuan">Perempuan</option>
										</select>
								  </div>
									<div class="form-group col-md-12">
										<label for="inputUmurEdit">Umur</label>
										<input type="text" class="form-control" name="inputUmurEdit" id="inputUmurEdit" placeholder="Nama Pasien" required>
									</div>
									<div class="form-group col-md-12">
										<label for="inputTanggalLahirEdit">Tanggal Lahir</label>
										<input type="text" class="form-control" name="inputTanggalLahirEdit" id="inputTanggalLahirEdit" placeholder="Nama Pasien" required>
									</div>
									<div class="form-group col-md-12">
								    <label for="inputPekerjaanEdit">Pekerjaan</label>
								    <input type="text" class="form-control" name="inputPekerjaanEdit" id="inputPekerjaanEdit" placeholder="Pekerjaan" required>
								  </div>
									<div class="form-group col-md-12">
										<label for="inputAlamatEdit">Alamat</label>
										<input type="text" class="form-control" name="inputAlamatEdit" id="inputAlamatEdit" placeholder="Nama Pasien" required>
									</div>
									<div class="form-group col-md-12">
								    <label for="inputHPEdit">Nomor Hp</label>
								    <input type="text" class="form-control" name="inputHPEdit" id="inputHPEdit" placeholder="Nomor HP" required>
								  </div>
									<div class="form-group col-md-12">
										<label for="inputRiwayatAlergiEdit">Riwayat Alergi </label>
										<textarea name="inputRiwayatAlergiEdit" id="inputRiwayatAlergiEdit" rows="5" cols="80" class="form-control" placeholder="Riwayat Alergi"></textarea>
									</div>
							</div>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        <button type="submit" class="btn btn-primary">Simpan</button>
			      </div>
			    </div>
				</form>
		  </div>
		</div>

		<div class="modal fade" id="modalHapusPasien" tabindex="-1" role="dialog" aria-labelledby="modalHapusPasienLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="modalHapusPasienLabel">Edit Pasien</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
						Ingin menghapus pasien <a href="javascript:void(0)" id="formHapusPasienJudul"></a> ?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <a id="btnModalHapus" class="btn btn-danger">Hapus</a>
		      </div>
		    </div>
		  </div>
		</div>

		<?php $this->load->view('include/footer'); ?>

		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
		<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
		<script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
		<script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap4.min.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment-with-locales.min.js"></script>
		<script type="text/javascript">
			var base_url = '<?php echo base_url(); ?>';
			var counterDT = 0;
			$('#tabelPasien').DataTable();

			function edit_pasien(id) {
				console.log('Edit Pasien ' + id);
				$.ajax({
					url : base_url + 'admin/pasien/data/' + id,
					method : 'GET',
					success : function(respond) {
						var data = JSON.parse(respond);
						console.log(data);
						$('#formEditPasienJudul').text(data.nama);
						$('#formEditPasien').trigger('reset');
						$('#inputNamaEdit').val(data.nama);
						var mydate = new Date(data.tanggal_lahir);
						mydate = (moment(mydate).format('DD/MM/YYYY'));
						$('#inputTanggalLahirEdit').val(mydate);
						$('#inputUmurEdit').val(data.umur);
						$('#inputHPEdit').val(data.no_hp);
						$('#inputAlamatEdit').val(data.alamat);
						if(data.jenis_kelamin == 'Laki-laki'){
							$('#inputJenisKelaminEdit[value=Laki-laki]').attr('selected','selected');
						}
						if(data.jenis_kelamin == 'Perempuan'){
							$('#inputJenisKelaminEdit[value=Perempuan]').attr('selected','selected');
						}
						$('#inputPekerjaanEdit').val(data.pekerjaan);
						$('#inputRiwayatAlergiEdit').val(data.riwayat_alergi);
						$('#formEditPasien').attr('action', base_url + 'admin/pasien/edit/' + id);
						$('#modalEditPasien').modal('show');
					}
				});

			}
			function hapus_pasien(id) {
				console.log('Hapus Pasien ' + id);
				$.ajax({
					url : base_url + 'admin/pasien/data/' + id,
					method : 'GET',
					success : function(respond) {
						var data = JSON.parse(respond);
						console.log(data);
						$('#formHapusPasienJudul').text(data.nama);
						$('#btnModalHapus').attr('href', base_url + 'admin/pasien/hapus/' + id);
					}
				});
				$('#modalHapusPasien').modal('show');
			}
			$( "#inputTanggalLahir" ).datepicker({
	      changeMonth: true,
	      changeYear: true,
				dateFormat: 'dd/mm/yy',
				yearRange: '1940:' + new Date().getFullYear()
	    });
			$( "#inputTanggalLahirEdit" ).datepicker({
	      changeMonth: true,
	      changeYear: true,
				dateFormat: 'dd/mm/yy',
				yearRange: '1940:' + new Date().getFullYear()
	    });
		</script>

	</body>
</html>
