<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PasienModel extends CI_Model {
  public function insert_pasien($data)
  {
    $this->db->set('created_on', 'NOW()', FALSE);
    $this->db->insert('pasien', $data);
    return $this->db->insert_id();
  }
  public function get_pasien_all()
  {
    return $this->db->get('pasien')->result_array();
  }

}
