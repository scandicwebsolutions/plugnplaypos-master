<?php 
$show_all_orders = '';
foreach ($alltabledata as $tabledata) {
    $show_all_orders.='<div class="table_div" data-table_id="'.$tabledata->id.'" data-table_name="'.$tabledata->name.'">';
        $show_all_orders.='<div class="table_div_top">Table : '.$tabledata->name.'</div>';
        $show_all_orders.='<div class="table_div_main">';
        $show_all_orders.='ID : '.$tabledata->id.'<br><br>';
        $show_all_orders.='Capacity : '.$tabledata->sit_capacity.'<br><br>';
        $show_all_orders.='Position : '.$tabledata->position.'<br><br>';
        $show_all_orders.='Description : '.$tabledata->description;
        $show_all_orders.='</div>';
    $show_all_orders.='</div>';
}
?>
<!DOCTYPE html>
<!-- saved from url=(0049)http://localhost/iRestora_PLUS/Kitchen/panel.html -->
<html class="gr__localhost">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- <meta http-equiv="Content-Security-Policy" content="default-src *; style-src 'self' 'unsafe-inline'; script-src 'self' 'unsafe-inline' 'unsafe-eval'"> -->
    <title><?php echo $site_name; ?></title>
    <link rel="stylesheet" type="text/css"
        href="<?php echo base_url(); ?>assets/kitchen_panel/css/kitchen_new_style.css">
    <link href="https://fonts.googleapis.com/css?family=Yantramanav" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css">
    <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/kitchen_panel/css/sweetalert2.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/select2/dist/css/select2.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>asset/plugins/iCheck/minimal/color-scheme.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="<?php echo base_url()?>assets/kitchen_panel/js/jquery-3.3.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/kitchen_panel/js/jquery.slimscroll.min.js">
    </script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/kitchen_panel/js/sweetalert2.all.min.js">
    </script>
    <script type="text/javascript"
        src="<?php echo base_url(); ?>assets/bower_components/select2/dist/js/select2.full.min.js"></script>

    <base data-base="<?php echo base_url(); ?>">
    </base>
    <base data-collect-vat="<?php echo $this->session->userdata('collect_vat'); ?>">
    </base>
    <base data-currency="<?php echo $this->session->userdata('currency'); ?>">
    </base>
    <base data-role="<?php echo $this->session->userdata('role'); ?>">
    </base>

    <!-- Favicon -->
    <link rel="shortcut icon" href="<?php echo base_url(); ?>assets/images/favicon.ico" type="image/x-icon">
    <!-- Favicon -->
    <link rel="icon" href="<?php echo base_url(); ?>assets/images/favicon.ico" type="image/x-icon">
</head>

<body>
    <input type="hidden" id="csrf_name_" value="<?php echo $this->security->get_csrf_token_name(); ?>">
    <input type="hidden" id="csrf_value_" value="<?php echo $this->security->get_csrf_hash(); ?>">

    <span style="display:none" id="selected_order_for_refreshing_help"></span>
    <span style="display:none" id="refresh_it_or_not"><?php echo lang('yes'); ?></span>
    <div class="wrapper fix table_main">
        <div class="fix main_top">
            <div class="fix floatleft top_header">
                <h1><?php echo lang('order_table'); ?></h1>
            </div>
            <div class="fix floatleft top_menu">
                    <a href="<?php echo base_url(); ?>Authentication/logOut" class="c-btn d-flx" id="logout_button">
                    <i data-feather="log-in"></i> <?php echo lang('logout'); ?></a>
                </form>
            </div>
        </div>

        <div>
            <div class="fix order_holder" id="order_holder">
                <?php echo $show_all_orders ?>
            </div>
        </div>
    </div>

    <div id="help_modal" class="modal">

        <!-- Modal content -->
        <div class="modal-content" id="modal_help_content">
            <p class="cross_button_to_close">&times;</p>
            <h1 class="main_header">Order table and user</h1>
            <br>
            <div id='table_modal_content'>
                <form action="../Sale/POS" method="post" name='frm1'>
                    Table Id : <span id='modal_table_id'></span><br><br>
                    Table Name : <span id='modal_table_name'></span><br><br>
                    User : <input type='text' id='modal_user' name="user" required>
                    <input type="hidden" value="" id='table_id' name='table_id'><br><br>
                    <center>
                        <input type="submit" value="Send" id="madalsavebtn">
                        <input type="button" value="Cancel" id="tablemodal_cancel">
                    </center>
                </form>
            </div>
            <br>
        </div>
    </div>

</body>

<script>
    $(document).ready(function(){
        $('.table_div').click(function(){
            $('#table_id').val($(this).data('table_id'));
            $('#modal_table_id').html($(this).data('table_id'));
            $('#modal_table_name').html($(this).data('table_name'));
        })
        $('.table_div').on('click',function(){
            $('#help_modal').fadeIn('500');
        });
        
        $('#tablemodal_cancel').on('click',function(){
            $('#help_modal').fadeOut('500');
        });
    })
</script>
</html>