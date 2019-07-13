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
		$tgl_lahir_obj = strtotime($this->input->post('inputTanggalLahir'));
		$data['tanggal_lahir'] = date('Y-m-d', $tgl_lahir_obj);
		$data['alamat'] = $this->input->post('inputAlamat');
		$data['no_hp'] = $this->input->post('inputHP');
		if($this->PasienModel->insert_pasien($data) == true)
		{
			$this->session->set_flashdata('success', 'Data pasien telah dimasukkan.');
		} else {
			$this->session->set_flashdata('error', 'Data pasien tidak dapat dimasukkan.');
		}
		redirect('admin/pasien');
	}
}
