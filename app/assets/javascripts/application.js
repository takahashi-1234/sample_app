// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .


$(document).on('turbolinks:load',function(){
  $("#openmodal").click(function(){
    $("#modalarea").fadeIn();
  });
  $("#modalbg").click(function(){
    $("#modalarea").fadeOut();
  });
});

$(document).on('turbolinks:load',function(){
  $(".review_tab").click(function(){
    $(".review_tab").removeClass("tab_active");
    $(this).addClass("tab_active");
    $(".review_box").removeClass("box_active");
    const index=$(".review_tab").index(this);
    $(".review_box").eq(index).addClass("box_active");
  });
});