<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PasienModel extends CI_Model {
  function __construct() {
      parent::__construct();
      $this->db->query("SET sql_mode = '' ");
  }
  // SQL Lite
  // public function insert_pasien($data)
  // {
  //   $this->db->set('created_on', '\''.$this->get_now().'\'', FALSE);
  //   $this->db->set('last_update', '\''.$this->get_now().'\'', FALSE);
  //   $this->db->insert('pasien', $data);
  //   return $this->db->insert_id();
  // }
  // public function get_pasien_all()
  // {
  //   return $this->db->get('pasien')->result_array();
  // }
  // public function get_pasien_by_id($id_pasien)
  // {
  //   $this->db->where('id_pasien', $id_pasien);
  //   return $this->db->get('pasien')->row_array();
  // }
  // public function update_pasien_by_id($id_pasien, $data)
  // {
  //   $this->db->set('last_update', '\''.$this->get_now().'\'', FALSE);
  //   $this->db->where('id_pasien', $id_pasien);
  //   $this->db->update('pasien', $data);
  //   return $this->db->affected_rows();
  // }
  // public function delete_pasien_by_id($id_pasien)
  // {
  //   $this->db->where('id_pasien', $id_pasien);
  //   $this->db->delete('pasien');
  //   return $this->db->affected_rows();
  // }
  // public function get_count_pasien()
  // {
  //   return $this->db->get('pasien')->num_rows();
  // }
  //
  // public function get_now()
  // {
  //   date_default_timezone_set('Asia/Makassar');
  //   $date = new DateTime();
  //   return date_format($date, 'Y-m-d H:m:s');
  // }
  public function insert_pasien($data)
  {
    $this->db->set('created_on', 'NOW()', FALSE);
    $this->db->set('last_update', 'NOW()', FALSE);
    $this->db->insert('pasien', $data);
    return $this->db->insert_id();
  }
  public function get_pasien_all()
  {
    $this->db->order_by('created_on', 'asc');
    return $this->db->get('pasien')->result_array();
  }
  public function get_pasien_by_id($id_pasien)
  {
    $this->db->where('id_pasien', $id_pasien);
    return $this->db->get('pasien')->row_array();
  }
  public function update_pasien_by_id($id_pasien, $data)
  {
    $this->db->set('last_update', 'NOW()', FALSE);
    $this->db->where('id_pasien', $id_pasien);
    $this->db->update('pasien', $data);
    return $this->db->affected_rows();
  }
  public function delete_pasien_by_id($id_pasien)
  {
    $this->db->where('id_pasien', $id_pasien);
    $this->db->delete('pasien');
    return $this->db->affected_rows();
  }
  public function get_count_pasien()
  {
    return $this->db->get('pasien')->num_rows();
  }
}
