(function ($) {
    $.fn.vzSlider = function (options) {

        var defaults = {
            mode: 'horizontal',
            startSlide: 0,
            pager: false,
            duration: 500,
            easing: '',
            auto: false,
            autoSpeed: 5000
        }

        var options = $.extend(defaults, options);
        var sliderWrap = this.parent();
        var sliderObject = this;
        var slide = sliderObject.children();
        var slideWidth = slide.width();
        var slideHeight = slide.height();
        var firstSlide = 0;
        var lastSlide = slide.last().index();
        var currentNo = '';
        var $pager = '';
        var $prevBtn = "";
        var $nextBtn = "";
        var interval = '';

        sliderWrap.append('<a href="#" class="prev">prev</a><a href="#" class="next">next</a>');
        $prevBtn = sliderWrap.children('.prev');
        $nextBtn = sliderWrap.children('.next');

        function pagerActive(pageNo) {
            $pager.children('a').removeClass('pager-current');
            $pager.children('a').eq(pageNo).addClass('pager-current');
        }

        if (options.pager == true) {
            sliderWrap.append('<div class="pager"></div>');
            $pager = sliderWrap.children('.pager');
            slide.each(function (index) {
                $pager.append('<a href="#">' + (index + 1) + '</a>');
            });
            $pager.children('a').click(function () {
                var pageNo = $(this).index();
                sliderObject.goSlide(pageNo);
                pagerActive(pageNo);
                return false;
            });
            $pager.children('a').eq(options.startSlide).addClass('pager-current');
        }

        if (options.mode == 'fade') {
            slide.not(slide.eq(options.startSlide)).css({ display: 'none' });
            slide.css({ position: 'absolute', left: slideWidth, top: 0 });
        } else if (options.mode == 'vertical') {
            slide.css({ position: 'absolute', left: 0, top: slideHeight });
        } else {
            slide.css({ position: 'absolute', left: slideWidth, top: 0 });
        }
        slide.eq(options.startSlide).css({ left: 0, top: 0 });
        slide.eq(options.startSlide).addClass('current')

        this.goNext = function (pageNo) {
            var currentNo = sliderObject.children('.current').index();
            var nextNo = pageNo;
            if (options.pager == true) {
                pagerActive(pageNo);
            }
            slide.removeClass('current');
            if (options.mode == 'fade') {
                slide.eq(nextNo).addClass('current').css({ left: 0 });
                slide.hide();
                slide.eq(nextNo).show();
            } else if (options.mode == 'vertical') {
                slide.eq(nextNo).addClass('current').css({ top: slideHeight });
                slide.eq(currentNo).stop().animate({ top: '-' + slideHeight + 'px' }, options.duration, options.easing);
                slide.eq(nextNo).stop().animate({ top: '0' }, options.duration, options.easing);
            } else {
                slide.eq(nextNo).addClass('current').css({ left: slideWidth });
                slide.eq(currentNo).stop().animate({ left: '-' + slideWidth + 'px' }, options.duration, options.easing);
                slide.eq(nextNo).stop().animate({ left: '0' }, options.duration, options.easing);
            }
        }

        this.goPrev = function (pageNo) {
            var currentNo = sliderObject.children('.current').index();
            var prevNo = pageNo;
            if (options.pager == true) {
                pagerActive(pageNo);
            }
            slide.removeClass('current');
            if (options.mode == 'fade') {
                slide.eq(prevNo).addClass('current').css({ left: 0 });
                slide.hide();
                slide.eq(prevNo).show();
            } else if (options.mode == 'vertical') {
                slide.eq(prevNo).addClass('current').css({ top: '-' + slideHeight + 'px' });
                slide.eq(currentNo).stop().animate({ top: slideHeight }, options.duration, options.easing);
                slide.eq(prevNo).stop().animate({ top: '0' }, options.duration, options.easing);
            } else {
                slide.eq(prevNo).addClass('current').css({ left: '-' + slideWidth + 'px' });
                slide.eq(currentNo).stop().animate({ left: slideWidth }, options.duration, options.easing);
                slide.eq(prevNo).stop().animate({ left: '0' }, options.duration, options.easing);
            }
        }

        this.goSlide = function (pageNo) {
            var currentNo = sliderObject.children('.current').index();
            if (currentNo == pageNo) {
                return false;
            } else if (currentNo > pageNo) {
                sliderObject.goPrev(pageNo);
            } else {
                sliderObject.goNext(pageNo);
            }
        }

        $nextBtn.click(function () {
            var currentNo = sliderObject.children('.current').index();
            var pageNo = currentNo + 1;
            if (currentNo == lastSlide) {
                var pageNo = 0;
            }
            sliderObject.goNext(pageNo);
            return false;
        });

        $prevBtn.click(function () {
            var currentNo = sliderObject.children('.current').index();
            var pageNo = currentNo - 1;
            if (currentNo == 0) {
                var pageNo = lastSlide;
            }
            sliderObject.goPrev(pageNo);
            return false;
        });

        this.autoStop = function () {
            clearInterval(interval);
        }

        function setAutoInterval() {
            interval = setInterval(function () {
                var currentNo = sliderObject.children('.current').index();
                var pageNo = currentNo + 1;
                if (currentNo == lastSlide) {
                    var pageNo = 0;
                }
                sliderObject.goNext(pageNo);
            }, options.autoSpeed);
        }

        this.autoStart = function () { setAutoInterval(); }

        if (options.auto == true) {
            sliderObject.autoStart(true);
            sliderWrap.mouseover(function () {
                sliderObject.autoStop(true);
            });
            sliderWrap.mouseleave(function () {
                sliderObject.autoStart(true);
            });
        }

        return this;
    }
})(jQuery);

$(function () {
    $('.btn-about-note').click(function () {
        $('.pop-bg').show();
        $('.pop-about-h-note').show();
        return false;
    });
    $('.btn-about-reminder').click(function () {
        $('.pop-bg').show();
        $('.pop-about-h-reminder').show();
        return false;
    });
    $('.btn-pop-close').click(function () {
        $('.pop-bg').hide();
        $('.pop-about-h-note').hide();
        $('.pop-about-h-reminder').hide();
        return false;
    });

    $('.quiz-type-ox dd.answer a').append('<span class="icon-hover"></span>');
    $('.quiz-type-multiple dd.answer a').append('<span class="icon-hover"></span>');
    
});


function fnScrap(sType, chapterNo, refSeq) {
    var param = '?scrapType=' + sType + '&chapterNo=' + chapterNo + '&refSeq=' + refSeq;
    window.open('/Study/HTools/Note/AddScrap.aspx' + param, '_hNote', 'width=735, height=695, scrollbars=yes');
}


