<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PerawatanModel extends CI_Model {
  public function insert_perawatan($data)
  {
    $this->db->set('created_on', 'NOW()', FALSE);
    $this->db->insert('perawatan', $data);
    return $this->db->insert_id();
  }
  public function get_perawatan_by_id_pasien($id_pasien)
  {
    $this->db->where('id_pasien', $id_pasien);
    return $this->db->get('perawatan')->result_array();
  }

}
