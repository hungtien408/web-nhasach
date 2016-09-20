(function ($) {
    $.fn.extend({
        textHeight: function (options) {
            // Đặt các giá trị mặc định

            var defaults = {
                listcss: [{ cssname: ".news-name" }, { cssname: ".description"}],
                wpointb: false,
                widthpont: 479,
                max: true
            };

            var options = $.extend(defaults, options);

            return this.each(function () {

                var opts = options;
                // Đặt tên biến cho element (ul)
                var obj = $(this);
                // Lấy tất cả thẻ li trong ul
                var lenw = opts.listcss.length;
                var cleartimef;
                myfunh();
                $(window).resize(function () {
                    myfunh();
                });
                function myfunh() {
                    for (var i = 0; i < lenw; i++) {
                        $(opts.listcss[i].cssname, obj).height("auto");
                    }
                    if (opts.wpointb) {
                        if ($(window).outerWidth() >= opts.widthpont) {
                            myfunHeight();
                        }
                    } else {
                        myfunHeight();
                    }
                }
                function myfunHeight() {
                    clearTimeout(cleartimef);
                    cleartimef = setTimeout(function () {
                        if (opts.max) {
                            obj.each(function () {
                                for (var i = 0; i < lenw; i++) {

                                    var maxHeight = Math.max.apply(null, $(opts.listcss[i].cssname, this).map(function () {
                                        return $(this).outerHeight();
                                    }).get());
                                    $(opts.listcss[i].cssname, this).height(maxHeight);
                                }
                            });
                        } else {
                            obj.each(function () {
                                for (var i = 0; i < lenw; i++) {

                                    var maxHeight = Math.min.apply(null, $(opts.listcss[i].cssname, this).map(function () {
                                        return $(this).outerHeight();
                                    }).get());
                                    $(opts.listcss[i].cssname, this).height(maxHeight);
                                }
                            });
                        }
                    }, 500);
                }
            });
        }
    });
})(jQuery);