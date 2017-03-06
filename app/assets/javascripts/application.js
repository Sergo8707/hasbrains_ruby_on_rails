// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

jQuery(function ($) {

    $('#crop_image').Jcrop({
        onSelect: writeCoordinates,
        boxWidth: 400,
        aspectRatio: 1,
        minSize: [200, 200],
        setSelect: [0, 0, 400, 400]
    });

    function writeCoordinates(c) {
        $('#item_image_crop_data_x').val(c.x)
        $('#item_image_crop_data_y').val(c.y)
        $('#item_image_crop_data_width').val(c.w)
        $('#item_image_crop_data_height').val(c.h)
    }
});