<!DOCTYPE html>
<html>
<head>
	<title>Home | Pasien Deilia</title>
	<link rel="icon" href="<?php echo base_url(); ?>asset/img/icon.png">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap4.min.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">

	<link rel="stylesheet" href="<?php echo base_url(); ?>asset/costum/css/login.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body class="bg-dark" style="position: relative; height: auto; min-height: 100% !important;">
	<div class="container-fluid">
		<br>
		<a href="<?php echo base_url(); ?>admin" class="btn btn-primary btn-lg">
			<i class="fa fa-sign-out"></i>
			Kembali
		</a>
	</div>
	<div class="container fadeInDown">
		<?php $this->load->view('include/notification') ?>
		<div class="row">
			<div class="col-md-12 text-center">
				<h1 class="text-light">Pelaporan</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-12">

				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Tabel Perawatan</h4>
						<form>
							<div class="form-group">
								<label>Tahun</label>
						    <select class="form-control" id="inputTahun">
						      <option value="all">Semua Tahun</option>
									<?php for($i = 2018; $i <= date("Y"); $i++){
										echo '<option value="'.$i.'">'.$i.'</option>';
									}?>
						    </select>
						  </div>
							<div class="form-group">
								<label>Bulan</label>
						    <select class="form-control" id="inputBulan">
									<option value="all">Semua Bulan</option>
									<option value="01">Januari</option>
									<option value="02">Februari</option>
									<option value="03">Maret</option>
									<option value="04">April</option>
									<option value="05">Mei</option>
									<option value="06">Juni</option>
									<option value="07">Juli</option>
									<option value="08">Agustus</option>
									<option value="09">September</option>
									<option value="10">Oktober</option>
									<option value="11">November</option>
									<option value="12">Desember</option>
						    </select>
						  </div>
						  <div class="form-group">
						    <button type="button" name="button" class="btn btn-primary" onclick="getData()">Tampilkan</button>
						  </div>
							<hr>
							<table class="table table-striped table-bordered nowrap" id="tabelLaporan">
							  <thead>
									<tr>
										<th scope="col">Pasien</th>
										<th scope="col">Alamat</th>
										<th scope="col">Tanggal</th>
										<th scope="col">Diagnosa</th>
										<th scope="col">Terapi</th>
										<th scope="col">Biaya</th>
									</tr>
							  </thead>
							  <tbody>

							  </tbody>
							</table>
							<hr>
							<h4 class="text-center">Grafik Perawatan (1 Tahun Terakhir)</h4>
							<div id="chartLaporan" style="height: 250px;"></div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<br>
		<br>


	</div>




	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
	<script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
	<script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap4.min.js"></script>

	<script src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.flash.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script>
	<script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js"></script>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>

	<script type="text/javascript">
		var base_url = '<?php echo base_url(); ?>';
		function getData() {
			var tahunVal = $('#inputTahun').val();
			var bulanVal = $('#inputBulan').val();
			$.ajax({
				url : base_url + 'admin/get_laporan',
				method : 'POST',
				data : {tahun : tahunVal, bulan : bulanVal},
				success : function (respond) {
					data = JSON.parse(respond);
					initDataTable(data);
				}
			})
		}
		// Init DataTable
		function initDataTable(data) {
			$('#tabelLaporan').DataTable().clear().destroy();
			$('#tabelLaporan').DataTable({
				data : data.data,
				columns: [
	            { "data": "nama" },
	            { "data": "alamat" },
	            { "data": "tanggal" },
	            { "data": "diagnosa" },
	            { "data": "terapi" },
	            {
								"data": "biaya",
						    "render": function ( data, type, row, meta ) {
						      return 'Rp. ' + parseInt(row.biaya).toLocaleString('id');
						    }
							}
	        ],
				dom: 'Bfrtip',
	        buttons: [
	            'copy', 'csv', 'excel', 'pdf', 'print'
	        ]
			});
		}
		// Init Data Awal
		$.ajax({
			url : base_url + 'admin/get_laporan',
			method : 'POST',
			success : function (respond) {
				data = JSON.parse(respond);
				initDataTable(data);
			}
		});

		$.ajax({
			url : base_url + 'admin/get_laporan_grafik',
			method : 'POST',
			success : function (respond) {
				data = JSON.parse(respond);
				var genData = [];
				var genData2 = [];
				var endDate = new Date();
				var date = new Date((endDate.getFullYear() - 1).toString());
				var monthNameList = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"];
				while (date <= endDate)
				{
			    var stringDate = date.getFullYear() + "-" + monthNameList[date.getMonth()] ;
			    genData.push({bulan : stringDate, total : '0'});
			    date.setMonth(date.getMonth() + 1);
				}
				genData.forEach(function(row1) {
					data.data.forEach(function(row2) {
						if(row2.bulan == row1.bulan){
							row1 = row2;
						}
					})
					genData2.push(row1);
				});
				console.log(genData2);

				new Morris.Line({
				  element: 'chartLaporan',
				  data: genData2,
				  xkey: 'bulan',
				  ykeys: ['total'],
				  labels: ['Pemasukan (Rp)'],
					xLabelMargin: 1
				});
			}
		});

	</script>
</body>
</html>
