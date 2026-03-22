var audioPlaying;
var audioTotalTime;
var audio_ctime;

var audio_Interval;

var audioLoadComp;

var audio_playbackRateNum = 1;

function AudioInit(){		
}

function startAudio(url){
	audioLoadComp = false;
	if(playBtnType == "visible"){
		$("#playBtn").hide();
	}else{
		$("#playBtn").attr("disabled", true);
		$("#playBtn").trigger("mouseover");
		$("#pauseBtn").attr("disabled", false);
		$("#pauseBtn").trigger("mouseout");
	}
	
		
	$("#audioCtn").attr("src", url);
	$("#audioCtn").prop("volume", volumeNum);
	if(volumeNum == 0) $("#muteLine").show();
	$("#audioCtn")[0].play();

	$("#audioCtn").on('timeupdate', function() {
		if(sliderDrag) return;
		var currentPos =  $("#audioCtn")[0].currentTime; //Get currenttime
		var maxduration =  $("#audioCtn")[0].duration; //Get video duration
		var percentage = sliderMax * currentPos / maxduration; //in %
		//console.log(currentPos+" / "+maxduration);
		
		if(!currentPos) currentPos = 0;
		if(!maxduration) maxduration = 0;

		if(audioPlaying && percentage){
			$('#slider').slider("value", Math.floor(percentage));
		}
		if(Math.floor(currentPos) >= Math.floor(maxduration)) currentPos = maxduration;
		$("#timeText").text( timeFunc(Math.floor(currentPos))+" / "+timeFunc(Math.floor(maxduration)) );
		audio_ctime = $("#audioCtn")[0].currentTime;
	});
	
	$("#audioCtn").on('ended', function() {
		var currentPos = $(this)[0].currentTime; //Get currenttime
		var maxduration = $(this)[0].duration; //Get video duration
		var percentage = sliderMax * currentPos / maxduration; //in %
		//console.log("end :"+currentPos+" / "+maxduration);
		
		audio_ctime = currentPos;

		audioPlaying = false;
		
		if(playBtnType == "visible"){
			$("#playBtn").show();
			$("#pauseBtn").hide();
		}else{
			$("#playBtn").attr("disabled", false);
			$("#playBtn").trigger("mouseout");
			$("#pauseBtn").attr("disabled", true);
			$("#pauseBtn").trigger("mouseover");
		}
		
		playerEnd();
	});
	
	$("#audioCtn").on("loadedmetadata", function () {
		audioLoadComp = true;
		loadComp();
	});
	
	$("#audioCtn").on('loadstart', function() {
		
	});

	$("#audioCtn").on('canplay', function() {
		
	});

	$("#audioCtn").on('playing', function() {
		$("#messageBox").hide();
		$("#loadingPop").hide();
		audioLoadComp = true;
	});

	$("#audioCtn").on('play', function() {
		audioPlaying = true;
	});

	$("#audioCtn").on('pause', function() {
		audioPlaying = false;
	});
}

function AudioPlay(){	
	if(playBtnType == "visible"){
		$("#playBtn").hide();
		$("#pauseBtn").show();
	}else{
		$("#playBtn").attr("disabled", true);
		$("#playBtn").trigger("mouseover");
		$("#pauseBtn").attr("disabled", false);		
		$("#pauseBtn").trigger("mouseout");
	}
	$("#audioCtn").trigger('play');
	audioRate(audio_playbackRateNum);
}

function AudioPause(){
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
	};

	$("#audioCtn").trigger('pause');
}

function AudioReStart(){
	if(playBtnType == "visible"){
		$("#playBtn").hide();
		$("#pauseBtn").show();
	}else{
		$("#playBtn").attr("disabled", true);			
		$("#playBtn").trigger("mouseover");
		$("#pauseBtn").attr("disabled", false);		
		$("#pauseBtn").trigger("mouseout");
	}
	
	$("#audioCtn")[0].currentTime = 0;
	$("#audioCtn").trigger('play');
	audioRate(audio_playbackRateNum);
}

function AudioMove(type){
	if(type == "up"){
		var t = $("#audioCtn")[0].currentTime + 2;
		$("#audioCtn")[0].currentTime = t;
	}else{
		var t = $("#audioCtn")[0].currentTime - 2;
		$("#audioCtn")[0].currentTime = t;
	};
	
	var currentPos =  $("#audioCtn")[0].currentTime; //Get currenttime
	var maxduration =  $("#audioCtn")[0].duration; //Get video duration
	
	if(Math.floor(currentPos) < Math.floor(maxduration)){
		AudioPlay()
	};
}

function AudioSeeking(){
	var value = $("#slider").slider("option","value");

	if(value == sliderMax) value = 950;
	var time;
	
	time = value * $("#audioCtn")[0].duration /sliderMax;
	$("#timeText").text( timeFunc(Math.floor(time))+" / "+timeFunc(Math.floor($("#audioCtn")[0].duration)) );
	if(!sliderDrag) $("#audioCtn")[0].currentTime = time;
}


function closeAudio(){
	clearInterval(audio_Interval);
	audioPlaying = false;
	AudioPause();
	$("#audioCtn").attr("src", "");

	$("#timeText").text("00:00 / 00:00");
	$('#slider').slider("value", 0);
}

function volumeAudio(){
	if(vol_sliderDrag){
		//var num = $("#muteBtn").css("background-position").split(" ")[1].replace("px","");
		//if(num != 0) return;
		if(volumeNum == 0){
			$("#muteLine").show();
		}else{
			$("#muteLine").hide();
		}
		$("#audioCtn").prop("volume", volumeNum);
	}else{
		if(volumeNum == 0) volumeNum = 1;
		var muteChk = $("#muteLine").css("display");
		if(muteChk == "none"){
			$("#audioCtn").prop("volume", 0);
			$("#muteLine").show();
			bgmStop();
		}else{
			$("#audioCtn").prop("volume", volumeNum);
			$("#muteLine").hide();
			bgmPlay();
		}
	}

	/*if($("#audioCtn").prop("volume") == 1){
		$("#audioCtn").prop("volume", 0);
		$("#muteBtn").css("background-position", "3px -30px");
	}else{
		$("#audioCtn").prop("volume", 1);
		$("#muteBtn").css("background-position", "3px 0px");
	}*/	
}

function audioRate(num){
	var v = document.getElementById("audioCtn");
	v.playbackRate = num;
	audio_playbackRateNum = num;
};



/////////////////////////// effect sound Function


function effectCall(url){
	$(".effect_snd").attr("src", url);
	$(".effect_snd")[0].volume = volumeNum;
	$(".effect_snd")[0].play();
};

function effectStop(){
	//alert('stop');
	$(".effect_snd")[0].pause();
}

function bgmCall(url, vol){
	$(".bgm_snd").attr("src", "../common/mp3/"+url);
	if(volumeNum == 0){
		vol = 0;
	};

	$(".bgm_snd")[0].volume = vol;
	$(".bgm_snd")[0].play();
}

function bgmStop(){
	if(chapterNames[page-1].bgm){
		$(".bgm_snd")[0].pause();
	}
}

function bgmPlay(){
	if(chapterNames[page-1].bgm){
		$(".bgm_snd")[0].play();
	}
}