<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PerawatanModel extends CI_Model {
  function __construct() {
      parent::__construct();
      $this->db->query("SET sql_mode = '' ");
  }
  // SQLite
  // public function insert_perawatan($data)
  // {
  //   $this->db->set('created_on', '\''.$this->get_now().'\'', FALSE);
  //   $this->db->set('last_update', '\''.$this->get_now().'\'', FALSE);
  //   $this->db->insert('perawatan', $data);
  //   return $this->db->insert_id();
  // }
  // public function get_perawatan_by_id_pasien($id_pasien)
  // {
  //   $this->db->where('id_pasien', $id_pasien);
  //   return $this->db->get('perawatan')->result_array();
  // }
  // public function get_perawatan_by_id($id_perawatan)
  // {
  //   $this->db->where('id_perawatan', $id_perawatan);
  //   return $this->db->get('perawatan')->row_array();
  // }
  // public function update_perawatan_by_id($id_perawatan, $data)
  // {
  //   $this->db->set('last_update', '\''.$this->get_now().'\'', FALSE);
  //   $this->db->where('id_perawatan', $id_perawatan);
  //   $this->db->update('perawatan', $data);
  //   return $this->db->affected_rows();
  // }
  // public function delete_perawatan_by_id($id_perawatan)
  // {
  //   $this->db->where('id_perawatan', $id_perawatan);
  //   $this->db->delete('perawatan');
  //   return $this->db->affected_rows();
  // }
  // public function get_count_perawatan()
  // {
  //   $this->db->select('sum(biaya) as total');
  //   $data = $this->db->get('perawatan')->row_array();
  //   return $data['total'];
  // }
  //
  // public function get_count_perawatan_where($tahun = null, $bulan = null)
  // {
  //   $this->db->select('id_perawatan, nama, diagnosa, terapi, biaya, tanggal, alamat, substr(tanggal, 1, 4) as tahun, substr(tanggal, 6, 2) as bulan, biaya');
  //   if ($tahun != null) {
  //     $this->db->where('tahun', $tahun);
  //   }
  //   if ($bulan != null) {
  //     $this->db->where('bulan', $bulan);
  //   }
  //   $this->db->join('pasien', 'perawatan.id_pasien = pasien.id_pasien', 'left');
  //   return $this->db->get('perawatan')->result_array();
  // }
  // public function get_count_perawatan_by_id_pasien($id_pasien)
  // {
  //   $this->db->select('sum(biaya) as total');
  //   $this->db->where('id_pasien', $id_pasien);
  //   $data =  $this->db->get('perawatan')->row_array();
  //   return $data['total'];
  // }
  // public function get_count_perawatan_by_bulan()
  // {
  //   $this->db->select('(substr(tanggal, 1, 4)) || "-" ||(substr(tanggal, 6, 2)) as bulan, sum(biaya) as total');
  //   $this->db->group_by('tahun, bulan');
  //   $this->db->order_by('tahun', 'ASC');
  //   $this->db->order_by('bulan', 'ASC');
  //   return $this->db->get('perawatan')->result_array();
  // }
  //
  // public function get_now()
  // {
  //   date_default_timezone_set('Asia/Makassar');
  //   $date = new DateTime();
  //   return date_format($date, 'Y-m-d H:m:s');
  // }
  public function insert_perawatan($data)
  {
    $this->db->set('created_on', 'NOW()', FALSE);
    $this->db->set('last_update', 'NOW()', FALSE);
    $this->db->insert('perawatan', $data);
    return $this->db->insert_id();
  }
  public function get_perawatan_by_id_pasien($id_pasien)
  {
    $this->db->where('id_pasien', $id_pasien);
    return $this->db->get('perawatan')->result_array();
  }
  public function get_perawatan_by_id($id_perawatan)
  {
    $this->db->where('id_perawatan', $id_perawatan);
    return $this->db->get('perawatan')->row_array();
  }
  public function update_perawatan_by_id($id_perawatan, $data)
  {
    $this->db->set('last_update', 'NOW()', FALSE);
    $this->db->where('id_perawatan', $id_perawatan);
    $this->db->update('perawatan', $data);
    return $this->db->affected_rows();
  }
  public function delete_perawatan_by_id($id_perawatan)
  {
    $this->db->where('id_perawatan', $id_perawatan);
    $this->db->delete('perawatan');
    return $this->db->affected_rows();
  }
  public function get_count_perawatan()
  {
    $this->db->select('sum(biaya) as total');
    $data = $this->db->get('perawatan')->row_array();
    return $data['total'];
  }

  public function get_count_perawatan_where($tahun = null, $bulan = null)
  {
    $this->db->select('id_perawatan, nama, diagnosa, terapi, biaya, tanggal, alamat, YEAR(tanggal) as tahun, MONTH(tanggal) as bulan, biaya');
    if ($tahun != null) {
      $this->db->where('YEAR(tanggal)', $tahun);
    }
    if ($bulan != null) {
      $this->db->where('MONTH(tanggal)', $bulan);
    }
    $this->db->join('pasien', 'perawatan.id_pasien = pasien.id_pasien', 'left');
    return $this->db->get('perawatan')->result_array();
  }
  public function get_count_perawatan_by_id_pasien($id_pasien)
  {
    $this->db->select('sum(biaya) as total');
    $this->db->where('id_pasien', $id_pasien);
    $data =  $this->db->get('perawatan')->row_array();
    return $data['total'];
  }
  public function get_count_perawatan_by_bulan()
  {
    $this->db->select('YEAR(tanggal) as tahun, MONTH(tanggal) as bulan, sum(biaya) as total');
    $this->db->group_by('tahun, bulan');
    $this->db->order_by('tahun', 'ASC');
    $this->db->order_by('bulan', 'ASC');
    return $this->db->get('perawatan')->result_array();
  }
}
