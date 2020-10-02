<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Table extends Cl_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Get_table_info');
        $this->load->library('form_validation'); 
        if (!$this->session->has_userdata('user_id')) {
            redirect('Authentication/index');
        }


    }

    /* ----------------------Dashboard Menu Start-------------------------- */

    public function select(){
        $data = array();
        $data['alltabledata'] = $this->Get_table_info->getAlltable();
        $this->load->view('Table/select', $data);
    }

    /* ----------------------Dashboard Menu End-------------------------- */
}
