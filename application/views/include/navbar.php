<nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
  </div>
	<div class="my-2 my-sm-0">
		<img src="https://via.placeholder.com/50x50" alt="" height="50px" width="50px" class="rounded-circle">
		&nbsp
		<a class="navbar-brand text-light"><?php echo $this->session->userdata('nama'); ?></a>
		<a class="btn btn-danger" href="<?php echo base_url(); ?>login/keluar">Keluar</a>
	</div>
</nav>
<br>
