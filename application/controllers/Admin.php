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

	public function pasien()
	{
		$this->load->model('PasienModel');
		$data['pasien'] = $this->PasienModel->get_pasien_all();

		$this->load->view('pasien', $data);
	}

	public function pasien_detail($id)
	{
		$this->load->view('pasien_detail');
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
		$date = new DateTime($data['tanggal_lahir']);
	  $data['tanggal_lahir'] = date_format($date, 'Y-d-m');
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
		// echo json_encode($this->input->post());
		$data['nama'] = $this->input->post('inputNamaEdit');
		$data['umur'] = $this->input->post('inputUmurEdit');
		$data['tanggal_lahir'] = $this->input->post('inputTanggalLahirEdit');
		$data['alamat'] = $this->input->post('inputAlamatEdit');
		$data['no_hp'] = $this->input->post('inputHPEdit');
		$data['riwayat_alergi'] = $this->input->post('inputRiwayatAlergiEdit');
		$date = new DateTime($data['tanggal_lahir']);
	  $data['tanggal_lahir'] = date_format($date, 'Y-d-m');
		if($this->PasienModel->update_pasien_by_id($id_pasien, $data) == true)
		{
			$this->session->set_flashdata('success', 'Data pasien telah diperbarui.');
		} else {
			$this->session->set_flashdata('error', 'Data pasien tidak dapat diperbarui.');
		}
		redirect('admin/pasien');
	}
	public function get_pasien_by_id($id_pasien)
	{
		$this->load->model('PasienModel');
		$data = $this->PasienModel->get_pasien_by_id($id_pasien);
		echo json_encode($data);
	}
}
