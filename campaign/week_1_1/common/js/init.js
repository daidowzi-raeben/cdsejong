/* 모바일인지 확인 */
var tmp = navigator.userAgent;
if(tmp.indexOf("iPhone") > 0 || tmp.indexOf("iPod") > 0 || tmp.indexOf("iPad") > 0 || tmp.indexOf("Android")>0) {
    $("#container").addClass('mobile');
}

/* 텍스트드래그, 우클릭 방지 */
$("body").on('selectstart contextmenu', function(e){e.preventDefault()});

/* 플레이어 크기 자동 조절 */
$(document).ready(responsive);
$(window).on('resize', responsive);
function responsive() {
    var w = $("body").width(),
        h = $("body").height(),
        full_width = $("#container").width(),
        full_height = $("#container").height();

    var scaleX = full_width > w ? w / full_width : 1;
    var scaleY = full_height > h ? h / full_height : 1;
    $("#container").css('transform', 'translate(-50%, -50%) scale(' + Math.min(scaleX, scaleY) + ')');
}

/* 이펙트 사운드 오브젝트 */
let effect_snd = new Audio();
function effect_play(src) {
    effect_snd.src = src;
    effect_snd.play();
}
function effect(filename) {
    return '../common/snd/'+filename+'.mp3';
}
function end_effect() {
    $("#toolbar>.start_btn").addClass('on');
    $("#toolbar>.pop-next").addClass('on');
    $("#toolbar>.page-wrapper>.btn-next").addClass('on');

    effect_play(effect('bubble'));
	
	// 학습완료
	var urlParams = new URL(location.href).searchParams;
	var l_no = urlParams.get('l_no');
   $.ajax({
	 type: "GET",
	 url: "/cd.update.php?mode=w&idx=" + l_no,
	 success: function(res){
		const res_info = $.parseJSON( res );
		console.log(res_info)
		$("#cate3 option").remove();
		for(let i=0; i<res_info.length; i++) {
		   $("#cate3").append(`<option value='${res_info[i].idx}'>${res_info[i].cd_name}</option>`);
		}   
	 },
	 error: function(err){ alert("호출 실패하였습니다.") ;}
  });
}

/* 커스텀 함수 */
function strToTime(time) {
    // regex = /([0-9]*)([0-5][0-9](\.[0-9]+)*)/;
    regex = /[0-9]+(\.[0-9]+)*/;
    match = String(time).match(regex);
    if(match === null) return false;
    m = Math.floor(time/100) * 60;
    s = time % 100;
    return m + s;
}