var videoX;
var videoY;
var videoW;
var videoH;

var video_orgW;
var video_orgH;
var video_ct;
var video_lt;
var videoPlaying;
var videoTotalTime;

var videoCompCheck;

var videoLoadComp;

var historyLoadComp;

var historyTime;
var historyInterVal;

var video_playbackRateNum = 1;

var videoPopMode = false; // 컨텐츠에서 영상팝업시.

var video_fullScreenType = false;

function VideoInit(){
	
	$("#video").on("loadedmetadata", function () {
		video_orgW = this.videoWidth;
		video_orgH = this.videoHeight;
		// [2025-08-07 14:00] 동영상 소리 끊김 현상 해결 - 음소거 상태 관리 개선
		// 모바일 브라우저 자동재생 정책을 위해 음소거 상태 유지
		// 사용자 상호작용 후에만 음소거 해제하도록 변경
		// this.muted = false;  // 기존 코드 주석 처리
		videoLoadComp = true;
		loadComp();
		
		//VideoFirstTimeInit();
	});
	
	$("#video").on('loadstart', function() {
		//alert( $('#video').get(0).canPlayType("video/mp4") );
	});

	$("#video").on('canplay', function() {
		
	});

	$("#video").on('playing', function() {
		videoLoadComp = true;
		$("#messageBox").hide();
		$("#loadingPop").hide();
		videoLoadComp = true;
	});	

	$("#video").on('timeupdate', function() {
		// [2025-08-07 14:00] 동영상 소리 끊김 현상 해결 - 불필요한 음소거 해제 코드 제거
		// $("#video").prop('muted', false);  // 기존 코드 주석 처리
		var currentPos = $(this)[0].currentTime; //Get currenttime
		var maxduration = $(this)[0].duration; //Get video duration
		var percentage = 1000 * currentPos / maxduration; //in %
		if(!currentPos) currentPos = 0;
		if(!maxduration) maxduration = 0;
		//console.log(currentPos+" / "+maxduration);
		if(videoPlaying && percentage){
			$('#slider').slider("value", Math.floor(percentage));
		};
		
		$("#timeText").text( timeFunc(Math.floor(currentPos))+" / "+timeFunc(Math.floor(maxduration)) );
		video_ct = currentPos;
		videoCompCheck = true;
	});
	
	$("#video").on('ended', function() {
		var currentPos = $(this)[0].currentTime; //Get currenttimeww
		var maxduration = $(this)[0].duration; //Get video duration
		var percentage = 1000 * currentPos / maxduration; //in %
		//console.log("end :"+currentPos+" / "+maxduration);
		videoPlaying = false;
		videoCompCheck = false;
		playerEnd();
		// Remove handleVideoEnd call for 002.htm
		var currentPage = window.location.pathname.split('/').pop();
		if (currentPage !== '002.htm') {
			handleVideoEnd();
		}
		video_ct = currentPos;
	});

	$("#video").on('play', function() {
		videoPlaying = true;
		//alert('play');
	});

	$("#video").on('pause', function() {
		videoPlaying = false;
		//alert('pause');
	});		
	

	var videoCloseBtn = '<div id="videoCloseBtn" style="display:none"></div>'
	$('#contentsCtn').append(videoCloseBtn);
	
	$('#videoCloseBtn').hide();
	$('#videoCloseBtn').css('position', 'absolute');
	$('#videoCloseBtn').css('left', '964px');
	$('#videoCloseBtn').css('top', '10px');
	$('#videoCloseBtn').css('width', "26px");
	$('#videoCloseBtn').css('height', "26px");
	//$('#videoCloseBtn').css('background-color', "#ffffff");
	$('#videoCloseBtn').css('cursor', 'pointer');
	$('#videoCloseBtn').css('background', 'url(../img/FullScreenCloseBtn.png) no-repeat 0px 0px');

	$("#videoCloseBtn").click(function(){
		closeVideoFullScreen();
	});
		
}


function startVideo(url){
	videoX = 0;
	videoY = 0;
	videoW = 1280;
	videoH = 720;
	
	if(chapterNames[page-1].vod_w) videoW = chapterNames[page-1].vod_w;
	if(chapterNames[page-1].vod_h) videoH = chapterNames[page-1].vod_h;

	$("#popupVideoCtn").hide();
	$("#videoCtn").hide();
	
	$("#videoCtn").css('position','absolute');
	$("#videoCtn").css("left", videoX);
	$("#videoCtn").css("top", videoY);
	$("#videoCtn").css('width',videoW+'px');
	$("#videoCtn").css('height',videoH+'px');
	
	$("#video").css("left", videoX);
	$("#video").css("top", videoY);
	$("#video").css('width',videoW+'px');
	$("#video").css('height',videoH+'px');    

	videoLoadComp = false;

	if(playBtnType == "visible"){
		$("#playBtn").hide();
	}else{
		$("#playBtn").attr("disabled", true);
		$("#playBtn").trigger("mouseover");
		$("#pauseBtn").attr("disabled", false);
		$("#pauseBtn").trigger("mouseout");
	}
	
	// 비디오 소스 설정
	var videoElement = document.getElementById("video");
	// start : 20250604 제이제이 - 비디오 요소 확인
	if (!videoElement) {
		console.warn("비디오 요소가 없습니다. startVideo 중단");
		return; // 함수 강제 종료
	}
	var videoPath = vodpath + (url.endsWith('.mp4') ? url : url + '.mp4');
	console.log('비디오 경로:', videoPath);
	videoElement.src = videoPath;
	videoElement.volume = volumeNum;
	// [2025-08-07 14:00] 동영상 소리 끊김 현상 해결 - 음소거 상태 관리 통일
	// 모바일 브라우저 자동재생 정책을 위해 음소거 상태 유지
	// 사용자 상호작용 후에만 음소거 해제하도록 변경
	// videoElement.muted = false;  // 기존 코드 주석 처리
	
	// [2025-08-07 15:00] PC 및 모바일에서 바로 소리가 나오도록 개선
	// 브라우저 환경 감지 함수
	function isMobileDevice() {
		return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
	}
	
	// 비디오 로드 완료 후 컨트롤 표시
	videoElement.addEventListener('loadeddata', function() {
		console.log('비디오 로드 완료');
		$("#videoCtn").show();
		
		// [2025-08-07 15:00] 브라우저 환경에 따른 음소거 설정
		if (isMobileDevice()) {
			// 모바일 환경: 자동재생 정책을 위해 초기 음소거
			videoElement.muted = true;
			console.log("모바일 환경 감지 - 초기 음소거 설정");
		} else {
			// PC 환경: 즉시 소리 활성화
			videoElement.muted = false;
			console.log("PC 환경 감지 - 즉시 소리 활성화");
		}
		
		// 비디오 재생 시도
		var playPromise = videoElement.play();
		if (playPromise !== undefined) {
			playPromise.then(function() {
				console.log('비디오 재생 시작');
				
				// [2025-08-07 15:00] PC 환경에서는 즉시 소리 활성화
				if (!isMobileDevice()) {
					videoElement.muted = false;
					console.log("PC 환경 - 즉시 소리 활성화 완료");
				}
				
				// [2025-08-07 15:00] 모바일 환경에서만 사용자 상호작용 시 소리 활성화
				if (isMobileDevice()) {
					function enableAudio() {
						if (videoElement.muted) {
							videoElement.muted = false;
							console.log("모바일 환경 - 사용자 상호작용으로 소리 활성화");
						}
						// 이벤트 리스너 제거 (한 번만 실행)
						$(document).off("click touchstart", enableAudio);
					}
					
					// 클릭과 터치 이벤트 모두 감지
					$(document).on("click touchstart", enableAudio);
				}
				
			}).catch(function(error) {
				console.log('자동 재생 실패:', error);
				$("#playBtn").show();
				$("#pauseBtn").hide();
			});
		}
	});

	// 비디오 에러 처리
	videoElement.addEventListener('error', function(e) {
		console.error('비디오 로드 에러:', e);
		console.log('시도한 비디오 경로:', videoPath);
	});
}

function VideoFirstTimeInit(){
	if(historyTime && historyTime > 0){
		historyInterVal = setInterval(function(){ 
			videoPause();
		}, 100);

		var result = confirm('이전에 학습하던 영상이 있습니다.\r이어서 보시겠습니까?');
		if(result){
			clearInterval(historyInterVal);
			$("#video")[0].currentTime = historyTime;
			historyTime = null;
		}else{
			clearInterval(historyInterVal);
		};
	};
}

function videoPlay(){
	if(playBtnType == "visible"){
		$("#playBtn").hide();
		$("#pauseBtn").show();
	}else{
		$("#playBtn").attr("disabled", true);			
		$("#playBtn").trigger("mouseover");
		$("#pauseBtn").attr("disabled", false);		
		$("#pauseBtn").trigger("mouseout");
	}
	
	if(videoPopMode){
		$("#popupVideo").trigger('play');
	}else{
		$("#video").trigger('play');
	}

	videoRate(video_playbackRateNum);
}

function videoPause(){
	if(!sliderDrag){
		if(playBtnType == "visible"){
			$("#playBtn").show();
			$("#pauseBtn").hide();
		}else{
			$("#playBtn").attr("disabled", false);			
			$("#playBtn").trigger("mouseout");
			$("#pauseBtn").attr("disabled", true);
			$("#pauseBtn").trigger("mouseover");
		}
	}

	if(videoPopMode){
		$("#popupVideo").trigger('pause');
	}else{
		$("#video").trigger('pause');
	}
	
}

function videoReStart(){
	if(playBtnType == "visible"){
		$("#playBtn").hide();
		$("#pauseBtn").show();
	}else{
		$("#playBtn").attr("disabled", true);			
		$("#playBtn").trigger("mouseover");
		$("#pauseBtn").attr("disabled", false);		
		$("#pauseBtn").trigger("mouseout");
	}
	
	if(videoPopMode){
		$("#popupVideo")[0].currentTime = 0;
		$("#popupVideo").trigger('play');
	}else{
		$("#video")[0].currentTime = 0;
		$("#video").trigger('play');
	}

	videoRate(video_playbackRateNum);
}

function videoMove(type){
	if(type == "up"){
		var t = $("#video")[0].currentTime + 10;
		$("#video")[0].currentTime = t;
	}else{
		var t = $("#video")[0].currentTime - 10;
		$("#video")[0].currentTime = t;
	};
	
	var currentPos = $("#video")[0].currentTime; //Get currenttimeww
	var maxduration = $("#video")[0].duration; //Get video duration
	
	if(Math.floor(currentPos) < Math.floor(maxduration)){
		videoPlay();
	};
}

function videoSeeking(){
	var value = $("#slider").slider("option","value");
	if(value == 1000) value = 950;
	var time;
	
	if(videoPopMode){
		time = value * $("#popupVideo")[0].duration /1000;
		$("#timeText").text( timeFunc(Math.floor(time))+" / "+timeFunc(Math.floor($("#popupVideo")[0].duration)) );
		if(!sliderDrag) $("#popupVideo")[0].currentTime = time;
	}else{
		time = value * $("#video")[0].duration /1000;
		$("#timeText").text( timeFunc(Math.floor(time))+" / "+timeFunc(Math.floor($("#video")[0].duration)) );
		if(!sliderDrag) $("#video")[0].currentTime = time;
	}
}

function closeVideo(){
	videoPlaying = false;
	$("#video").trigger('pause');
	$("#video").attr("src", "");

	$("#timeText").text("00:00 / 00:00");
	$("#videoCtn").hide();
	$('#slider').slider("value", 0);
}


function volumeVideo(){
	if(vol_sliderDrag){
		//var num = $("#muteBtn").css("background-position").split(" ")[1].replace("px","");
		//if(num != 0) return;
		if(volumeNum == 0){
			$("#muteLine").show();
		}else{
			$("#muteLine").hide();
		}
		if(videoPopMode){
			$("#popupVideo").prop("volume", volumeNum);
		}else{
			$("#video").prop("volume", volumeNum);
		}	
	}else{		
		if(volumeNum == 0){
			volumeNum = 1;
			$('#vol_slider').slider("value", 100);
		}
		var muteChk = $("#muteLine").css("display");
		if(muteChk == "none"){
			if(videoPopMode){
				$("#popupVideo").prop("volume", 0);
			}else{
				$("#video").prop("volume", 0);
			}
			$("#muteLine").show();
			bgmStop();
		}else{
			if(videoPopMode){
				$("#popupVideo").prop("volume", volumeNum);
			}else{
				$("#video").prop("volume", volumeNum);
			}
			$("#muteLine").hide();
			bgmPlay();
		}
	};
}


function videoRate(num){
	var v;

	if(videoPopMode){
		v = document.getElementById("popupVideo");
	}else{
		v = document.getElementById("video");
	}
	v.playbackRate = num;
	video_playbackRateNum = num;
};


function openFullscreen() {	
  
  var elem;

	if(mobileCheck){
		// 모바일인경우 영상으로 전체화면.
		elem = document.getElementById("video");
	}else{
		video_fullScreenType = true;
		elem = document.getElementById("contentsCtn");
	}
	//elem = document.getElementById("video");
	$(".video-js.vjs-has-started .vjs-tech").css('pointer-events', 'none');
	
	//document.getElementById("video").controls = false;
	/*
    if (elem.requestFullscreen) {
  	  elem.requestFullscreen();
    } else if (elem.mozRequestFullScreen) { 
	  elem.mozRequestFullScreen();
    } else if (elem.webkitRequestFullscreen) { 
	  elem.webkitRequestFullscreen();
    } else if (elem.msRequestFullscreen) {
	  elem.msRequestFullscreen();	
    }
    */
    if (!document.fullscreenElement && !document.mozFullScreenElement && !document.webkitFullscreenElement && !document.msFullscreenElement) {
	    if (elem.requestFullscreen) {
	  	    elem.requestFullscreen();
	    } else if (elem.msRequestFullscreen) {
		    elem.msRequestFullscreen();
	    } else if (elem.mozRequestFullScreen) {
		    elem.mozRequestFullScreen();
	    } else if (elem.webkitRequestFullscreen) {
		    elem.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT);
	    }
    } else {
	    if (document.exitFullscreen) {
		    document.exitFullscreen();
	    } else if (document.msExitFullscreen) {
		    document.msExitFullscreen();
	    } else if (document.mozCancelFullScreen) {
		    document.mozCancelFullScreen();
	    } else if (document.webkitExitFullscreen) {
		    document.webkitExitFullscreen();
	    }
    }
  
}

document.addEventListener('fullscreenchange', exitHandler);
document.addEventListener('webkitfullscreenchange', exitHandler);
document.addEventListener('mozfullscreenchange', exitHandler);
document.addEventListener('MSFullscreenChange', exitHandler);


function exitHandler() {
	
	if(document.fullscreenElement){
		video_fullScreenType = true;
		return;
	}else{
		video_fullScreenType = false;
	}

	if(document.webkitIsFullScreen){
		video_fullScreenType = true;
		return;
	}else{
		video_fullScreenType = false;
	}

	if(document.mozFullScreen){
		video_fullScreenType = true;
		return;
	}else{
		video_fullScreenType = false;
	}

	if(document.msFullscreenElement){
		video_fullScreenType = true;
		return;
	}else{
		video_fullScreenType = false;
	}

	resizeViewport();
} 


function webkit_exitHandler(){
	
}

function closeVideoFullScreen(){	
	$('#videoCloseBtn').hide();
	$(".topMenu").show();
	$("#loadCtn").insertAfter("#videoCtn");

	$("#videoCtn").css("left", videoX);
	$("#videoCtn").css("top", videoY);
	$("#videoCtn").css('width',videoW+'px');
	$("#videoCtn").css('height',videoH+'px');

	$("#video").css('width',videoW+'px');
	$("#video").css('height',videoH+'px');
};



/////////////////////////// 팝업 비디오. ///////////////////////////////////////////

var layer_popupVideoMode = false; // 팝업 영상 닫기했을시 false: 컨테츠이동, 문자열: 해당 팝업 영상 레이어팝업으로 이동 2가지 타입.

function popupVideoStart(url, str){
	if( document.fullscreen ){
		if (document.exitFullscreen) {
			document.exitFullscreen();
		} else if (document.msExitFullscreen) {
			document.msExitFullscreen();
		} else if (document.mozCancelFullScreen) {
			document.mozCancelFullScreen();
		} else if (document.webkitExitFullscreen) {
			document.webkitExitFullscreen();
		}
	};
	
	$("#popupVideoCtn").css('position','absolute');
	$("#popupVideoCtn").css("left", videoX);
	$("#popupVideoCtn").css("top", videoY);
	
	$("#popupVideo").css('position','absolute');
	$("#popupVideo").css("left", videoX);
	$("#popupVideo").css("top", videoY);
	
	// 팝업 영상이 컨텐츠 영상과 같을경우 해당 소스 주석하기
	// 팝업 영상이 컨텐츠 영상과 다른 경우!!	 (컨텐츠 영상은 1100*680  팝업영상은 1920*1080)
	$("#popupVideo_bg").css('position', 'absolute');
	$("#popupVideo_bg").css({left: 0, top: 0, width:contents_width, height:contents_height});
	$("#popupVideo_bg").css('background-color', '#313131'); // #313131

	$("#popupVideo").css('width', '1100px');
	$("#popupVideo").css('height', '619px');  // 영상 사이즈 비율로 줄임
		
	var centerY = ($(window).height()-$('#popupVideo').videoHeight)/2;
	$('#popupVideo').css("top", centerY );

	////////////////////////////////////////////

	videoRate(1);
	$("#rateBtn").css("background-position-y", "0px");
	
	$("#muteLine").hide();
	videoPause();
	videoPopMode = true;
	
	$("#popupVideo").on('playing', function() {
		videoLoadComp = true;
	});	

	$("#popupVideo").on('timeupdate', function() {
		var currentPos = $(this)[0].currentTime; //Get currenttime
		var maxduration = $(this)[0].duration; //Get video duration
		var percentage = 1000 * currentPos / maxduration; //in %
		if(!currentPos) currentPos = 0;
		if(!maxduration) maxduration = 0;
		//console.log(currentPos+" / "+maxduration);
		if(videoPlaying && percentage){
			$('#slider').slider("value", Math.floor(percentage));
		};		
		$("#timeText").text( timeFunc(Math.floor(currentPos))+" / "+timeFunc(Math.floor(maxduration)) );
	});
	
	$("#popupVideo").on('ended', function() {
		var currentPos = $(this)[0].currentTime; //Get currenttimeww
		var maxduration = $(this)[0].duration; //Get video duration
		var percentage = 1000 * currentPos / maxduration; //in %
		//console.log("end :"+currentPos+" / "+maxduration);
		videoPlaying = false;

		pageCompCheck = true;
		playerEnd();
	});

	$("#popupVideo").on('play', function() {
		videoPlaying = true;
		//alert('play');
	});

	$("#popupVideo").on('pause', function() {
		videoPlaying = false;
		//alert('pause');
	});	
	
	layer_popupVideoMode = false;
	if(str){
		layer_popupVideoMode = str;
		$("#popupVideo_closeBG").html(str);
		$("#popupVideo_closeBG").show();
	}else{
		$("#popupVideo_closeBG").hide();
	}
		
	$("#popupVideoCtn").show();
	
	
	

	//$("#popupVideoCtn").css('position', "absolute");
	//$("#popupVideoCtn").css({left: 0, top: 0, width: 1100, height: 680});
	//$("#popupVideoCtn").css('background-color','#313131');
	//$("#popupVideoCtn").css('background', 'url(../img/popup/bg.png) no-repeat 0px 0px');

	//$("#popupVideo").css('width', '1100px');
	//$("#popupVideo").css('height', '618px');
	//$("#popupVideo").css('object-fit', 'fill');
	//$(".bottomMenu").hide();
	videoLoadComp = false;
	
	$("#popupVideo").attr("src", url );
	$("#popupVideo").prop("volume", volumeNum);
	if(volumeNum == 0) $("#muteLine").show();

	videoPlay();
	

	$("#fullScreenBtn").css("opacity", "1");
	$("#fullScreenBtn").prop('disabled', false);
	$("#fullScreenBtn").css('pointer-events', 'auto');
	$("#fullScreenBtn").attr("tabindex", 0);
	$("#fullScreenBtn").attr("cursor", "pointer");


	// 팝업 영상시 하단메뉴 재설정
	if(!menuOpen_Check) $("#menuCloseBtn").click();
	$(".topMenu").hide();
	$("#logo").hide();
	$("#indexBtn").hide();
	$("#bottomLine").hide();
	$("#questionBtn").hide();
	$("#script_btn").hide();
	$("#prevBtn").hide();
	$("#nextBtn").hide();
	$("#pageText").hide();
	if(pageCompCheck){
		$("#nextPop").show();
	}
	
	$("#timeText").css('left', 0);
	
	var controlW = 710;
	$("#sliderArea").css('left', 120);
	$("#sliderArea").css('width', controlW);
	
	$(".control-slider").css('left', 120);
	$(".control-slider").css('width', controlW);
	$('.control-slider .ui-slider-horizontal').css('width', controlW);
	$('.control-slider .ui-slider-range').css('width', controlW);
	
	$(".vol_control-slider").css('left', 1030);

	$("#muteBtn").css('left', 998);
	$("#rateBtn").css('left', 955);
	$("#rate_popCtn").hide();
	$("#rate_popCtn").css('left', 950);
	$("#fullScreenBtn").css('left', 920);
	$("#reBtn").css('left', 886);
	$("#playBtn").css('left', 852);
	$("#pauseBtn").css('left', 852);
	

	/////////////////////////////////////////////////////////////////////////////////////////
}

function popupVideoClose(){
	$("#popupVideo").trigger('pause');
	$("#popupVideo").attr("src", "");
	$("#popupVideoCtn").hide();

	videoPopMode = false;
	videoRate(1);
	$("#rateBtn").css("background-position-y", "0px");
	
	$("#video").prop("volume", volumeNum);
	if(volumeNum == 0) $("#muteLine").show();

	/*if( $("#timeText").text().split(" / ")[0] != $("#timeText").text().split(" / ")[1] ){
		videoPlay();
	}*/
	
	var currentPos = $("#video")[0].currentTime; //Get currenttime
	var maxduration = $("#video")[0].duration; //Get video duration
	var percentage = 1000 * currentPos / maxduration; //in %
	$('#slider').slider("value", Math.floor(percentage));	
	$("#timeText").text( timeFunc(Math.floor(currentPos))+" / "+timeFunc(Math.floor(maxduration)) );
	if(playBtnType == "visible"){
		$("#playBtn").show();
		$("#pauseBtn").hide();
	}else{
		$("#playBtn").attr("disabled", false);			
		$("#playBtn").trigger("mouseout");
		$("#pauseBtn").attr("disabled", true);
		$("#pauseBtn").trigger("mouseover");
	}	
	

	// 팝업 영상종료 시 하단메뉴 재설정
	$(".topMenu").show();
	$("#logo").show();
	$("#indexBtn").show();
	$("#bottomLine").show();
	$("#questionBtn").show();
	$("#script_btn").show();
	$("#prevBtn").show();
	$("#nextBtn").show();
	$("#pageText").show();
	if(pageCompCheck){
		$("#nextPop").show();
	}
	
	$("#timeText").css('left', $("#timeText").attr('posX')+"px");
	
	$("#sliderArea").css('left', $("#sliderArea").attr('posX')+"px");
	$("#sliderArea").css('width', $("#sliderArea").attr('orgW')+"px");
	
	$(".control-slider").css('left', $(".control-slider").attr('posX')+"px");
	$(".control-slider").css('width', $(".control-slider").attr('orgW')+"px");
	$('.control-slider .ui-slider-horizontal').css('width', $(".control-slider").attr('orgW')+"px");
	$('.control-slider .ui-slider-range').css('width', $(".control-slider").attr('orgW')+"px");
	
	$(".vol_control-slider").css('left', $(".vol_control-slider").attr('posX')+"px");
	
	$("#muteBtn").css('left', $("#muteBtn").attr('posX')+"px");
	$("#rateBtn").css('left', $("#rateBtn").attr('posX')+"px");
	$("#rate_popCtn").hide();
	$("#rate_popCtn").css('left', $("#rate_popCtn").attr('posX')+"px");
	$("#fullScreenBtn").css('left', $("#fullScreenBtn").attr('posX')+"px");
	$("#reBtn").css('left', $("#reBtn").attr('posX')+"px");
	$("#playBtn").css('left', $("#playBtn").attr('posX')+"px");
	$("#pauseBtn").css('left', $("#pauseBtn").attr('posX')+"px");
	

	//////////////////////////////////////////////////////////////////////////////////////////
	//alert("layer_popupVideoMode :"+layer_popupVideoMode);
	switch(layer_popupVideoMode){
		case "사례모음":
			layer_popupVideoMode = false;
			examplePopShow();
			return; // 레이어팝업창으로 이동하므로 리턴
		break;

		case "실습 영상":
			layer_popupVideoMode = false;
			practicePopShow();
			return; // 레이어팝업창으로 이동하므로 리턴
		break;
		
		// 사전퀴즈 팝업영상, 생각해보기 팝업영상
		default :
			layer_popupVideoMode = false;
			
			// 전체화면 기능없는 페이지
			//$("#fullScreenBtn").css("opacity", "0.5");
			//$("#fullScreenBtn").prop('disabled', true);
			//$("#fullScreenBtn").css('pointer-events', 'none');
			//$("#fullScreenBtn").attr("tabindex", -1);
			//$("#fullScreenBtn").attr("cursor", "default");
			
			if( document.fullscreen ){
				if (document.exitFullscreen) {
					document.exitFullscreen();
				} else if (document.msExitFullscreen) {
					document.msExitFullscreen();
				} else if (document.mozCancelFullScreen) {
					document.mozCancelFullScreen();
				} else if (document.webkitExitFullscreen) {
					document.webkitExitFullscreen();
				}
			};		
	}
	
	// 컨텐츠 영상이 완료되지않았으면 자동재생
	//console.log("videoCompCheck :"+videoCompCheck);
	if(videoCompCheck){
		videoPlay();
	}else{
		setTimeout(function() {
			$("#timeText").text( timeFunc(Math.floor($("#video")[0].duration))+" / "+timeFunc(Math.floor($("#video")[0].duration)) );
		}, 200);			
	}
	
	// 팝업 영상이 컨텐츠 영상과 같을경우 해당 소스 주석하기
	// 팝업 영상이 컨텐츠 영상과 다른 경우!!	 (컨텐츠 영상은 1100*680  팝업영상은 1920*1080)	
	$(".bottomMenu").css('background-color', '#313131');
	////////////////////////////////////////////
}

function popupVideo_fullscreen(posX, scale){
	
	// 팝업 영상이 컨텐츠 영상과 같을경우 해당 소스 주석하기
	// 팝업 영상이 컨텐츠 영상과 다른 경우!!	 (컨텐츠 영상은 1100*680  팝업영상은 1920*1080)	
	if(scale == 1){
		$("#popupVideo").css('width', '1100px');
		$("#popupVideo").css('height', '619px');  // 영상 사이즈 비율로 줄임
		if(videoPopMode){
			$(".bottomMenu").css('background-color', '#313131');
		}
	}else{
		$("#popupVideo").css('width', '1100px');
		$("#popupVideo").css('height', '680px');  // 컨텐츠사이즈로 변경해서 세로위치 다시잡기
		if(videoPopMode){
			$(".bottomMenu").css('background-color', 'transparent');
		}
	}
	
		
	var centerY = ($(window).height()-$('#popupVideo').videoHeight)/2;
	$('#popupVideo').css("top", centerY );
	
	$('#popupVideo_bg').css('transform', 'scale(' + scale + ')');
	$('#popupVideo_bg').css('msTransform', 'scale(' + scale + ')');
	$('#popupVideo_bg').css('-webkit-transform', 'scale(' + scale + ')');
	$('#popupVideo_bg').css('-moz-transform', 'scale(' + scale + ')');
	$('#popupVideo_bg').css('-o-transform', 'scale(' + scale + ')');
	
	$('#popupVideo_bg').css('transform-origin', '0 0');
	$('#popupVideo_bg').css('msTransform-origin', '0 0');
	$('#popupVideo_bg').css('-webkit-transform-origin', '0 0');
	$('#popupVideo_bg').css('-moz-transform-origin', '0 0');
	$('#popupVideo_bg').css('-o-transform-origin', '0 0');

	////////////////////////////////////////////
			

	// 팝업비디어 위치 설정
	$('#popupVideoCtn').css("left", posX );
	$('#popupVideo').css('transform', 'scale(' + scale + ')');
	$('#popupVideo').css('msTransform', 'scale(' + scale + ')');
	$('#popupVideo').css('-webkit-transform', 'scale(' + scale + ')');
	$('#popupVideo').css('-moz-transform', 'scale(' + scale + ')');
	$('#popupVideo').css('-o-transform', 'scale(' + scale + ')');
	
	$('#popupVideo').css('transform-origin', '0 0');
	$('#popupVideo').css('msTransform-origin', '0 0');
	$('#popupVideo').css('-webkit-transform-origin', '0 0');
	$('#popupVideo').css('-moz-transform-origin', '0 0');
	$('#popupVideo').css('-o-transform-origin', '0 0');
	
	if(scale == 1){
		$("#popupVideo_closeBtn").css("left", 1054);
		$("#popupVideo_closeBG").css("left", 931);
	}else{
		var ctnW = $(window).width()-(posX*2); // 검은여백 제외한 width값
		$("#popupVideo_closeBtn").css("left", ctnW-46); // 컨텐츠w 1100 - 메뉴x값이 1054 = 46
		$("#popupVideo_closeBG").css("left", ctnW-169); // 컨텐츠w 1100 - 메뉴x값이 931 = 169	
	}

}

function handleVideoEnd() {
    // Play the click sound with increased volume
    var audio = new Audio('common/sound/click.mp3');
    audio.volume = 1.0;
    audio.play();
    
    // Remove any existing nextPopImage
    $('#nextPopImage').remove();
    
    // Ensure tooltip elements are hidden
    $("#nextBtn").children(".triangleBottom").hide();
    $("#nextBtn").children(".toolTipText").hide();
    
    // Remove tooltip events while nextPop is visible
    $("#nextBtn").off('mouseover mouseout');
    
    // Check if current page is 002.htm
    var currentPage = window.location.pathname.split('/').pop();
    if (currentPage === '002.htm') {
        // Disable next button for 002.htm
        $("#nextBtn").css('pointer-events', 'none');
        $("#nextBtn").css('cursor', 'default');
        return; // Exit function early for 002.htm
    }
    
    // For other pages, show nextPop image
    var nextPopImage = '<div id="nextPopImage"><img src="../img/nextPop.png" alt="Next" /></div>';
    $('#videoCtn').append(nextPopImage);
    
    // Style the popup container
    $('#nextPopImage').css({
        'position': 'absolute',
        'right': '15px',
        'bottom': '15px',
        'z-index': '9999',
        'display': 'none',
        'pointer-events': 'none'
    });
    
    // Style the image with larger dimensions
    $('#nextPopImage img').css({
        'width': '120px',
        'height': 'auto',
        'display': 'block'
    });
    
    // Show with fade animation
    $('#nextPopImage').fadeIn(500);
    
    // Enable clicking on the nextPop image
    $('#nextPopImage').css('pointer-events', 'auto').on('click', function() {
        window.location.href = '002.htm';
    });
    
    // Enable next button click
    $("#nextBtn").css('pointer-events', 'auto');
    $("#nextBtn").css('cursor', 'pointer');
    
    // Add click event for next button
    $("#nextBtn").off('click').on('click', function() {
        window.location.href = '002.htm';
    });
}

// Helper function to restore tooltip functionality
function restoreNextButtonTooltip() {
    // Initially hide tooltip elements
    $("#nextBtn").children(".triangleBottom").hide();
    $("#nextBtn").children(".toolTipText").hide();
    
    // Set up mouseover/mouseout events
    $("#nextBtn").on('mouseover', function() {
        if (!$('#nextPopImage').is(':visible')) {  // Only show tooltip if nextPop is not visible
            $(this).children(".triangleBottom").stop().fadeIn(200);
            $(this).children(".toolTipText").stop().fadeIn(200);
        }
    }).on('mouseout', function() {
        $(this).children(".triangleBottom").stop().fadeOut(200);
        $(this).children(".toolTipText").stop().fadeOut(200);
    });
}