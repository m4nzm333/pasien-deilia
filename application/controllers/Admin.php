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
		$data['alamat'] = $this->input->post('inputAlamat');
		$data['no_hp'] = $this->input->post('inputHP');
		$data['riwayat_alergi'] = $this->input->post('inputRiwayatAlergi');
		$date = date_create_from_format( 'd/m/Y' ,$data['tanggal_lahir']);
	 	$data['tanggal_lahir'] = date_format($date, 'Y-m-d');
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
		if($this->PasienModel->delete_pasien_by_id($id_pasien) == true)
		{
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
		$this->load->view('pasien_detail', $data);
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

		echo var_dump($data);
		if($this->PerawatanModel->insert_perawatan($data) == true)
		{
			$this->session->set_flashdata('success', 'Data perawatan telah ditambahkan.');
		} else {
			$this->session->set_flashdata('error', 'Data perawatan tidak dapat ditambahkan.');
		}
		redirect('admin/pasien/detail/'.$id_pasien);
	}
}
