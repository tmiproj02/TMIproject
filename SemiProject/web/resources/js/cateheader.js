$(document).ready(function(){
    $(".navsize,.category-menu").mouseenter(function(){
        $(".category-menu").stop().slideDown(500,function(){
        $(".ul_out").delay(100).fadeIn(300);
        })
    })
    $(".navsize,.category-menu").mouseleave(function(){
        $(".category-menu").stop().slideUp(500,function(){
        $(".ul_out").fadeOut(100);
        })
    })
})