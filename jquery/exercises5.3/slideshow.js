
$(document).ready(function() {

    $slideshow_images = $('ul#slideshow');
    $total_window = $('<input type = "text"/>');

    $slideshow_images.after($total_window);
    $current_window = $('<input type = "text"/>');

    $slideshow_images.prependTo($('body'));
    $slideshow_images.after($total_window);
    $slideshow_images.after($current_window);

    $slideshow_images = $slideshow_images.children('li');
    $slideshow_images.fadeOut();

    var length = $slideshow_images.length;
    $total_window.attr('value', length);

    var i = 0;    
    fadingIn(i);

    function fadingIn(i) {
        $current_window.attr('value', i + 1);
        $($slideshow_images[i]).fadeIn(1000, function() {
            fadingOut(i);            
        });
    }

    function fadingOut(i) {
        $($slideshow_images[i]).fadeOut(1000, function() {
            i = (i + 1) % length;
            fadingIn(i);
        });
    }
});
