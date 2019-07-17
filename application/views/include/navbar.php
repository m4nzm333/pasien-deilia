<nav class="navbar navbar-expand-lg navbar-light" style="background : #bf5f82; border-color : #bf5f82">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">

      <a class="btn btn-primary nav-item nav-link text-light" href="<?php echo base_url(); ?>admin" style="background : #b4004e; border-color : #b4004e">
        <i class="fa fa-home fa-3x"></i>
        <br>
				Home
			</a>
			&nbsp
			<a class="btn btn-primary nav-item nav-link text-light" href="<?php echo base_url(); ?>admin/pasien" style="background : #b4004e; border-color : #b4004e">
				<i class="fa fa-user fa-3x"></i>
        <br>
				Pasien
			</a>
      &nbsp
      <a class="btn btn-primary nav-item nav-link text-light" href="<?php echo base_url(); ?>admin/pelaporan" style="background : #b4004e; border-color : #b4004e">
        <i class="fa fa-book fa-3x"></i>
        <br>
				Laporan
			</a>
      &nbsp
      <a class="btn btn-primary nav-item nav-link text-light" onclick="gantiPassword()" style="background : #b4004e; border-color : #b4004e">
        <i class="fa fa-gear fa-3x"></i>
        <br>
				Ganti Password
			</a>

      <div class="modal fade" id="modalGantiPassword" tabindex="-1" role="dialog" aria-labelledby="modalGantiPasswordLabel" aria-hidden="true">
  		  <div class="modal-dialog" role="document">
          <form method="post" action="<?php echo base_url(); ?>admin/gantipass" id="modalGantiPasswordLabel">
  			    <div class="modal-content">
  			      <div class="modal-header">
  			        <h5 class="modal-title" id="modalEditPasienLabel">Ganti Password</h5>
  			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
  			          <span aria-hidden="true">&times;</span>
  			        </button>
  			      </div>
  			      <div class="modal-body">
  							<div class="container-fluid">
									<div class="form-group col-md-12">
										<label for="inputPassLama">Password Lama</label>
										<input type="password" class="form-control" name="inputPassLama" id="inputPassLama" placeholder="Password Lama" required>
									</div>
                  <div class="form-group col-md-12">
										<label for="inputPassBaru">Password Baru</label>
										<input type="password" class="form-control" name="inputPassBaru" id="inputPassBaru" placeholder="Password Baru" required>
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
