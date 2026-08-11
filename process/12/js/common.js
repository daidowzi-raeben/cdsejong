$(function(){

  
  // 다운로드 창
  $('.u_download').bind('click',function(){
    if ($(this).is('.on')){
      $('#tgDown').fadeOut(300);
      $(this).removeClass('on');
      if ($('.quiz').length > 0 || $('.jp-limit').length > 0){}else{$('#jquery_jplayer_1').jPlayer('play');}
    } else {
      $('#tgDown').fadeIn(300);
      $(this).addClass('on');
      if ($('.quiz').length > 0 || $('.jp-limit').length > 0){}else{$('#jquery_jplayer_1').jPlayer('pause');}
    }
  });


  
  // 인덱스 창
  $('.u_index').bind('click',function(){
    var h = $('#navigation').outerHeight();
    if ($(this).is('.on')){
      $('#indexNavi').stop().animate({'height':'0'},400);
      $(this).removeClass('on');
    //  if ($('.quiz').length > 0 || $('.jp-limit').length > 0){}else{$('#jquery_jplayer_1').jPlayer('play');}
    } else {
      $('#indexNavi').stop().animate({'height':h},400);
      $(this).addClass('on');
     // if ($('.quiz').length > 0 || $('.jp-limit').length > 0){}else{$('#jquery_jplayer_1').jPlayer('pause');}
    }
  });  


 
  // 스크립트 창
  $('.jp-script').bind('click',function(){

    var h = $('.scHead').height()+$('.scConfBox').outerHeight();
    if ($(this).is('.on')){
      $('#scriptBox').stop().animate({'height':'0'},400);
      $(this).removeClass('on');
    //  if ($('.quiz').length > 0){}else{$('#jquery_jplayer_1').jPlayer('play');}
    } else {
      $('#scriptBox').stop().animate({'height':h},400);
      $(this).addClass('on');
    //  if ($('.quiz').length > 0){}else{$('#jquery_jplayer_1').jPlayer('pause');}
    }
  });
  $('.scClose').bind('click',function(){
    $('.jp-script').click();
  });


  // 창숨기기
  $(document).mouseup(function(e){
    if ($('.movieView').hasClass('on')){
      return false;
    } else {


      if (!$('#tgDown, .u_download').is(e.target) && $('#tgDown, .u_download').has(e.target).length === 0){
        if($('.u_download').is('.on')){
          $('#tgDown').fadeOut(300);
          $('.u_download').removeClass('on');
          if ($('.quiz').length > 0 || $('.jp-limit').length > 0){}else{$('#jquery_jplayer_1').jPlayer('play');}
        }
      }

      if (!$('#tgMovie, .u_playmovie').is(e.target) && $('#tgMovie, .u_playmovie').has(e.target).length === 0){
        if($('.u_playmovie').is('.on')){
          $('#tgMovie').fadeOut(300);
          $('.u_playmovie').removeClass('on');
          if ($('.quiz').length > 0 || $('.jp-limit').length > 0){}else{$('#jquery_jplayer_1').jPlayer('play');}
        }
      }

      if (!$('#scriptBox, .jp-script').is(e.target) && $('#scriptBox, .jp-script').has(e.target).length === 0){
        if($('.jp-script').is('.on')){
          var h = $('.scHead').height()+$('.scConfBox').outerHeight();
          $('#scriptBox').stop().animate({'height':'0'},400);
          $('.jp-script').removeClass('on');
          if ($('.quiz').length > 0 || $('.jp-limit').length > 0){}else{$('#jquery_jplayer_1').jPlayer('play');}
        }
      }

      if (!$('#navigation, .u_index').is(e.target) && $('#navigation, .u_index').has(e.target).length === 0){
        if($('.u_index').is('.on')){
          var h = $('#navigation').outerHeight();
          $('#indexNavi').stop().animate({'height':'0'},400);
          $('.u_index').removeClass('on');
          if ($('.quiz').length > 0 || $('.jp-limit').length > 0){}else{$('#jquery_jplayer_1').jPlayer('play');}
        }
      }
    }
  });





});


/*************************************************************************************************/ 
// 진도체크 / 영상경로
/*************************************************************************************************/ 
var makeName = ".html";
var nowIndex = document.URL.split(makeName)[0];
var chapter = nowIndex.substring(nowIndex.length-6, nowIndex.length-4); // 예: 01
var page = nowIndex.substring(nowIndex.length-2, nowIndex.length);       // 예: 01

// LMS 진도체크 (프레임 밖에서 열어도 영상재생이 깨지지 않도록 try-catch)
try {
	var p = parseInt(page, 10);
	if (parent && typeof parent.pageCheck === "function") {
		parent.pageCheck(p);
	}
} catch (e) {}

// 영상 경로: 같은 서버의 mp4 폴더 사용 (HTTPS 혼합콘텐츠/외부 404 방지)
// 예) /process/12/01/001.html → /process/12/mp4/01_01.mp4
var mURL = "../mp4/";
var mp4_Name = mURL + chapter + "_" + page + ".mp4";

var topTitle = "나와 조직을 지키는 윤리경영 가이드라인";
document.title = topTitle;

function pageInit() {
	try {
		var pageInfo = chapter + "_" + page;
		top._getParagraph();
		top._setPageInfo(pageInfo);       // 장 절
		top._setCurrentLocation(page);    // 현재 페이지
		top._progressSave();
	} catch (e) {
		// 단독 실행 시 LMS 연동 함수가 없어도 무시
	}
}
/*************************************************************************************************/
