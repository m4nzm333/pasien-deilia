<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class UserModel extends CI_Model {
  function __construct() {
      parent::__construct();
      $this->db->query("SET sql_mode = '' ");
  }
  public function auth_user_login($username, $password)
  {
    $this->db->where('username', $username);
    $this->db->where('password', $password);
    if($this->db->get('user')->num_rows() == true){
      return true;
    } else {
      return false;
    }
  }
  public function get_user_by_username($username)
  {
    $this->db->select('id_user, username, nama');
    $this->db->where('username', $username);
    return $this->db->get('user')->row_array();
  }
  public function update_user_by_username($data, $username)
  {
    $this->db->where('username', $username);
    $this->db->update('user', $data);
    return $this->db->affected_rows();
  }

}
