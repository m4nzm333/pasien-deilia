<!DOCTYPE html>
<html>
<head>
	<title>Login | Pasien Deilia</title>
	<link rel="icon" href="<?php echo base_url(); ?>asset/img/icon.png">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="<?php base_url(); ?>asset/costum/css/login.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body class="bg-dark">
	<div class="wrapper fadeInDown">
		<?php $this->load->view('include/notification') ?>
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-light">Menu</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<a href="<?php echo base_url(); ?>admin/pasien">
					<div class="card text-white bg-primary mb-3" style="width: 18rem;">
						<div class="card-body">
							<p class="text-center"><img src="https://via.placeholder.com/150" height="150px" width="150px"  alt=""></p>
							<h1 class="card-title text-center">Pasien</h1>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-6">
				<a href="<?php echo base_url(); ?>admin/pasien">
					<div class="card text-white bg-primary mb-3" style="width: 18rem;">
						<div class="card-body">
							<p class="text-center"><img src="https://via.placeholder.com/150" height="150px" width="150px"  alt=""></p>
							<h1 class="card-title text-center">Pelaporan</h1>
						</div>
					</div>
				</a>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-light">Dashboard</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-5">
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
			<div class="col-7">
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
		</div>

	</div>




	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
