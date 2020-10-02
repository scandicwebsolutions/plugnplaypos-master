<div class="form-group">
    <a href="<?php echo base_url() . 'Authentication/chooseLoginType/pin'; ?>">Login by PIN</a>
</div>

<?php
    if ($this->session->flashdata('exception_1')) {
        echo '<div class="alert alert-danger alert-dismissible"> 
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <p><i class="icon fa fa-check"></i>';
        echo $this->session->flashdata('exception_1');
        echo '</p></div>';
    }
?>

<?php echo form_open(base_url('Authentication/loginCheck')); ?>
    <input type="hidden" name="login_type" value="email" />
                            
    <div class="form-group has-feedback">
        <input type="text" class="form-control" name="email_address" placeholder="<?php echo lang('email_address'); ?>" value="<?php if(APPLICATION_MODE == 'demo'){ echo "admin@doorsoft.xyz"; }else{ echo '';} ?>">
        <!-- <span class="glyphicon glyphicon-envelope form-control-feedback"></span> -->
    </div>

    <?php if (form_error('email_address')) { ?>
        <div class="alert alert-error" style="padding: 5px !important;">
            <p><?php echo form_error('email_address'); ?></p>
        </div>
    <?php } ?>

    <div class="form-group has-feedback pass">
        <input type="password" name="password" class="form-control" placeholder="<?php echo lang('password'); ?>" value="<?php if(APPLICATION_MODE == 'demo'){ echo "123456"; }else{ echo '';} ?>">
        <!-- <span class="glyphicon glyphicon-lock form-control-feedback"></span> -->
    </div>

    <?php if (form_error('password')) { ?>
        <div class="alert alert-error" style="padding: 5px !important;">
            <p><?php echo form_error('password'); ?></p>
        </div>
    <?php } ?>

    <div class="row"> 
        <!-- /.col -->
        <div class="col-xs-12">
            <button type="submit" name="submit" value="submit" class="custom-btn"><?php echo lang('login'); ?></button>
        </div>
        <!-- /.col -->
    </div>
<?php echo form_close(); ?>