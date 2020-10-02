<?php

/*
* To change this template, choose Tools | Templates
* and open the template in the editor.
*/

/**
* Description of Sale_model
*
* @author user
*/
class Get_table_info extends CI_Model {
    public function getAlltable(){
        $this->db->select("*");
        $this->db->from('tbl_tables');
        $this->db->where("del_status", 'Live');
        return $this->db->get()->result();
    }
}

