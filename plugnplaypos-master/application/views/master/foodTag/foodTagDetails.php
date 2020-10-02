<style type="text/css"> 
    .field_value{
        font-size: 16px;
        font-style: italic;
    }
</style> 

<section class="content-header">
    <h1>
       <?php echo lang('food_tag_details'); ?>
    </h1>  
</section>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary"> 
                <!-- form start --> 
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-4">

                            <div class="form-group">
                                <h3><?php echo lang('title'); ?></h3>
                                <p class=""><?php echo $food_tag_details->title; ?></p>
                            </div> 
                        </div>
                        <div class="col-md-4">
                            <div class="form-group"> 
                                <h3><?php echo lang('type'); ?></h3>
                                <p class=""><?php echo $food_tag_details->type; ?></p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group"> 
                                <h3><?php echo lang('description'); ?></h3> 
                                <p class=""><?php echo $food_tag_details->description; ?></p>
                            </div>
                        </div>
                    </div>

                    <div class="row" style="margin:20px 0 10px 0;">
                        <h3 style="float:left;margin: 0px;"><?php echo lang('preview'); ?></h3>
                    </div>
                    <div class="row">
                        <div class="col-md-12" style="margin-left: 100px;">
                            <h4><?php echo $food_tag_details->title; ?></h4>
                            <?php if ($food_tag_details->type == 'Text Field') { ?>
                                <input type="text" name="items" placeholder="<?php echo $food_tag_details->title; ?>" />
                            <?php } else { ?>
                                <div class="form-group radio_button_problem">
                                    <div class="radio" style="margin-left:20px;">
                                    <?php
                                        $i = 0;
                                        $tab_index = 0;

                                        if ($food_tag_items && !empty($food_tag_items)) {
                                            foreach ($food_tag_items as $fti) {
                                    ?>
                                        <?php if ($food_tag_details->type == 'Radio Group') { ?>
                                            <p style="margin: 15px;"><input type="radio" name="items" > <span style="padding-left:10px;"><?php echo $fti->title . '  (' . $fti->price .'$)'; ?></span></p>
                                        <?php } else { ?>
                                            <p style="margin: 15px;"><input type="checkbox" name="items" > <span style="padding-left:10px;"><?php echo $fti->title . '  (' . $fti->price .'$)'; ?></span></p>
                                    <?php
                                                }
                                            }
                                        }
                                    ?>
                                    </div>
                                </div>
                            <?php } ?>
                        </div>
                    </div> 
                </div>
                <!-- /.box-body -->

                <div class="box-footer"> 
                    <a href="<?php echo base_url() ?>Master/addEditFoodTag/<?php echo $encrypted_id; ?>"><button type="button" class="btn btn-primary"><?php echo lang('edit'); ?></button></a>
                    <a href="<?php echo base_url() ?>Master/foodTags"><button type="button" class="btn btn-primary"><?php echo lang('back'); ?></button></a>
                </div> 
            </div>
        </div>
    </div>    
</section>