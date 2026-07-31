
/* 인덱스 목록 생성 */
$index = $("#index-wrapper>ul");
for(i=0;i<indexlist.length;i++) {
    $li = $("<li>").html(indexlist[i][0]);
    $index.append($li);
    // if(Array.isArray(indexlist[i])) $li.addClass('sub');
    $li.data('page',indexlist[i][1]);
    if(indexlist[i].length>2) {
        for(j=2;j<indexlist[i].length;j++) {
            $li = $("<li>").html(indexlist[i][j][0]).addClass('sub');
            $index.append($li);
            $li.data('page',indexlist[i][j][1])
        }
    }
}
n = Number(thisNum);
curr_indexmenu = 0;
$li = $("#index-wrapper>.index-inner>li");
for(i=0;i<$li.length;i++) {
    li = $($li[i]);
    if(li.data('page')>n) break;
    curr_indexmenu = li.data('page');
}
for(i=0;i<$li.length;i++) {
    li = $($li[i]);
    if(li.data('page')==curr_indexmenu) {
        $this = $("#index-wrapper>ul>li:nth-child("+(i+1)+")");
        $this.addClass('active');
        if($this.hasClass("sub")) {
            title = $this.prevAll(":not(.sub)")[0];
            $(title).addClass('active');
        }
    }
}
$(".top-title>.page-title").html($("#index-wrapper>ul>li.active:not(.sub)").html());
$(".top-title>.chasi-title,#index-wrapper>ul>li.sub").html($(".pop-contents li.active").html());
$($("#pop-map>ul:nth-of-type("+(currChasi>5?2:1)+")>li")[currChasi-(currChasi>5?6:1)]).addClass('active');

/* 버튼 이벤트 */
$("#toolbar>.btn-index,#index-wrapper>.btn-index,#index-wrapper>.btn-close").on('click', function () {
    $("#index-wrapper").toggleClass('on');
});
$("#index-wrapper>.index-inner>li").on('click', function () {
    // goPage(lnk_arg[$(this).index()]);
    goPage($(this).data('page'))
});
$("#toolbar>.btn-map,#pop-map>.btn-close").on('click', function() {
    $("#pop-map").toggle();
});

let currspeed = 1.0;
$("#toolbar>.speed-wrapper>.btn-slow").click(function(){
    if(currspeed.toFixed(1)>0.5) {
        currspeed -= 0.1;
        vid.playbackRate = currspeed;
        $("#toolbar>.speed-wrapper>.currspeed").text(currspeed.toFixed(1));
    }
});
$("#toolbar>.speed-wrapper>.btn-fast").click(function(){
    if(currspeed.toFixed(1)<1.5) {
        currspeed += 0.1;
        vid.playbackRate = currspeed;
        $("#toolbar>.speed-wrapper>.currspeed").text(currspeed.toFixed(1));
    }
});
$("#toolbar>.btn-play").on('click', function () {
    if(vid.duration) vid.play();
});
$("#toolbar>.btn-pause").on('click', function () {vid.pause()})
$("#toolbar>.btn-replay").on('click', function () {location.reload()});
$("#toolbar>.btn-script,#toolbar>.script-wrapper>.btn-close").on('click', function () {
    $("#toolbar>.script-wrapper").toggleClass('on');
});
$("#toolbar>.script-wrapper>.script-inner").mCustomScrollbar({
    scrollInertia: 300,
    scrollEasing:"linear",
    mouseWheel:{preventDefault:false,scrollAmount:40}
});
$($(".script-wrapper>.script-inner span")[1]).html(script[thisNum-1]);
$("#toolbar>.btn-mute").on('click', function () {
    /* vid.muted = !vid.muted;
    $.cookie('edcplayer_muted', vid.muted?1:0);
    vid.muted ? $(this).addClass('on') : $(this).removeClass('on'); */
    $("#toolbar>.volbar").toggle();
});
$("#toolbar>.volbar>.vol-bar").slider({
    orientation: "vertical",
    min: 0, max: 100,
    slide: function(e, ui) {
        vid.volume = ui.value/100;
    }
});
$("#toolbar>.btn-fullscreen").on('click', function () {
    if(!currinfo.ishtml) {
        try {
            if (vid.requestFullscreen) {
                vid.requestFullscreen();
            } else if (vid.mozRequestFullScreen) { /* Firefox */
                vid.mozRequestFullScreen();
            } else if (vid.webkitRequestFullscreen) { /* Chrome, Safari and Opera */
                vid.webkitRequestFullscreen();
            } else if (vid.msRequestFullscreen) { /* IE/Edge */
                vid.msRequestFullscreen();
            } else {
                alert('전체화면을 지원하지 않는 브라우저입니다.');
            }
        } catch(e) {
            alert('전체화면을 지원하지 않는 브라우저입니다.');
        }
    } else alert('동영상만 전체화면이 가능합니다.');
});

$("#toolbar>.page-wrapper>.btn-prev,#toolbar-mobile>.btn-prev").on('click', goPrev);
$("#toolbar>.page-wrapper>.btn-next,#toolbar-mobile>.btn-next").on('click', goNext);
$("#toolbar>.start_btn").on('click', goNext);
$("#toolbar>.page-wrapper>.currPage").text((tmp='0'+thisNum, tmp.slice(-2)));
$("#toolbar>.page-wrapper>.totalpage").text((tmp='0'+pageinfo.length, tmp.slice(-2)));

if(currinfo.video) setVideo(currinfo.video);
/* if(currinfo.html) {
    $("<div>").load(currinfo.html, function(){$("#content-wrapper").append($(this).html());$("script").remove()});
    $("#toolbar").addClass('html');
} */

/* 페이지 이동 함수들 */
function goPage(page) {
    lnk = pagelist[page];
    location.href = lnk;
    effect_play(effect('click'));
}
function goPrev() {
    lnk = pagelist[thisNum-1];
    if (!lnk) return alert('첫 번째 페이지입니다.');
    location.href = lnk;
    effect_play(effect('click'));
}
function goNext() {
    lnk = pagelist[thisNum+1];
    // [수정] 다음 페이지가 없을 때(04.html 마지막 페이지)에만 창 닫기, 있을 때는 해당 페이지로 이동
    if (!lnk) {
        alert("마지막 페이지 입니다. 우측 상단 X 버튼을 눌러 주세요");
        return;
    }
    /* 01→02, 02→03, 03→04 이동: 효과음 재생 후 다음 페이지로 이동 */
    $(effect_snd).on('ended',function() {
        location.href = lnk;
    });
    effect_play(effect('click'));
}