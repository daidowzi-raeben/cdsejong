var pageCompCheck = false;
var TextFocusCheck = false;
var mobileCheck = false;;

var deviceName;
var browserName;

var sliderDrag;
var vol_sliderDrag;
var controlMode;

var sliderMax = 1000;
var scriptPower;
var ContainerScaleValue;

var next_balloon_Tl = gsap.timeline({
	paused: true
});

function getUrlVars(){
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for(var i = 0; i < hashes.length; i++){
        hash = hashes[i].split('=');
        vars.push(hash[0]);
        vars[hash[0]] = hash[1];
    }
    return vars;
}

chasi = location.href.split("/")[location.href.split("/").length-2];
page = parseFloat(location.href.split("/")[location.href.split("/").length-1].split(".")[0]);

$(document).attr("title", titleName); 

$(document).ready(function(){
	setTimeout(function() {
	$(document).on("contextmenu", function(event){return false;});	//우클릭방지
	if( !browserCheck() ) return;	
	$(window).on("navigate", function(ev, data){
		if (data && data.state && data.state.direction) {
			//alert( data.state.direction );
		}
	});

	$(window).resize(function() {
		resizeViewport();		
	}).bind('orientationchange', function() {
		resizeViewport();
		if(browserName == "Safari"){
		}
	});
	
	setTimeout(function() {
		if($("#loadingPop").css('display') == "block"){
			$("#loadingPop").hide();
			$("#messageBox").show();
		}
	}, 5000);		
	if(deviceName == "unknown-device"){
		$("#messageBox").hide();
	}

	// 모바일 사파리 확대 방지(확대 버그)
	if(deviceName != "unknown-device" && browserName == "Safari"){
		changeViewPort("width", "device-width");
		changeViewPort("initial-scale", "1.0");
		changeViewPort("maximum-scale", "1.0");
		changeViewPort("minimum-scale", "1.0");
		changeViewPort("user-scalabl", "no");

		document.documentElement.addEventListener('touchstart', function (event) {
			if (event.touches.length > 1) {
				event.preventDefault();
			}
		}, false);
		
		document.addEventListener('touchmove', function (event) {
			event = event.originalEvent || event;
			if(event.scale > 1) {
				event.preventDefault();
			}
			if (event.scale !== 1) { event.preventDefault(); }
		}, false);
	}
	
	next_balloon_Tl.fromTo($("#nextPop"), 0.5, {display: "none", opacity:0, y:20}, {
		display: "block",
		opacity:1,
		y:0,
		ease: "elastic.out(1, 0.7)"
	})
	
		
	
		leftMenuInit();
		AudioInit();
		VideoInit();
		makeUI();		
		
		if(chapterNames[page-1].vod == "quiz"){
			pageCompCheck = false;
		}
		
	}, 1000);

	
	
	
	//bookMarkInit();
	
	//learningPopCtn(); // 러닝맵
	//studyPopInit(); // 학습도우미 팝업
	//examplePopInit(); // 사례모음 팝업
	//practicePopInit(); // 실습영상 팝업

});


function browserCheck(){
	var ua = navigator.userAgent;
	var checker = {
		iphone: ua.match(/(iPhone|iPod|iPad)/),
		blackberry: ua.match(/BlackBerry/),
		android: ua.match(/Android/),
		
		Chrome : ua.match(/Chrome/),
		Safari : ua.match(/Safari/),
		Firefox : ua.match(/Firefox/),
		IE : ua.match(/MSIE ([0-9]+)\./)
    };
	
	/*if(checker.IE){
		if(checker.IE[1] < 9){
			alert("Explorer는 9 이상 또는 Chrome을 이용해주세요.");
			window.close();
			return;
		}
	};*/

	if(checker.Chrome){
		browserName = "Chrome";
	}else if(checker.Safari){
		browserName = "Safari";
	}else if(checker.Firefox){
		browserName = "Firefox";
	}else{
		browserName = "IE";
	}
	
	deviceName = "unknown-device";
	if (checker.android) deviceName = "android";
    if (checker.iphone) deviceName = "iphone";
    if (checker.blackberry) deviceName = "blackberry";
	//deviceName = "android";

	if(deviceName != "unknown-device"){
		mobileCheck = true;
		resizeMode = true;  // 모바일일때 리사이즈 자동설정.
	}
	return true;
}

function loadPage(){
	
	menuOpen_Check = false;
	moveMenu(false);

	$("#loadingPop").show();
	//$("#loadCtn").empty();
	next_balloon_Tl.pause(0);

	pageCompCheck = true;
	bgmStop();
	
	/*var isFunc = jQuery.isFunction(window.contenstReset); 
	if(isFunc == true){
		contenstReset()
	};*/
	closeAudio();
	closeVideo();
	resetScript();
	$("#timeText").text("00:00 / 00:00");
	$('#slider').slider("value", 0);
	$('#vol_slider').slider("value", (volumeNum*100));
		
	$("#treeMenu").show();
	$("#indexBtn").show();
	
	//$("#Container").css("background-color", "#ff0000");
	//$("#Container").css('background', 'url(../img/backBG.jpg) no-repeat 0px 0px');
	
	if(chapterNames[page-1].titleHidden){
		//$(".topMenu").hide();
		$(".topMenu").children("#chasi_titleBG").hide();
		$(".topMenu").children("#chasi_titleText").hide();
	}else{
		//$(".topMenu").show();
		$(".topMenu").children("#chasi_titleBG").show();
		$(".topMenu").children("#chasi_titleText").show();
	}

	if(page == 1 || page == chapterNames.length){
		$(".topMenu").hide();
	}else{
		$(".topMenu").show();
	}

	if(chapterNames[page-1].type == "sound"){
		// audio load
		controlMode = "audio";
		startAudio("../common/mp3/"+chapterNames[page-1].snd+".mp3");
	}else{
		// video load		
		controlMode = "video";
		
		// 보충학습, 심화학습 (퀴즈성적에 따라 영상이 다름)
		
		if(chapterNames[page-1].deep){
			quiz_score = quizData_loadFunc();
			//console.log("quiz_score :"+quiz_score);			
			if(quiz_score > 1){
				startVideo(vodpath+"/"+itostr(chasi)+"/"+chapterNames[page-1].vod+"_deep.mp4");
			}else{
				startVideo(vodpath+"/"+itostr(chasi)+"/"+chapterNames[page-1].vod+".mp4");
			}

		}else{
			/*
			if(itostr(chasi) == "01" && itostr(page) == "03" ){
				diagnosisInit();
			}else{
				startVideo(vodpath+"/"+itostr(chasi)+"/"+chapterNames[page-1].vod+".mp4");
			}
			*/
			//startVideo(vodpath+"/"+itostr(chasi)+"/"+chapterNames[page-1].vod+".mp4");
			startVideo(vodpath+"/"+chapterNames[page-1].vod+".mp4");
		}


		$("#videoCtn").show();


		/*
		if(itostr(chasi) == "01" && itostr(page) == "01" ){
			//diagnosisInit();
			startVideo(vodpath+"/"+itostr(chasi)+"/"+chapterNames[page-1].vod+".mp4");
			$("#videoCtn").show();
		}else{
			
			// 공통 영상은 해당차시에 영상 안넣음.
			//if(chapterNames[page-1].vod.length == 2){
			//	startVideo(vodpath+"/"+itostr(chasi)+"/"+chapterNames[page-1].vod+".mp4");
			//}else{
			//	startVideo(vodpath+"/"+chapterNames[page-1].vod+".mp4");
			//}
			
			startVideo(vodpath+"/"+itostr(chasi)+"/"+chapterNames[page-1].vod+".mp4");
			$("#videoCtn").show();
		}
		*/
		
	}
		
	// bgm
	if(chapterNames[page-1].bgm){
		bgmCall(chapterNames[page-1].bgm+".mp3", chapterNames[page-1].bgmVol);
	}

	$("#cPage").html(itostr(page));
	$("#tPage").html(itostr(chapterNames.length));
	
	menuSelect(page);

};


function resetScript(){
	// close Script
	scriptPower = false;
	$("#scriptCtn").stop();
	//$('#scriptCtn').css("opacity", "0");
	$('#scriptCtn').css("top", "560px");
	$('#scriptCtn').hide();

	$('#script_btn').css("background-position", "0px 0px");
	
	
	$('#scriptText').html("");
	$('#scriptText').scrollTop(0);
	$("#scriptText").html(scriptDataArr[parseFloat(page)]);
	
	if(!mobileCheck){
		if(scriptDataArr[parseFloat(page)].split("<br>").length > 5){
			//$("#scriptText").css("overflow-y", "hidden");
			$("#scriptText").mCustomScrollbar({theme:"light-3"});
		}
	}
	
	if(scriptDataArr[parseFloat(page)] == ""){
		$("#script_btn").css('opacity', "0.5");
		$("#script_btn").prop('disabled', true);
		$("#script_btn").css('pointer-events', 'none');
		$("#script_btn").css('cursor', 'default');
		$("#script_btn").attr("tabindex", -1);
	}else{
		$("#script_btn").css('opacity', "1");
		$("#script_btn").prop('disabled', false);
		$("#script_btn").css('pointer-events', 'auto');
		$("#script_btn").css('cursor', 'pointer');
		$("#script_btn").attr("tabindex", 0);
	}
}


function changeViewPort(key, val) {
    var reg = new RegExp(key, "i"), oldval = document.querySelector('meta[name="viewport"]').content;
    var newval = reg.test(oldval) ? oldval.split(/,\s*/).map(function(v){ return reg.test(v) ? key+"="+val : v; }).join(", ") : oldval+= ", "+key+"="+val ;
    document.querySelector('meta[name="viewport"]').content = newval;
}

function zoomOutMobile() {
	if(deviceName != "unknown-device" && browserName == "Safari") return;
	var viewport = document.querySelector('meta[name="viewport"]');
	if(viewport){
		viewport.content = "initial-scale=1.0";
		viewport.content = "width="+$(window).width();
	}
}


function resizeViewport(){
	
	//if(deviceName == "unknown-device") return;
	//zoomOutMobile();
	
	var width = $(window).width();
	var height = $(window).height();

	var sw = width / contents_width;
	var sh = height / contents_height;
	var scaleValue = (sw < sh) ? sw : sh;

	var posX = (width - contents_width * scaleValue) / 2;
	var posY = (height - contents_height * scaleValue) / 2;
	
	ContainerScaleValue = scaleValue;
	//resizeMode = true;
	//mobileCheck = true;
	if(resizeMode){
		if(TextFocusCheck){
			//scaleValue = 1;
		};
		$("#loadCtn").show();
				
		if(mobileCheck){
			// 모바일 리사이즈
			$("#sliderArea").show();

			$('#Container').css('transform', 'scale(' + scaleValue + ')');
			$('#Container').css('msTransform', 'scale(' + scaleValue + ')');
			$('#Container').css('-webkit-transform', 'scale(' + scaleValue + ')');
			$('#Container').css('-moz-transform', 'scale(' + scaleValue + ')');
			$('#Container').css('-o-transform', 'scale(' + scaleValue + ')');
				
			$('#Container').css('transform-origin', '0 0');
			$('#Container').css('msTransform-origin', '0 0');
			$('#Container').css('-webkit-transform-origin', '0 0');
			$('#Container').css('-moz-transform-origin', '0 0');
			$('#Container').css('-o-transform-origin', '0 0');
			
			$('#Container').css({top: posY, left: posX});
		}else{
			// PC버전 리사이즈
			if(scaleValue >= 1){
				$("#sliderArea").hide();
				var centerX = (width-contents_width)/2;
				var centerY = (height-contents_height)/2;
				
				$('#Container').css('transform', 'scale(' + 1 + ')');
				$('#Container').css('msTransform', 'scale(' + 1 + ')');
				$('#Container').css('-webkit-transform', 'scale(' + 1 + ')');
				$('#Container').css('-moz-transform', 'scale(' + 1 + ')');
				$('#Container').css('-o-transform', 'scale(' + 1 + ')');

				$("#Container").css({left: centerX, top: centerY});
			}else{
				$("#sliderArea").show();

				$('#Container').css('transform', 'scale(' + scaleValue + ')');
				$('#Container').css('msTransform', 'scale(' + scaleValue + ')');
				$('#Container').css('-webkit-transform', 'scale(' + scaleValue + ')');
				$('#Container').css('-moz-transform', 'scale(' + scaleValue + ')');
				$('#Container').css('-o-transform', 'scale(' + scaleValue + ')');

				$('#Container').css({top: posY, left: posX});
			}
			

			$('#Container').css('transform-origin', '0 0');
			$('#Container').css('msTransform-origin', '0 0');
			$('#Container').css('-webkit-transform-origin', '0 0');
			$('#Container').css('-moz-transform-origin', '0 0');
			$('#Container').css('-o-transform-origin', '0 0');
		}
	}else{
		// 리사이즈 off
		//var centerX = (width-contents_width)/2;
		//var centerY = (height-contents_height)/2;
		
		//$("#Container").css({left: centerX, top: centerY});
	}
	
	// 영상이 아닌 컨텐츠 전체화면 모드.
	if(video_fullScreenType){
		if(mobileCheck) return; // 모바일에서는 사용하지 않음.
		
		//$("#loadCtn").hide();
		$("#sliderArea").hide();
		
		$("#video").css('width', "100%");
		$("#video").css('height', "100%");
		$("#videoCtn").css('width', "100%");
		$("#videoCtn").css('height', "100%");
				
		
		$("#scriptCtn").css("left", (width/2)-(contents_width/2));
		$("#scriptCtn").css("top", height-180);
		
		$(".bottomMenu").css("left", (width/2)-(contents_width/2));
		$(".bottomMenu").css("top", height-30);

		//$("#lec").css("left", ((width - contents_width * scaleValue) / 2) + (916*scaleValue) + (178*scaleValue-178) );		
		
		var ctnW = width-(posX*2); // 검은여백 제외한 width값
		$(".topMenu").css("left", posX );
		$(".topMenu").css('width', ctnW);
		
		$("#toggleMenu").css("left", ctnW-27); // 컨텐츠w 1100 - 메뉴x값이 1073 = 27
		$("#toggleMenuMask").css("left", ctnW);
		$("#toggleMenuMask").css('background-color', '#000000');
		
		// 학습도우미
		studyPop_fullscreen(posX, scaleValue);
		
		// 실습영상
		practicePop_fullscreen(posX, scaleValue);
		
		// 팝업비디어 위치 설정
		popupVideo_fullscreen(posX, scaleValue);
		
		// 좌측메뉴 위처설정.
		menu_fullscreen(posX);

		// 컨텐츠 팝업버튼 위치 설정.
		if(chapterNames[page-1].popup){
			popBtnMoveCall(true);
		}

	}else{
		// 전체화면 exit 위치 재배열.
		$("#loadCtn").show();

		$("#video").css('width',videoW+'px');
		$("#video").css('height',videoH+'px');		
		$("#videoCtn").css('width',videoW+'px');
		$("#videoCtn").css('height',videoH+'px');
				
		$("#scriptCtn").css("height", 130);
		$("#scriptCtn").css("left", 0);
		$('#scriptCtn').css("top", "560px");
		
		$(".bottomMenu").css("left", 0);
		$(".bottomMenu").css("top", contents_height-30);

		//$("#lec").css("left", "10px");
		
		$(".topMenu").css("left", 0);
		$(".topMenu").css('width', contents_width);
		
		$("#toggleMenu").css("left", 1073); // 컨텐츠w 1100 - 메뉴x값이 1073 = 27
		$("#toggleMenuMask").css("left", contents_width);
		$("#toggleMenuMask").css('background-color', '#ffffff');
		
		// 학습도우미
		studyPop_fullscreen(0, 1);
		
		// 실습영상
		practicePop_fullscreen(0, 1);
		
		// 팝업비디어 위치 설정
		popupVideo_fullscreen(0, 1);
		
		// 좌측메뉴 위처설정.
		menu_fullscreen(0);

		if(chapterNames[page-1].popup){
			popBtnMoveCall(false);
		}

	}
}


function loadComp(){

	if(playBtnType == "visible"){
		$("#playBtn").hide();
		$("#pauseBtn").show();
	}else{
		$("#playBtn").attr("disabled", true);
		$("#playBtn").trigger("mouseover");
		$("#pauseBtn").attr("disabled", false);
		$("#pauseBtn").trigger("mouseout");
	};

	pageLoadComplete();
}


function playerEnd(){
	//console.log("playEnd");
	if(playBtnType == "visible"){
		$("#playBtn").show();
		$("#pauseBtn").hide();
	}else{
		$("#playBtn").attr("disabled", false);
		$("#playBtn").trigger("mouseout");
		$("#pauseBtn").attr("disabled", true);
		$("#pauseBtn").trigger("mouseover");
	}

	$('#slider').slider("value", 1000);
	
	pageCompFunc();
}

// 페이지 완료 함수.
function pageCompFunc(){
	if(pageCompCheck){
		
		if(page < chapterNames.length){
			//$("#nextPop_txt").html("다음 페이지");
			//$("#nextPop_topTxt").html("NEXT");
			$("#nextPop").css("background-position-y", "0px");
		}else{
			//$("#nextPop_txt").html("학습 완료");
			//$("#nextPop_topTxt").html("END");
			/*
			if(parseFloat(chasi) == totalChasi){
				$("#nextPop").css("background-position-y", "-110px");
			}else{
				$("#nextPop").css("background-position-y", "-55px");
			}
			*/
			$("#nextPop").css("background-position-y", "-110px");
		};
		
		if($("#nextPop").css("display") == "none"){
			setTimeout(function() {
				effectCall('../common/mp3/ending.mp3');
			}, 300);
			next_balloon_Tl.restart();
		}
		
		$("#nextBtn").css('opacity', "1");
		$("#nextBtn").prop('disabled', false);
		$("#nextBtn").css('pointer-events', 'auto');
		$("#nextBtn").css('cursor', 'pointer');
		
		$(".control-slider").css('opacity', "1");

		$('#slider').slider('enable');
		
		pageEndComplete();
	};
}

function itostr(num){ // 숫자열을 문자열로 
	var tmpstr =  Number(num)>9?num:"0"+Number(num)
	return tmpstr
}


$(document).keyup(function(e){	
	keyEvent(e);
});

$(document).keydown(function(e){
	if(e.keyCode == 37 || e.keyCode == 39){ // slider 키이동 막기. 
		e.preventDefault();
		return false;
	}

	if(e.keyCode == 116){ // 새로고침 방지.
		e.keyCode= 2;
		return false;
	}
});

function keyEvent(e){
	if(TextFocusCheck){
		return;
	};
	//console.log("e.keyCode :"+e.keyCode);

	switch(e.keyCode){
		case 13:
			// enter
			if(focusObj) focusObj.trigger('click');
			break;

		case 27:
			//esc
			//window.parent.close();
			break;
		
		case 83:
			//s
			break;

		case 37:
			// left
			//$('#prevBtn').click();
			break;

		case 39:
			// right
			//$('#nextBtn').click();
			//$('#Container').focus();
			//$("#slider .ui-slider-handle").unbind('keydown'); //disable keyboard actions
			
			break;

		case 38:                 
			// up
			break;

		case 40:
			// down
			break;
	}
}

// player 공통함수.

function timeFunc(n){
	var min = TwoNum(Math.floor(n/60));
	var sec = TwoNum(n%60);
	return min+":"+sec
}

function TwoNum(n){
	if(n < 10){
		return "0"+n;
	}else{
		return ""+n
	}
}
