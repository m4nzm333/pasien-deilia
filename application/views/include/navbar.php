<nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">

      <a class="btn btn-primary nav-item nav-link text-light" href="<?php echo base_url(); ?>admin">
        <i class="fa fa-home fa-3x"></i>
        <br>
				Home
			</a>
			&nbsp
			<a class="btn btn-primary nav-item nav-link text-light" href="<?php echo base_url(); ?>admin/pasien">
				<i class="fa fa-user fa-3x"></i>
        <br>
				Pasien
			</a>
      &nbsp
      <a class="btn btn-primary nav-item nav-link text-light" href="<?php echo base_url(); ?>admin/pelaporan">
        <i class="fa fa-book fa-3x"></i>
        <br>
				Laporan
			</a>
    </div>

  </div>
	<div class="my-2 my-sm-0">
		<img src="<?php echo base_url(); ?>asset/img/icon.png" alt="" height="50px" width="50px">
		&nbsp
		<a class="navbar-brand text-light"><?php echo $this->session->userdata('nama'); ?></a>
		<a class="btn btn-danger" href="<?php echo base_url(); ?>login/keluar">Keluar</a>
	</div>
</nav>
<br>
