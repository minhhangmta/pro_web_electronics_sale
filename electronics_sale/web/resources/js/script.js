
$(document).ready(function () {


    /* ---- Countdown timer ---- */

    $('#counter').countdown({
        timestamp: (new Date()).getTime() + 11 * 24 * 60 * 60 * 1000
    });


    /* ---- Animations ---- */

    $('#links a').hover(
            function () {
                $(this).animate({left: 3}, 'fast');
            },
            function () {
                $(this).animate({left: 0}, 'fast');
            }
    );

    $('footer a').hover(
            function () {
                $(this).animate({top: 3}, 'fast');
            },
            function () {
                $(this).animate({top: 0}, 'fast');
            }
    );






});

//Ham an category con
function hiddenCategory(id) {
    // Nếu đang hiện
    if (document.getElementById(id).style.display == "block") {
        document.getElementById(id).style.display = "none";
    } else {// Nếu đang ẩn
        document.getElementById(id).style.display = "block";
    }
}