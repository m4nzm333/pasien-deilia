<html lang="en" class="h-100">
	<head>
	    <title>Detail | Deiia</title>

	    <!-- Bootstrap core CSS -->
	    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
			<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
			<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
				<div class="col-md-4">
					<?php $this->load->view('include/notification'); ?>
					<div class="card">
						<div class="card-body">
							<div class="container-fluid">
								<h2>Tambah Status</h2>
								<form method="post" action="<?php echo base_url(); ?>admin/pasien/tambah">
								  <div class="form-group col-md-12">
								    <label for="inputTanggal">Tanggal</label>
								    <input type="text" class="form-control" name="inputTanggal" id="inputTanggal" placeholder="Tanggal" required>
								  </div>
									<div class="form-group col-md-12">
								    <label for="inputDiagnosa">Diagnosa</label>
								    <textarea name="inputDiagnosa" rows="3" cols="80" id="inputDiagnosa" class="form-control" placeholder="Diagnosa"></textarea>
								  </div>
									<div class="form-group col-md-12">
								    <label for="inputTerapi">Terapi</label>
								    <textarea name="inputTerapi" rows="3" cols="80" id="inputTerapi" class="form-control" placeholder="Terapi"></textarea>
								  </div>
									<div class="form-group col-md-12">
								    <label for="inputBiaya">Biaya (Rp)</label>
								    <input type="number" class="form-control" name="inputBiaya" id="inputBiaya" placeholder="Biaya" required>
								  </div>
									<div class="form-group col-md-12">
								    <label for="inputKeterangan">Keterangan</label>
										<textarea name="inputKeterangan" id="inputKeterangan" rows="5" cols="80" class="form-control" placeholder="Riwayat Alergi"></textarea>
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
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-body">
									<div class="container-fluid">
										<h4>Detail Pasien</h4>
										<hr>
										<div class="row">
											<div class="col-sm-6 col-md-3 col-lg-2">
												Nama Pasien
											</div>
											<div class="col-sm-6 col-md-9 col-lg-10">
												<strong>Pasien 1</strong>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6 col-md-3 col-lg-2">
												Umur / Tanggal Lahir
											</div>
											<div class="col-sm-6 col-md-9 col-lg-10">
												<strong>Pasien 1</strong>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6 col-md-3 col-lg-2">
												Alamat
											</div>
											<div class="col-sm-6 col-md-9 col-lg-10">
												<strong>Pasien 1</strong>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6 col-md-3 col-lg-2">
												Phone
											</div>
											<div class="col-sm-6 col-md-9 col-lg-10">
												<strong>Pasien 1</strong>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6 col-md-3 col-lg-2">
												Riwayat Alergi
											</div>
											<div class="col-sm-6 col-md-9 col-lg-5">
												<strong>AAA</strong>
											</div>
										</div>
										<hr>
										<div class="row">
											<div class="col-md-12">
												<button type="button" name="button" class="btn btn-success">
													<i class="fa fa-print"></i>
													Print
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-body">
									<h2>Tabel Status Pasien</h2>
									<table class="table table-bordered table-striped" id="tabelStatus">
									  <thead>
									    <tr>
									      <th scope="col">No.</th>
									      <th scope="col">Tanggal</th>
												<th scope="col">Diagnosa</th>
												<th scope="col">Terapi</th>
												<th scope="col">Biaya</th>
												<th scope="col">Keterangan</th>
												<th scope="col">Action</th>
									    </tr>
									  </thead>
									  <tbody>
											<tr>
												<td>1</td>
												<td>2019-1-1</td>
												<td>Gigi Berlubang</td>
												<td>Santet</td>
												<td>Rp. 100.000.000,-</td>
												<td>-</td>
												<td>
													<button type="button" name="button" id="btnEdit" class="btn btn-primary" onclick="edit_status(1)">
														<i class="fa fa-edit"></i>
														Edit
													</button>
													<button type="button" name="button" id="btnHapus" class="btn btn-danger" onclick="hapus_status(1)">
														<i class="fa fa-trash"></i>
														Hapus
													</button>
												</td>
											</tr>
									  </tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<br>


				</div>
			</div>

		</div>

		<div class="modal fade" id="modalEditStatus" tabindex="-1" role="dialog" aria-labelledby="modalEditStatusLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
				<form method="post" action="#" id="formEditStatus">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="modalEditStatusLabel">Edit Pasien <a href="javascript:void(0)">Pasien1</a></h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
							<div class="container-fluid">
								<div class="form-group col-md-12">
									<label for="inputTanggalEdit">Tanggal</label>
									<input type="text" class="form-control" name="inputTanggalEdit" id="inputTanggalEdit" placeholder="Tanggal" required>
								</div>
								<div class="form-group col-md-12">
									<label for="inputDiagnosaEdit">Diagnosa</label>
									<textarea name="inputDiagnosaEdit" rows="3" cols="80" id="inputDiagnosaEdit" class="form-control" placeholder="Diagnosa"></textarea>
								</div>
								<div class="form-group col-md-12">
									<label for="inputTerapiEdit">Terapi</label>
									<textarea name="inputTerapiEdit" rows="3" cols="80" id="inputTerapiEdit" class="form-control" placeholder="Terapi"></textarea>
								</div>
								<div class="form-group col-md-12">
									<label for="inputBiayaEdit">Biaya (Rp)</label>
									<input type="number" class="form-control" name="inputBiayaEdit" id="inputBiayaEdit" placeholder="Biaya" required>
								</div>
								<div class="form-group col-md-12">
									<label for="inputKeterangan">Keterangan</label>
									<textarea name="inputKeteranganEdit" id="inputKeteranganEdit" rows="5" cols="80" class="form-control" placeholder="Riwayat Alergi"></textarea>
								</div>
								<div class="form-group col-md-12">
									<button type="submit" name="button" class="btn btn-success btn-lg">
										<i class="fa fa-save"></i>
										Simpan
									</button>
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

		<div class="modal fade" id="modalHapusStatus" tabindex="-1" role="dialog" aria-labelledby="modalHapusPasienLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="modalHapusPasienLabel">Hapus Status Pasien</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
						Ingin menghapus status <a href="javascript:void(0)">Pasien1</a> ?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-danger">Hapus</button>
		      </div>
		    </div>
		  </div>
		</div>

		<?php $this->load->view('include/footer'); ?>

		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript">
			$('#tabelStatus').DataTable();

			function edit_status(id) {
				console.log('Hapus Status ' + id);
				$('#modalEditStatus').modal('show');
			}
			function hapus_status(id) {
				console.log('Hapus Status ' + id);
				$('#modalHapusStatus').modal('show');
			}
		</script>

	</body>
</html>
