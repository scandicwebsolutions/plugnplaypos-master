<style type="text/css">
    .required_star{
        color: #dd4b39;
    }

    .radio_button_problem{
        margin-bottom: 19px;
    }

    .field-icon {
        float: right;
        margin-left: 35px;
        margin-top: -25px;
        position: relative;
        z-index: 2;
    }
</style>
<link rel="stylesheet" href="<?= base_url('assets/') ?>buttonCSS/checkBotton.css">

<section class="content-header">
    <h1>
       <?php echo lang('edit_payment_method'); ?>
    </h1>  
</section>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary"> 
                <!-- /.box-header -->
                <!-- form start -->
                <?php echo form_open(base_url('Master/addEditPaymentMethod/' . $encrypted_id)); ?>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-6">

                            <div class="form-group">
                                <label><?php echo lang('payment_method_name'); ?> <span class="required_star">*</span></label>
                                <input tabindex="1" type="text" name="name" class="form-control" placeholder="<?php echo lang('payment_method_name'); ?>" value="<?php echo $payment_method_information->name; ?>" readonly>
                            </div>
                            <?php if (form_error('name')) { ?>
                                <div class="alert alert-error" style="padding: 5px !important;">
                                    <p><?php echo form_error('name'); ?></p>
                                </div>
                            <?php } ?>

                        </div>
                        <div class="col-md-6">

                            <div class="form-group">
                                <label><?php echo lang('description'); ?></label>
                                <input tabindex="2" type="text" name="description" class="form-control" placeholder="<?php echo lang('description'); ?>" value="<?php echo $payment_method_information->description; ?>" readonly>
                            </div>
                            <?php if (form_error('description')) { ?>
                                <div class="alert alert-error" style="padding: 5px !important;">
                                    <p><?php echo form_error('description'); ?></p>
                                </div>
                            <?php } ?>
                        </div> 

                    </div>

                    <?php if ($payment_method_information->name == "IPP") { ?>
                        <label style="margin-top:20px"><?php echo lang('ipp_settings'); ?></label>
                        <hr style="margin-top:0; margin-bottom:10px"/>

                        <div class="row">
                            <div class="col-md-4">

                                <div class="form-group">
                                    <label><?php echo lang('ipp_endpoint_url'); ?> <span class="required_star">*</span></label>
                                    <input tabindex="3" type="text" name="ipp_endpoint_url" class="form-control" placeholder="<?php echo lang('ipp_endpoint_url'); ?>" value="<?php echo $payment_method_information->ipp_endpoint_url; ?>">
                                </div>
                                <?php if (form_error('ipp_endpoint_url')) { ?>
                                    <div class="alert alert-error" style="padding: 5px !important;">
                                        <p><?php echo form_error('ipp_endpoint_url'); ?></p>
                                    </div>
                                <?php } ?>

                            </div>

                            <div class="col-md-4">

                                <div class="form-group">
                                    <label><?php echo lang('ipp_username'); ?> <span class="required_star">*</span></label>
                                    <input tabindex="4" type="password" id="ipp_username" name="ipp_username" class="form-control" placeholder="<?php echo lang('ipp_username'); ?>" value="<?php echo $payment_method_information->ipp_username; ?>">
                                    <span toggle="#ipp_username" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                </div>
                                <?php if (form_error('ipp_username')) { ?>
                                    <div class="alert alert-error" style="padding: 5px !important;">
                                        <p><?php echo form_error('ipp_username'); ?></p>
                                    </div>
                                <?php } ?>

                            </div>
                            <div class="col-md-4">

                                <div class="form-group">
                                    <label><?php echo lang('ipp_password'); ?> <span class="required_star">*</span></label>
                                    <input tabindex="5" type="password" id="ipp_password" name="ipp_password" class="form-control" placeholder="<?php echo lang('ipp_password'); ?>" value="<?php echo $payment_method_information->ipp_password; ?>">
                                    <span toggle="#ipp_password" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                </div>
                                <?php if (form_error('ipp_password')) { ?>
                                    <div class="alert alert-error" style="padding: 5px !important;">
                                        <p><?php echo form_error('ipp_password'); ?></p>
                                    </div>
                                <?php } ?>
                            </div> 

                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label><?php echo lang('ipp_gateway_mode'); ?> <span class="required_star">*</span></label>
                                </div>
                            </div>

                            <?php foreach ($ipp_methods as $im) {
                                $item_id = $im->id;
                                $ipp_items = explode("||", $payment_method_information->ipp_methods);
                                $checked = in_array($item_id, $ipp_items) ? 'checked' : '';
                                ?>
                                    <div class="col-md-3">
                                        <label class="container"><?= $im->name ?>
                                            <input type="checkbox" class="checkbox_user" <?= $checked ?> value="<?= $item_id ?>" name="item_id[]" <?= set_checkbox('item_id[]', $item_id) ?>>
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                            <?php
                                }
                            ?>
                        </div>

                        <hr />
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label><?php echo lang('ipp_emv_device_list'); ?> </label>
                                </div>
                            </div>

                            <div class="col-md-4 table-responsive"> 
                                <table id="datatable" class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 1%"><?php echo lang('sn'); ?></th>
                                            <th><?php echo lang('label'); ?></th>
                                            <th style="width: 0px"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        if ($emv_device_list && !empty($emv_device_list)) {
                                            $i = count($emv_device_list);
                                        }
                                        foreach ($emv_device_list as $value) {
                                            ?>                       
                                            <tr> 
                                                <td style="text-align: center"><?php echo $i--; ?></td>
                                                <td><?php echo $value->label; ?></td>
                                                <td><?php echo $value->id; ?></td> 
                                            </tr>
                                            <?php
                                        }
                                        ?> 
                                    </tbody>
                                </table>
                            </div>

                            <div class="col-md-4" style="padding-left: 30px;"> 
                                <div class="form-group">
                                    <label><?php echo lang('label'); ?> <span class="required_star">*</span></label>
                                    <input tabindex="6" type="text" id="u_emv_label" class="form-control" placeholder="<?php echo lang('label'); ?>" />
                                </div>
                                <button type="button" id="update_emv_label" class="btn btn-primary" disabled><?php echo lang('update_label'); ?></button>
                            </div>
                        </div>
                    <?php } ?>
                    <!-- /.box-body --> 
                </div>
                <div class="box-footer">
                    <button type="submit" name="submit" value="submit" class="btn btn-primary" <?php echo $payment_method_information->name === "IPP" ? "" : "disabled" ?>><?php echo lang('submit'); ?></button>
                    <a href="<?php echo base_url() ?>Master/paymentMethods"><button type="button" class="btn btn-primary"><?php echo lang('back'); ?></button></a>
                </div>
                <?php echo form_close(); ?>
                <form id="form_updateEMV" action="<?php echo base_url('Master/updateEMVLabel/' . $encrypted_id); ?>" method="post">
                    <input type="hidden" id="emv_id" name="emv_id" />
                    <input type="hidden" id="emv_label" name="emv_label" />
                </form>
            </div>
        </div>
    </div>
</section>

<script src="<?php echo base_url(); ?>assets/custom/js/input.js"></script>
 
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/bower_components/DataTables/DataTables-1.10.21/css/dataTables.bootstrap4.min.css"/>
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/bower_components/DataTables/Select-1.3.1/css/select.bootstrap4.min.css"/>
 
<script type="text/javascript" src="<?php echo base_url(); ?>assets/bower_components/DataTables/DataTables-1.10.21/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/bower_components/DataTables/DataTables-1.10.21/js/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/bower_components/DataTables/Select-1.3.1/js/dataTables.select.min.js"></script>

<script>
    var prevEMVLable = "";
    var selectEMVId = "";
    $(function () { 
        var datatable = $('#datatable').DataTable({ 
            bInfo : false,
            searching: false,
            ordering:  false,
            paging: false,
            select: true
        });
        datatable.column(2).visible(false);

        datatable.on('select', function( event, dt, type, indexes ) {
            if ( type === 'row' ) {
                var data = datatable.rows( indexes ).data();
                selectEMVId = data[0][2];
                prevEMVLable = data[0][1];
                $('#u_emv_label').val(prevEMVLable);
                $("#update_emv_label").prop('disabled', true);
            }
        });

        $("#u_emv_label").on('change', function() {
            if (selectEMVId == "") return false;
            
            var value = $(this).val();
            if (value == '' || value == prevEMVLable) {
                $("#update_emv_label").prop('disabled', true);
            } else {
                $("#update_emv_label").prop('disabled', false);
            }
        });
        $("#u_emv_label").on('input', function() {
            if (selectEMVId == "") return false;

            var value = $(this).val();
            if (value == '' || value == prevEMVLable) {
                $("#update_emv_label").prop('disabled', true);
            } else {
                $("#update_emv_label").prop('disabled', false);
            }
        });

        $("#update_emv_label").click(function() {
            $("#emv_id").val(selectEMVId);
            $("#emv_label").val($("#u_emv_label").val());
            
            $("#form_updateEMV").submit();
        });
    })
</script>