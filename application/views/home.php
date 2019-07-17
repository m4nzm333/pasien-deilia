<!DOCTYPE html>
<html>
<head>
	<title>Home | Pasien Deilia</title>
	<link rel="icon" href="<?php echo base_url(); ?>asset/img/icon.png">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>asset/costum/css/login.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body class="bg-dark" style="min-height:100%">
	<div class="container-fluid">
		<br>
		<a href="<?php echo base_url(); ?>login/keluar" class="btn btn-primary btn-lg">
			<i class="fa fa-sign-out"></i>
			Kembali
		</a>
	</div>
	<br>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="container-fluid">
					<?php $this->load->view('include/notification') ?>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-light text-center">Menu</h1>
			</div>
		</div>
		<div class="row">
			<div class="d-none d-md-block d-sm-none col-md-4">
			</div>
			<div class="col-6 col-xs-6 col-sm-6 col-md-2">
				<div class="card text-white bg-primary">
					<a href="<?php echo base_url(); ?>admin/pasien">
						<div class="card-body text-light text-center">
							<i class="fa fa-user fa-5x"></i>
							<h4 class="card-title">Pasien</h4>
						</div>
					</a>
				</div>
			</div>
			<div class="col-6 col-xs-6 col-sm-6 col-md-2">
				<div class="card text-white bg-primary">
					<a href="<?php echo base_url(); ?>admin/pelaporan">
						<div class="card-body text-light text-center">
							<i class="fa fa-book fa-5x"></i>
							<h4 class="card-title">Laporan</h4>
						</div>
					</a>
				</div>
			</div>
			<div class="d-none d-md-block d-sm-none col-md-4">
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-light text-center">Dashboard</h1>
			</div>
		</div>
		<div class="row">
			<div class="d-none d-md-block d-sm-none col-md-3">
			</div>
			<div class="col-12 col-xs-12 col-sm-6 col-md-3">
				<div class="card">
		      <div class="card-body">
						<div class="container-fluid">
							<i class="fa fa-plus fa-5x"></i>
							<h5 class="card-title">Jumlah Pasien</h5>
							<h3><?php echo $sum_pasien; ?> Orang</h3>
						</div>
		      </div>
		    </div>
			</div>
			<div class="col-12 col-xs-12 col-sm-6 col-md-3">
		    <div class="card">
		      <div class="card-body">
						<div class="container-fluid">
							<i class="fa fa-dollar fa-5x"></i>
							<h5 class="card-title">Jumlah Pemasukan</h5>
							<h3>Rp. <?php echo number_format($sum_perawatan, 0, ',', '.'); ?>,-</h3>
						</div>
		      </div>
		    </div>
		  </div>
			<div class="d-none d-md-block d-sm-none col-md-3">
			</div>
		</div>

	</div>



	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
