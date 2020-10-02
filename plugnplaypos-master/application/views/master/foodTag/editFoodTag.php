<style type="text/css">
    .aligning{
        width: auto; float:left
    } 
    .label_aligning{
        float: left; padding: 5px 0px 0px 3px;
    }
</style>
<script>
    var items_array = [];

    $(function () {
        //Initialize Select2 Elements
        $('.select2').select2({
            minimumResultsForSearch: -1
        });

        $(document).on('keydown', '.integerchk', function(e){
            /*$('.integerchk').keydown(function(e) {*/
            var keys = e.charCode || e.keyCode || 0;
            // allow backspace, tab, delete, enter, arrows, numbers and keypad numbers ONLY
            // home, end, period, and numpad decimal
            return (
                keys == 8 || 
                keys == 9 ||
                keys == 13 ||
                keys == 46 ||
                keys == 110 ||
                keys == 86 ||
                keys == 190 ||
                (keys >= 35 && keys <= 40) ||
                (keys >= 48 && keys <= 57) ||
                (keys >= 96 && keys <= 105));
        });

        var suffix = 
<?php
            if (isset($food_tag_items)) {
                echo count($food_tag_items);
            } else {
                echo 0;
            }
?>;  
     
        var tab_index = (suffix + 1) * 3 + 1;
        
        $('#type').change(function(){
            var type=$('#type').val();

            if (type == "Text Field") {
                $('#items_table_container').css("display", "none");
            } else {
                $('#items_table_container').css("display", "block");
            }
        });

        $('#new_item').click(function() {
            var cart_row = '<tr class="rowCount" id="row_' + suffix + '">'+
                    '<td style="width: 5%; padding-left: 10px;"><p>'+suffix+'</p></td>'+
                    '<td style="width: 35%"><input type="text" tabindex="'+ tab_index++ +'" id="item_title_' + suffix + '" name="item_title[]" class="form-control aligning" style="width: 85%;" placeholder="<?php echo lang('title') . '(*)'; ?>"/></td>'+
                    '<td style="width: 30%"><input type="text" tabindex="'+ tab_index++ +'" id="item_description_' + suffix + '" name="item_description[]" class="form-control aligning" style="width: 85%;" placeholder="<?php echo lang('description'); ?>"/></td>'+
                    '<td style="width: 20%"><input type="text" tabindex="'+ tab_index++ +'" id="item_price_' + suffix + '" name="item_price[]" onfocus="this.select();" class="form-control integerchk aligning" style="width: 85%;" placeholder="<?php echo lang('price') . '(*)'; ?>"/></td>'+
                    '<td style="width: 10%"><div style="text-align:center;"><a class="btn btn-danger btn-xs" style="margin-left: 5px; margin-top: 10px;" onclick="return deleter(' + suffix + ');" ><i class="fa fa-trash"></i> </a></div></td>'+
                    '</tr>';

            $('#items_table tbody').append(cart_row);
            updateRowNo();

            suffix++;
        });

        // Validate form
        $("#food_tags_form").submit(function(){
            invalidateForm();

            var title = $("#title").val();
            var type=$('#type').val();
            var items_count = $("[id^='item_title']").length;
            var error = false;

            if(title == ""){ 
                $("#title_err_msg").text("<?php echo lang('title_field_required'); ?>");
                $(".title_err_msg_contnr").show(200);
                error = true;
            }
            if(title.length > 50){ 
                $("#title_err_msg").text("<?php echo lang('title_field_max_length'); ?>");
                $(".title_err_msg_contnr").show(200);
                error = true;
            }

            if (type != "Text Field" && items_count == 0) {
                $("#items_err_msg").text("<?php echo lang('at_least_items_required'); ?>");
                $(".items_err_msg_contnr").show(200);
                error = true;
            } else {
                $("[id^='item_title']").each(function(){
                    if ($.trim($(this).val()) == '') {
                        $(this).css({"border-color":"red"}).show(200);
                        error = true;
                    }
                });

                $("[id^='item_price']").each(function(){
                    var price = $.trim($(this).val());
                    if(price == '' || isNaN(price)){ 
                        $(this).css({"border-color":"red"}).show(200);
                        error = true;
                    }
                });
            }

            if(error == true){
                return false;
            } 
        });
    })

    function invalidateForm(){
        $("#title_err_msg").text('');
        $(".title_err_msg_contnr").hide(200);

        $("#items_err_msg").text('');
        $(".items_err_msg_contnr").hide(200);

        $("[id^='item_title']").each(function(){
            $(this).css({"border-color":"#ccc"}).show(200);
        });

        $("[id^='item_price']").each(function(){
            $(this).css({"border-color":"#ccc"}).show(200);
        });
    }

    function deleter(suffix){
        swal({
            title: "<?php echo lang('alert'); ?>",
            text: "<?php echo lang('are_you_sure'); ?>?",
            confirmButtonColor: '#3c8dbc',
            cancelButtonText:'<?php echo lang('cancel'); ?>',
            confirmButtonText:'<?php echo lang('ok'); ?>',
            showCancelButton: true
        }, function() {
            $("#row_"+suffix).remove();
            updateRowNo();
        });

    } 

    function updateRowNo(){ 
        var numRows=$("#items_table tbody tr").length; 
        for(var r=0;r<numRows;r++){
            $("#items_table tbody tr").eq(r).find("td:first p").text(r+1);
        }
    }
</script>

<style type="text/css">
    .required_star{
        color: #dd4b39;
    }
    .radio_button_problem{
        margin-bottom: 19px;
    }
    .foodMenuCartInfo{
        border: 2px solid #3c8dbc;
        padding: 15px;
        border-radius: 5px;
        color: #3c8dbc;
        font-size: 14px;
        margin-top: 0px;
        text-align: justify;
    }
    .foodMenuCartNotice{
        border: 2px solid red;
        padding: 15px;
        border-radius: 5px;
        color: red;
        font-size: 14px;
        margin-top: 0px;
        text-align: justify;
    }
    .cart_header{ 
        background-color: #ecf0f5;  
        padding: 5px 0px;
        margin-bottom: 5px;
    }
    .ch_content{
        font-weight: bold;
    }
    .custom_form_control{
        border-radius: 0;
        box-shadow: none;
        border-color: #d2d6de;  
        width: 80%;
        height: 26px;
        padding: 6px 12px;
        font-size: 14px;
        line-height: 1.42857143;
        color: #555;
        background-color: #fff;
        background-image: none;
        border: 1px solid #ccc;
        margin: 0px 3px 7px 0px;
    }
    .center_positition{
        text-align: center !important;
    }
    .error-msg{
        display:none;
    }
    .btn-add {
        background-color: #fff;
        color: #00bcd4;
        border: 1px solid #00bcd4;
        outline: none;
        padding: 5px;
        display: block;
        border-radius: 5px;
        text-align: center;
    }
    .btn-add:hover {
        box-shadow: #00bcd4 0 0 1px 1px;
    }
    .btn-add:active {
        background: #00bcd4;
        color: #fff;
    }
</style> 

<section class="content-header">
    <h1>
        <?php echo lang('edit_food_tag'); ?>
    </h1>  
</section>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <?php echo form_open(base_url() . 'Master/addEditFoodTag/' . $encrypted_id, $arrayName = array('id' => 'food_tags_form')) ?>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label><?php echo lang('title'); ?> <span class="required_star">*</span></label>
                                <input tabindex="1" type="text" id="title" name="title" class="form-control" placeholder="<?php echo lang('title'); ?>" value="<?php echo $food_tag_details->title; ?>" />
                            </div>
                            <!-- <?php if (form_error('title')) { ?>
                                <div class="alert alert-error" style="padding: 5px !important;">
                                    <p><?php echo form_error('title'); ?></p>
                                </div>
                            <?php } ?> -->
                            <div class="alert alert-error error-msg title_err_msg_contnr" style="padding: 5px !important;">
                                <p id="title_err_msg"></p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group"> 
                                <label><?php echo lang('type'); ?> <span class="required_star">*</span></label>
                                <select tabindex="2" class="form-control select2 select2-hidden-accessible" name="type" id="type" style="width: 100%;">
                                    <!-- <option value=""><?php echo lang('select'); ?></option> -->
                                    <?php foreach ($types as $type) { ?>
                                        <option value="<?php echo $type; ?>"
                                            <?php
                                                if ($food_tag_details->type == $type) {
                                                    echo "selected";
                                                }
                                            ?> >
                                            <?php echo $type; ?>
                                        </option>
                                    <?php } ?>
                                </select>
                            </div>  
                            <?php if (form_error('type')) { ?>
                                <div class="alert alert-error" style="padding: 5px !important;">
                                    <p><?php echo form_error('type'); ?></p>
                                </div>
                            <?php } ?> 
                            <div class="alert alert-error error-msg type_err_msg_contnr" style="padding: 5px !important;">
                                <p id="type_id_err_msg"></p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label><?php echo lang('description'); ?></label>
                                <input tabindex="3" type="text" name="description" class="form-control" placeholder="<?php echo lang('description'); ?>" value="<?php echo $food_tag_details->description; ?>" >
                            </div>
                        </div>
                    </div>

                    <div class="clearfix"></div>
                    <div id="items_table_container" style="<?php if ($food_tag_details->type == $type) { echo 'display:none;';}?>">
                        <div class="row" style="margin:20px 0 10px 0;">
                            <div class="col-md-12">
                                <h3 style="float:left;margin: 0px;"><?php echo lang('items'); ?></h3>
                                <button type="button" class="btn-add" id="new_item" onClick="" style="float:right;"><?php echo lang('new_item'); ?></button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive" id="items_table">          
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th style="width: 5%;"><?php echo lang('sn'); ?></th>
                                                <th style="width: 35%;"><?php echo lang('title'); ?></th>
                                                <th style="width: 30%;"><?php echo lang('description'); ?></th>
                                                <th style="width: 20%;"><?php echo lang('price'); ?></th>
                                                <th style="width: 10%;text-align: center"><?php echo lang('actions'); ?></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                                $i = 0;
                                                $tab_index = 0;

                                                if ($food_tag_items && !empty($food_tag_items)) {
                                                    foreach ($food_tag_items as $fti) {
                                                        echo '<tr class="rowCount" id="row_' . $i . '">' .
                                                            '<td style="width: 5%; padding-left: 10px;"><p>' . $i . '</p></td>' .
                                                            '<td style="width: 35%"><input type="text" tabindex="' . $tab_index++ . '" id="item_title_' . $i . '" name="item_title[]" class="form-control aligning" style="width: 85%;" placeholder="' . lang('title') . '(*)' . '" value="' . $fti->title . '" /></td>' .
                                                            '<td style="width: 30%"><input type="text" tabindex="' . $tab_index++ . '" id="item_description_' . $i . '" name="item_description[]" class="form-control aligning" style="width: 85%;" placeholder="' . lang('description') . '" value="' . $fti->description . '" /></td>' .
                                                            '<td style="width: 20%"><input type="text" tabindex="' . $tab_index++ . '" id="item_price_' . $i . '" name="item_price[]" onfocus="this.select();" class="form-control integerchk aligning" style="width: 85%;" placeholder="' . lang('price') . '(*)' . '" value="' . $fti->price . '" /></td>' .
                                                            '<td style="width: 10%"><div style="text-align:center;"><a class="btn btn-danger btn-xs" style="margin-left: 5px; margin-top: 10px;" onclick="return deleter(' . $i . ');" ><i class="fa fa-trash"></i> </a></div></td>' .
                                                            '</tr>';
                                                        $i++;
                                                    }
                                                }
                                            ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="alert alert-error error-msg items_err_msg_contnr" style="padding: 5px !important;">
                            <p id="items_err_msg"></p>
                        </div>
                    </div>

                    <!-- /.box-body -->

                    <div class="box-footer">
                        <button type="submit" id="submit" name="submit" value="submit" class="btn btn-primary"><?php echo lang('submit'); ?></button>
                        <a href="<?php echo base_url() ?>Master/foodTags"><button type="button" class="btn btn-primary"><?php echo lang('back'); ?></button></a>
                    </div>
                    <?php echo form_close(); ?>
                </div>
            </div>
        </div>
    </div>
</section>