<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	function __construct() {
        parent::__construct();
				if($this->session->userdata('is_logged') == false){
					$this->session->set_flashdata('error', 'Masuk untuk melanjutkan.');
					redirect('login');
				}
    }

	public function index()
	{
		$this->load->model('PasienModel');
		$this->load->model('PerawatanModel');
		$data['sum_pasien'] = $this->PasienModel->get_count_pasien();
		$data['sum_perawatan'] = $this->PerawatanModel->get_count_perawatan();
		$this->load->view('home', $data);
	}

	// PASIEN
	public function pasien()
	{
		$this->load->model('PasienModel');
		$data['pasien'] = $this->PasienModel->get_pasien_all();

		$this->load->view('pasien', $data);
	}
	public function pasien_tambah()
	{
		$this->load->model('PasienModel');
		// echo json_encode($this->input->post());
		$data['nama'] = $this->input->post('inputNamaPasien');
		$data['umur'] = $this->input->post('inputUmur');
		$data['tanggal_lahir'] = $this->input->post('inputTanggalLahir');
		$data['jenis_kelamin'] = $this->input->post('inputJenisKelamin');
		$data['pekerjaan'] = $this->input->post('inputPekerjaan');
		$data['alamat'] = $this->input->post('inputAlamat');
		$data['no_hp'] = $this->input->post('inputHP');
		$data['riwayat_alergi'] = $this->input->post('inputRiwayatAlergi');
		$date = date_create_from_format( 'd/m/Y' ,$data['tanggal_lahir']);
	 	$data['tanggal_lahir'] = date_format($date, 'Y-m-d');
		// $this->PasienModel->insert_pasien($data);
		if($this->PasienModel->insert_pasien($data) == true)
		{
			$this->session->set_flashdata('success', 'Data pasien telah dimasukkan.');
		} else {
			$this->session->set_flashdata('error', 'Data pasien tidak dapat dimasukkan.');
		}
		redirect('admin/pasien');
	}
	public function pasien_edit($id_pasien)
	{
		$this->load->model('PasienModel');
		$data['nama'] = $this->input->post('inputNamaEdit');
		$data['umur'] = $this->input->post('inputUmurEdit');
		$data['tanggal_lahir'] = $this->input->post('inputTanggalLahirEdit');
		$data['alamat'] = $this->input->post('inputAlamatEdit');
		$data['jenis_kelamin'] = $this->input->post('inputJenisKelaminEdit');
		$data['pekerjaan'] = $this->input->post('inputPekerjaanEdit');
		$data['no_hp'] = $this->input->post('inputHPEdit');
		$data['riwayat_alergi'] = $this->input->post('inputRiwayatAlergiEdit');
		$date = date_create_from_format( 'd/m/Y' ,$data['tanggal_lahir']);
	 	$data['tanggal_lahir'] = date_format($date, 'Y-m-d');
		if($this->PasienModel->update_pasien_by_id($id_pasien, $data) == true)
		{
			$this->session->set_flashdata('success', 'Data pasien telah diperbarui.');
		} else {
			$this->session->set_flashdata('error', 'Data pasien tidak dapat diperbarui.');
		}
		redirect('admin/pasien');
	}
	public function pasien_hapus($id_pasien)
	{
		$this->load->model('PasienModel');
		$this->load->model('PerawatanModel');
		if($this->PasienModel->delete_pasien_by_id($id_pasien) == true)
		{
			$data = $this->PerawatanModel->get_perawatan_by_id_pasien($id_pasien);
			foreach ($data as $row) {
				$this->PerawatanModel->delete_perawatan_by_id($row['id_perawatan']);
			}
			$this->session->set_flashdata('warning', 'Data pasien telah dihapus.');
		} else {
			$this->session->set_flashdata('error', 'Data pasien tidak dapat dihapus.');
		}
		redirect('admin/pasien');
	}
	public function get_pasien_by_id($id_pasien)
	{
		$this->load->model('PasienModel');
		$data = $this->PasienModel->get_pasien_by_id($id_pasien);
		echo json_encode($data);
	}

	// PERAWATAN
	public function pasien_detail($id_pasien)
	{
		$this->load->model('PasienModel');
		$this->load->model('PerawatanModel');
		$data['pasien'] = $this->PasienModel->get_pasien_by_id($id_pasien);
		$data['pasien']['perawatan'] = $this->PerawatanModel->get_perawatan_by_id_pasien($id_pasien);
		$data['pasien']['total_biaya'] = $this->PerawatanModel->get_count_perawatan_by_id_pasien($id_pasien);
		$this->load->view('pasien_detail', $data);
	}
	public function pasien_cetak($id_pasien)
	{
		$this->load->model('PasienModel');
		$this->load->model('PerawatanModel');
		$data['pasien'] = $this->PasienModel->get_pasien_by_id($id_pasien);
		$data['pasien']['perawatan'] = $this->PerawatanModel->get_perawatan_by_id_pasien($id_pasien);
		$data['pasien']['total_biaya'] = $this->PerawatanModel->get_count_perawatan_by_id_pasien($id_pasien);
		$this->load->view('pasien_cetak', $data);
	}
	public function perawatan_tambah($id_pasien)
	{
		$this->load->model('PerawatanModel');
		$data['id_pasien'] = $id_pasien;
		$data['diagnosa'] = $this->input->post('inputDiagnosa');
		$data['terapi'] = $this->input->post('inputTerapi');
		$data['biaya'] = $this->input->post('inputBiaya');
		$data['keterangan'] = $this->input->post('inputKeterangan');
		$data['tanggal'] = $this->input->post('inputTanggal');
		$date = date_create_from_format( 'd/m/Y' ,$data['tanggal']);
	 	$data['tanggal'] = date_format($date, 'Y-m-d');
		if($this->PerawatanModel->insert_perawatan($data) == true)
		{
			$this->session->set_flashdata('success', 'Data perawatan telah ditambahkan.');
		} else {
			$this->session->set_flashdata('error', 'Data perawatan tidak dapat ditambahkan.');
		}
		redirect('admin/pasien/'.$id_pasien.'/detail');
	}
	public function get_perawatan_by_id($id_perawatan)
	{
		// echo $id_perawatan;
		$this->load->model('PerawatanModel');
		$data = $this->PerawatanModel->get_perawatan_by_id($id_perawatan);
		echo json_encode($data);
	}
	public function perawatan_edit($id_pasien, $id_perawatan)
	{
		$this->load->model('PerawatanModel');
		$data['diagnosa'] = $this->input->post('inputDiagnosaEdit');
		$data['terapi'] = $this->input->post('inputTerapiEdit');
		$data['biaya'] = $this->input->post('inputBiayaEdit');
		$data['keterangan'] = $this->input->post('inputKeteranganEdit');
		$data['tanggal'] = $this->input->post('inputTanggalEdit');
		$date = date_create_from_format( 'd/m/Y' ,$data['tanggal']);
	 	$data['tanggal'] = date_format($date, 'Y-m-d');

		if($this->PerawatanModel->update_perawatan_by_id($id_perawatan, $data) == true)
		{
			$this->session->set_flashdata('success', 'Data perawatan telah diperbarui.');
		} else {
			$this->session->set_flashdata('error', 'Data perawatan tidak dapat diperbarui.');
		}
		redirect('admin/pasien/'.$id_pasien.'/detail');
	}
	public function perawatan_hapus($id_pasien, $id_perawatan)
	{
		$this->load->model('PerawatanModel');
		if($this->PerawatanModel->delete_perawatan_by_id($id_perawatan) == true)
		{
			$this->session->set_flashdata('warning', 'Data perawatan telah dihapus.');
		} else {
			$this->session->set_flashdata('error', 'Data perawatan tidak dapat dihapus.');
		}
		redirect('admin/pasien/'.$id_pasien.'/detail');
	}

	// PELAPORAN
	public function pelaporan()
	{

		$this->load->view('pelaporan');
	}
	public function get_laporan()
	{
		$this->load->model('PerawatanModel');
		$tahun = $this->input->post('tahun');
		$bulan = $this->input->post('bulan');
		// echo json_encode($this->input->post());
		if ($tahun == 'all') {
			$data['data'] = $this->PerawatanModel->get_count_perawatan_where();
		} else {
			if($bulan == 'all'){
				$data['data'] = $this->PerawatanModel->get_count_perawatan_where($tahun);
			} else {
				$data['data'] = $this->PerawatanModel->get_count_perawatan_where($tahun, $bulan);
			}
		}
		//
		// $data['data'] = $this->PerawatanModel->get_count_perawatan_where();
		echo json_encode($data);
	}
	public function get_laporan_grafik()
	{
		$this->load->model('PerawatanModel');
		$data['data'] = $this->PerawatanModel->get_count_perawatan_by_bulan();
		echo json_encode($data);
	}

	// GANTI PASSWORD
	public function gantipass()
	{
		$this->load->model('UserModel');
		$username = $this->session->userdata('username');
		$passwordLama = md5($this->input->post('inputPassLama'));
		if($this->UserModel->auth_user_login($username, $passwordLama) == true){
			$data['password'] = md5($this->input->post('inputPassBaru'));
			if($this->UserModel->update_user_by_username($data, $username)){
				$this->session->set_flashdata('warning', 'Password telah diubah.');
				redirect('admin/pasien');
			} else {
				$this->session->set_flashdata('error', 'Password tidak dapat diubah.');
				redirect('admin/pasien');
			}
		} else {
			$this->session->set_flashdata('error', 'Password lama salah.');
			redirect('admin/pasien');
		}
	}

}
