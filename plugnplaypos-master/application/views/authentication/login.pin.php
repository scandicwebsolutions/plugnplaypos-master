<div class="form-group">
    <a href="<?php echo base_url() . 'Authentication/chooseLoginType/email'; ?>">Login by Email</a>
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
    <input type="hidden" name="login_type" value="pin" />
    <div class="form-group has-feedback">
        <input type="password" id="pin-code" name="pin_code" class="form-control" placeholder="" readonly/>
    </div>
    
    <?php if (form_error('pin_code')) { ?>
        <div class="alert alert-error" style="padding: 5px !important;">
            <p><?php echo form_error('pin_code'); ?></p>
        </div>
    <?php } ?>

    <div class="row" style="margin-top: 20px;">
        <div class="col-sm-4">
            <button type="button" class="pin-button" value="1" onClick="addNumber(this)">1</button>
        </div>
        <div class="col-sm-4">
            <button type="button" class="pin-button" value="2" onClick="addNumber(this)">2</button>
        </div>
        <div class="col-sm-4">
            <button type="button" class="pin-button" value="3" onClick="addNumber(this)">3</button>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-4">
            <button type="button" class="pin-button" value="4" onClick="addNumber(this)">4</button>
        </div>
        <div class="col-sm-4">
            <button type="button" class="pin-button" value="5" onClick="addNumber(this)">5</button>
        </div>
        <div class="col-sm-4">
            <button type="button" class="pin-button" value="6" onClick="addNumber(this)">6</button>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-4">
            <button type="button" class="pin-button" value="7" onClick="addNumber(this)">7</button>
        </div>
        <div class="col-sm-4">
            <button type="button" class="pin-button" value="8" onClick="addNumber(this)">8</button>
        </div>
        <div class="col-sm-4">
            <button type="button" class="pin-button" value="9" onClick="addNumber(this)">9</button>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-4">
            <button type="button" class="pin-button" value="0" onClick="addNumber(this)">0</button>
        </div>
        <div class="col-sm-4">
            <button type="button" class="pin-clear" value="" onClick="clearNumber()">Clear</button>
        </div>
        <div class="col-sm-4">
            <button type="submit" id="submit" name="submit" value="submit" class="pin-enter">Done</button>
        </div>
    </div>
<?php echo form_close(); ?>