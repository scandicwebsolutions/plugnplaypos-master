<style type="text/css">
    .required_star{
        color: #dd4b39;
    }
    .center_positition{
        text-align: center !important;
    }
    .error-msg{
        display:none;
    }
</style> 
<link rel="stylesheet" href="<?= base_url('assets/') ?>buttonCSS/checkBotton.css">
<section class="content-header">
    <h1>
        <?php echo lang('assign_food_menu_tag'); ?>
    </h1>  
</section>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary"> 
                <!-- form start -->
                <?php echo form_open(base_url() . 'Master/assignFoodMenuTag/' . $encrypted_id, $arrayName = array('id' => 'food_menu_tag_form', 'enctype' => 'multipart/form-data')) ?>

                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">

                            <label class="container"> <?php echo lang('select_all'); ?>
                                <input type="checkbox" id="checkbox_userAll">
                                <span class="checkmark"></span>
                            </label>
                            <hr style="margin: 0px;margin-bottom: 0px;padding: 0px;margin-bottom: 6px;">
                            <?php
                                if (isset($tags)) {
                                    foreach ($tags as $tag) {
                                        $tag_id_ = $tag->id;
                                        if (!empty($food_menu_tags)) {
                                            foreach ($food_menu_tags as $fmt) {
                                                if (in_array($tag_id_, $food_menu_tags)) {
                                                    $checked = 'checked';
                                                } else {
                                                    $checked = '';
                                                }
                                            }
                                        } else {
                                            $checked = '';
                                        }
                            ?>
                                    <label class="container"><?= $tag->title ?>
                                        <input type="checkbox" class="checkbox_user" <?= $checked ?> value="<?= $tag->id ?>" name="tag_id[]" <?= set_checkbox('tag_id[]', $tag->id) ?>>
                                        <span class="checkmark"></span>
                                    </label>
                            <?php
                                    }
                                }
                            ?>

                            <?php if (form_error('tag_id')) { ?>
                                <div class="alert alert-error" style="padding: 5px !important;">
                                    <span class="error_paragraph"><?php echo form_error('tag_id'); ?></span>
                                </div>
                            <?php } ?>
                        </div>
                    </div>

                    <!-- /.box-body -->

                    <div class="box-footer">
                        <button type="submit" name="submit" value="submit" class="btn btn-primary"><?php echo lang('submit'); ?></button>
                        <a href="<?php echo base_url() ?>Master/foodMenus"><button type="button" class="btn btn-primary"><?php echo lang('back'); ?></button></a>
                    </div>
                    <?php echo form_close(); ?>
                </div>
            </div>
        </div>
    </div>

</section>

<script>
    $(document).ready(function(){
        if($(".checkbox_user").length == $(".checkbox_user:checked").length) {
            $("#checkbox_userAll").prop("checked", true);
        } else {
            $("#checkbox_userAll").removeAttr("checked");
        }
        // Check or Uncheck All checkboxes
        $("#checkbox_userAll").change(function(){
            var checked = $(this).is(':checked');
            if(checked){
                $(".checkbox_user").each(function(){
                    $(this).prop("checked",true);
                });
            }else{
                $(".checkbox_user").each(function(){
                    $(this).prop("checked",false);
                });
            }
        });

        $(".checkbox_user").click(function(){
            if($(".checkbox_user").length == $(".checkbox_user:checked").length) {
                $("#checkbox_userAll").prop("checked", true);
            } else {
                $("#checkbox_userAll").prop("checked", false);
            }
        });
    });
</script>