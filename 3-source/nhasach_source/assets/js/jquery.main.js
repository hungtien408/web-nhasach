(function ($) {
    function pageLoad() {

    }
    $(window).load(function () {
        // slider banner
        //$('.list-package li:nth-child(2) .box-package:nth-child(2)').append('<div class="bg-home"><img src="assets/images/package-home.png" alt="" /></div>');
        //$('.list-package li:nth-child(2) .box-package:nth-child(2)').insertBefore('.list-package li:nth-child(2) .box-package:nth-child(1)');
        $('#slidernopage').nivoSlider({
            pauseTime: 4000,
            pauseOnHover: false,
            controlNav: true,
            directionNav: false
        });

        //mymap();
        EqualSizer('.quytrinh .nav-tabs li a, .box-dv');
    });
    $(function () {
        $(".panel-left").mobilepanel();
        $(".panel-right").mobilepanel({ panelLeft: false });
        $(".menu-header > li").clone().appendTo($("#menuMobile"));
        $("#menuMobile").append('<li><a href="javascript:void(0);">Dịch vụ</a><ul class="menu-sub"></ul></li>');
        $("#menu > li").clone().appendTo($(".menu-sub"));
        $("#menuMobile input").remove();
        //$("#menuMobile > li > a").append('<span class="fa fa-chevron-circle-right iconar"></span>');
//        $("#menuMobile > li > .menu-sub").each(function () {
//            $(this).parent("li").append($(this).find("ul:first"));
//        });
        //$("#menuMobile .menu-sub, #menuMobile .menubg").remove();
        if ($(window).width() > 990) {
            $('.wrapper-service').textHeight({
                activetit: true,
                listcss: [{ cssname: ".service-box" }, { cssname: ".service-name" }, { cssname: ".service-content" }],
                wpointb: false,
                widthpont: 479,
                desbool: true,
                listpos: [{ cssnamepos: ".description", cssheightnum: "3" }],
                max: true
            });
        }
//        $('.wrapper-dv').textHeight({
//            activetit: true,
//            listcss: [{ cssname: ".box-dv" }, { cssname: ".title-dv" }, { cssname: ".list-dv" }],
//            wpointb: false,
//            widthpont: 479,
//            desbool: true,
//            listpos: [{ cssnamepos: ".description", cssheightnum: "3"}],
//            max: true
//        });
        $('.list-package').textHeight({
            activetit: true,
            listcss: [{ cssname: ".box-package" }, { cssname: ".package-name" }, { cssname: ".package-content" }],
            wpointb: false,
            widthpont: 479,
            desbool: true,
            listpos: [{ cssnamepos: ".description", cssheightnum: "3"}],
            max: true
        });
        $('.slider-tree1').slick({
            slidesToShow: 1,
            rows: 1,
            dots: true,
            arrows: false
//            prevArrow: $(".slidePrevo1"),
//            nextArrow: $(".slideNexto1")
        });
        mymenudes();
        menusroll();
        $("#sroltop a").click(function () {
            $("html, body").stop(true, true).animate({ scrollTop: 0 }, 500);
            return false;
        });
        mysroll();
    });
    //function===============================================================================================
    // function mymenudes() use hover menu show menusub
    function mymenudes() {
        mymenusub();
        $(window).resize(function () {
            mymenusubre();
        });
        $("#menu li").hover(function () {
            $(this).find(".menu-sub:first").stop(true, true).slideDown();
        }, function () {
            $(this).find(".menu-sub:first").stop(true, true).slideUp();
        });
    }
    function mymenusub() {
        $("#menu").addClass("show-menu").find(".menu-sub").show();
        $("#menu li").each(function () {
            var wsub = $(this).find(".menu-sub:first").width();
            $(this).find(".menu-sub:first").width(wsub).attr("data-width", wsub);
            var position = $(this).position();
            var leftmenu = position.left;
            var menuw = $("#menu").width() - leftmenu;
            if (menuw < wsub) {
                $(this).find(".menu-sub:first").addClass("menu-right");
            }
        });
        $("#menu").removeClass("show-menu").find(".menu-sub").hide();
        //            $("#menu").removeClass("show-menu");
    }
    function mymenusubre() {
        $("#menu li").each(function () {
            var wsub = $(this).find(".menu-sub:first").attr("data-width");
            var position = $(this).position();
            var leftmenu = position.left;
            var menuw = $("#menu").width() - leftmenu;
            if (menuw < wsub) {
                $(this).find(".menu-sub:first").addClass("menu-right");
            } else {
                $(this).find(".menu-sub:first").removeClass("menu-right");
            }
        });
    }
    function mysroll() {
        mysrol();
        $(window).scroll(function () {
            mysrol();
        });
    }
    function mysrol() {
        var topsroll = $(window).scrollTop();
        if (topsroll > 100) {
            $("#sroltop").stop(true, true).animate({ "opacity": 0.5 }, 500);
        } else {
            $("#sroltop").stop(true, true).animate({ "opacity": 0 }, 500);
        }
    }
    // function menusroll() when scroll menu always top not scroll
    function menusroll() {
        var htop = $("#header").height();
        srollmenu(htop);
        $(window).scroll(function () {
            srollmenu(htop);
        });
    }
    function srollmenu(htop) {
//        if ($(window).scrollTop() > htop) {
//            $("#header-menu").addClass("header-sroll");
//        } else {
//            $("#header-menu").removeClass("header-sroll");
//        }
    }
    //==================
    function mymap() {
        mympp();
        var timeout;
        $(window).resize(function () {
            clearTimeout(timeout);
            setTimeout(function () {
                mympp();
            }, 500);
        });
    }
    function mympp() {
        $('#mapwrap').remove();
        if ($(window).width() > 768) {
            $('#mapshow').append('<div id="mapwrap"><iframe id="iframe" src="map.aspx" frameborder="0" height="100%" width="100%"></iframe></div>');
        }
    }
})(jQuery);


$('.slider-for').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    fade: true,
    asNavFor: '.slider-nav'
});
$('.slider-nav').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    asNavFor: '.slider-for',
    dots: true,
    arrows: false,
});
/** active tab bootstrap **/
$('.nav-tabs').find('li').first().addClass('active');
$('.tab-content').find('.tab-pane').first().addClass('active');
function DoEqualSizer(myclass) {
    var heights = $(myclass).map(function() {
        $(this).height('auto');
        return $(this).height();
    }).get(),
    maxHeight = Math.max.apply(null, heights);
    $(myclass).height(maxHeight);
};

function EqualSizer(myclass) {
    $(document).ready(DoEqualSizer(myclass));
    window.addEventListener('resize', function() { 
        DoEqualSizer(myclass); 
    });
};
$(window).ready(function() {
    $(window).resize(function() {
		var winwidth = $(window).width();
		if (winwidth > 640) {
		    $('.bg-home').remove();
			$('.list-package li:nth-child(2) .box-package:nth-child(2)').append('<div class="bg-home"><img src="assets/images/package-home.png" alt="" /></div>');
			$('.list-package li:nth-child(2) .box-package:nth-child(2)').insertBefore('.list-package li:nth-child(2) .box-package:nth-child(1)');
		}
		else {
		    $('.bg-home').remove();
		    $('.list-package li:nth-child(2) .box-package:nth-child(1)').insertBefore('.list-package li:nth-child(2) .box-package:nth-child(2)');
		}
    }).resize();
});