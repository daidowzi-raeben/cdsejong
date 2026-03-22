var ox_dap;
var ox_page = 1;
var ox_vodNum = 1;
var ox_answerStr;
var resultArr = [];

var ox_life = 0;
var ox_cur_life;

var oxQuizMotionChk = false;
var oxQuiz_Tl = gsap.timeline({
});

var ox_wrong_Tl = gsap.timeline({
	paused: true,
	//repeat: -1,
	//yoyo: true
});

var ox_answer_Tl = gsap.timeline({
	paused: true
});

window.onload = function () {
	//$("#chasi_titleBG").hide();

	pageCompCheck = false;
	oxQuizInit();	
	
	$("#video").on('timeupdate', function() {
		var time = $(this)[0].currentTime;
		
		
		if(time > 1.5){
			if(!oxQuizMotionChk){
				oxQuizMotionStart();
			}
		}else{
			//$("#oxQuizCtn").css("opacity", 0);

			oxQuizMotionChk = false;
			oxQuiz_Tl.pause(0);
			ox_wrong_Tl.pause(0);
			ox_answer_Tl.pause(0);
			
			$("#ox_checkBtn").hide();
			$("#ox_resultBtn").hide();
			$("#ox_nextBtn").hide();
			$("#ox_vodBtn").hide();
			resultArr = [];
			ox_page = 1;
			ox_makeQuiz();
			$("#ox_resultPop").hide();
		}
	});
	
	$("#video").on('ended', function() {
		//$("#oxQuizCtn").css("opacity", 1);
	});

};


function oxQuizInit(){
	var oxQuiz_focusArr = ["ox_oBtn", "ox_xBtn", "ox_resultBtn", "ox_nextBtn", "ox_restartBtn"];
	for(var i=1; i<=oxQuiz_focusArr.length; i++){
		$("#"+oxQuiz_focusArr[i-1]).attr("tabindex", 0);
		$("#"+oxQuiz_focusArr[i-1]).focus(function() { focusObj = $(this); });
		$("#"+oxQuiz_focusArr[i-1]).focusout(function() { focusObj = null; });
	}
	
	if(!mobileCheck){
		$("#ox_answrTextCtn").mCustomScrollbar({theme:"dark-3"});
		$("#ox_answrTextCtn").mCustomScrollbar();
	}

	$("#fullScreenBtn").css("opacity", "0.5");
	$("#fullScreenBtn").prop('disabled', true);
	$("#fullScreenBtn").css('pointer-events', 'none');
	$("#fullScreenBtn").attr("tabindex", -1);
	
	//////////////// ox 퀴즈 팝업 /////////////////////////////
	$("#ox_wrongPop").css('display', "none");
	$("#ox_wrongPop").css('position', "absolute");
	$("#ox_wrongPop").append('<div id="ox_wrongPop_bg"></div> <div id="ox_wrongPop_icon"></div> <div id="ox_wrongPop_txt1"></div> <div id="ox_wrongPop_txt2"></div>');
	//$("#ox_wrongPop").css('border', "1px solid red");

	$("#ox_wrongPop_bg").css('position', "absolute");
	$("#ox_wrongPop_bg").css({left: 0, top: 0, width: 1280, height: 720});
	$("#ox_wrongPop_bg").css('background-color', '#000000');
	$("#ox_wrongPop_bg").css('opacity', '0.3');

	$("#ox_wrongPop_icon").css('position', "absolute");
	$("#ox_wrongPop_icon").css({left: 490, top: 210, width: 300, height: 300});
	$("#ox_wrongPop_icon").css('background', 'url(../common/contents/images/alert_bg.png) no-repeat 0px 0px');
	
	/*
	$("#ox_wrongPop_txt1").css('position', "absolute");
	$("#ox_wrongPop_txt1").css({left: 450, top: 336});
	$("#ox_wrongPop_txt1").css('font-size','65px');
	$("#ox_wrongPop_txt1").css('color', "#ffffff");
	$("#ox_wrongPop_txt1").css('letter-spacing', "-1px");
	$("#ox_wrongPop_txt1").css('font-family', "forturn");
	//$("#ox_wrongPop_txt1").html("Incorrect");
	*/

	$("#ox_wrongPop_txt2").css('position', "absolute");
	$("#ox_wrongPop_txt2").css({left: 520, top: 350, width: 241, height: 40});
	$("#ox_wrongPop_txt2").css('font-size','35px');
	$("#ox_wrongPop_txt2").css('color', "#ffffff");
	$("#ox_wrongPop_txt2").css('letter-spacing', "-1px");
	$("#ox_wrongPop_txt2").css('font-family', "KATURI");
	$("#ox_wrongPop_txt2").css('text-align', "center");
	$("#ox_wrongPop_txt2").css('line-height', "40px");
	$("#ox_wrongPop_txt2").css('-webkit-touch-callout', "none");
	$("#ox_wrongPop_txt2").css('-webkit-user-select', "none");
	//$("#ox_wrongPop_txt2").css('border', "1px solid red");
	
	ox_wrong_Tl.fromTo($("#ox_wrongPop"), 0.5, {display: "none", opacity:0}, {
		display: "block",
		opacity:1
	})
	.to($("#ox_wrongPop"), 0.5, {
		display: "none",
		opacity:0
	}, 2)
	
	
	//$("#ox_answerPop").css('display', "none");
	$("#ox_answerPop").css('position', "absolute");
	$("#ox_answerPop").append('<div id="ox_answerPop_bg"></div> <div id="ox_answerPop_icon"></div> <div id="ox_answerPop_txt1"></div> <div id="ox_answerPop_txt2"></div>');
	//$("#ox_answerPop").css('border', "1px solid red");

	$("#ox_answerPop_bg").css('position', "absolute");
	$("#ox_answerPop_bg").css({left: 0, top: 0, width: 1280, height: 720});
	$("#ox_answerPop_bg").css('background-color', '#000000');
	$("#ox_answerPop_bg").css('opacity', '0.3');

	$("#ox_answerPop_icon").css('position', "absolute");
	$("#ox_answerPop_icon").css({left: 490, top: 210, width: 300, height: 300});
	$("#ox_answerPop_icon").css('background', 'url(../common/contents/images/alert_bg.png) no-repeat 0px 0px');
	
	/*
	$("#ox_answerPop_txt1").css('position', "absolute");
	$("#ox_answerPop_txt1").css({left: 464, top: 336});
	$("#ox_answerPop_txt1").css('font-size','65px');
	$("#ox_answerPop_txt1").css('color', "#ffffff");
	$("#ox_answerPop_txt1").css('letter-spacing', "-1px");
	$("#ox_answerPop_txt1").css('font-family', "forturn");
	//$("#ox_answerPop_txt1").html("Correct");
	*/
	
	$("#ox_answerPop_txt2").css('position', "absolute");
	$("#ox_answerPop_txt2").css({left: 520, top: 350, width: 241, height: 40});
	$("#ox_answerPop_txt2").css('font-size','35px');
	$("#ox_answerPop_txt2").css('color', "#ffffff");
	$("#ox_answerPop_txt2").css('letter-spacing', "-1px");
	$("#ox_answerPop_txt2").css('font-family', "KATURI");
	$("#ox_answerPop_txt2").css('text-align', "center");
	$("#ox_answerPop_txt2").css('line-height', "40px");
	$("#ox_answerPop_txt2").css('-webkit-touch-callout', "none");
	$("#ox_answerPop_txt2").css('-webkit-user-select', "none");
	//$("#ox_answerPop_txt2").css('border', "1px solid red");
	
	ox_answer_Tl.fromTo($("#ox_answerPop"), 0.5, {display: "none", opacity:0}, {
		display: "block",
		opacity:1
	})
	.to($("#ox_answerPop"), 0.5, {
		display: "none",
		opacity:0
	}, 2)

	//////////////////////////////////////////////////////////
	
	
	//$("#ox_nextBtn").html("다음 문제");
	//$("#ox_vodBtn").html("해설 영상");
	//$("#ox_resultBtn").html("결과 보기");
	
	$("#ox_queBG").hide();
	//$("#ox_queBG").html("Pre-inspection");
	
	//$("#ox_restartBtn").html("다시 풀기");
	//$("#ox_scoreText").html("Your Score is...");
	//$("#ox_resultText").html('두 문항 이상 정답인 경우 <span class="ox_resultText-impact"><심화 학습></span> 을, <br>한 문항 이하 정답의 경우 <span class="ox_resultText-impact"><보충 학습></span>을 이어서 진행하게 됩니다.<br>화면 우측 하단에 <span class="ox_resultText-impact">"다음 페이지"</span> 버튼을 클릭해 주세요.');
	
	//$("#ox_result_qNum_1").html("Q1");
	//$("#ox_result_qNum_2").html("Q2");
	//$("#ox_result_qNum_3").html("Q3");
	
	/*
	// 문항에 맞게 결과화면 위치잡기.
	if(QuizDataArr.length == 1){
		$("#ox_result_ox_2").hide();
		$("#ox_result_qNum_2").hide();

		$("#ox_result_ox_1").css("left", 580);
		$("#ox_result_qNum_1").css("left", 625);
	}
	*/


	$(".oxBtnImg").css("position", 'absolute');
	$(".oxBtnImg").css("left", 0);
	$(".oxBtnImg").css("top", 0);
	$(".oxBtnImg").css("width", 200);
	$(".oxBtnImg").css("height", 200);
	
	/*
	$(".oxBtnBG").css("position", 'absolute');
	$(".oxBtnBG").css("opacity", 1);
	$(".oxBtnBG").css("left", 0);
	$(".oxBtnBG").css("top", 0);
	$(".oxBtnBG").css("width", 200);
	$(".oxBtnBG").css("height", 200);
	$(".oxBtnBG").css("background-color", "#e0dbde");
	$(".oxBtnBG").css("border-radius", "50%");
	$(".oxBtnBG").css("-moz-border-radius", "50%");
	$(".oxBtnBG").css("-webkit-border-radius", "50%");
	*/
	
	$("#ox_oBtn").css('display', 'none');
	$("#ox_oBtn").css('cursor', 'pointer');
	$("#ox_oBtn").css("position", 'absolute');
	$("#ox_oBtn").css("left", 390);
	$("#ox_oBtn").css("top", 320);
	$("#ox_oBtn").css("width", 200);
	$("#ox_oBtn").css("height", 200);	
	$("#ox_oBtn").children('.oxBtnImg').css('background', 'url(../common/contents/images/o-icon.png) no-repeat 0px 0px');
	
	$("#ox_xBtn").css('display', 'none');
	$("#ox_xBtn").css('cursor', 'pointer');
	$("#ox_xBtn").css("position", 'absolute');
	$("#ox_xBtn").css("left", 690);
	$("#ox_xBtn").css("top", 320);
	$("#ox_xBtn").css("width", 200);
	$("#ox_xBtn").css("height", 200);
	$("#ox_xBtn").children('.oxBtnImg').css('background', 'url(../common/contents/images/x-icon.png) no-repeat 0px 0px');
	
	$("#ox_oBtn").attr("tabindex", 0);
	$("#ox_oBtn").focus(function() { focusObj = $(this); });
	$("#ox_oBtn").focusout(function() { focusObj = null; });

	$("#ox_xBtn").attr("tabindex", 0);
	$("#ox_xBtn").focus(function() { focusObj = $(this); });
	$("#ox_xBtn").focusout(function() { focusObj = null; });

	var ox_rePop = document.getElementById("ox_rePop");
	
	ox_makeQuiz();
	$("#ox_resultBtn").hide();
	
	$("#ox_oBtn").on('mouseover', function(e) {
		//$(this).children('.oxBtnBG').css("background-color", "#ffffff");
		$(this).children('.oxBtnImg').css("background-position-x", "-200px");
	});
	$("#ox_oBtn").on('mouseout', function(e) {
		if(ox_dap) return;
		$(this).children('.oxBtnImg').css("background-position-x", "0px");
		//$(this).children('.oxBtnBG').css("background-color", "#e0dbde");
	});

	$("#ox_xBtn").on('mouseover', function(e) {
		//$(this).children('.oxBtnBG').css("background-color", "#ffffff");
		$(this).children('.oxBtnImg').css("background-position-x", "-200px");
	});
	$("#ox_xBtn").on('mouseout', function(e) {
		if(ox_dap) return;
		$(this).children('.oxBtnImg').css("background-position-x", "0px");
		//$(this).children('.oxBtnBG').css("background-color", "#e0dbde");
	});

	$("#ox_oBtn").click(function() {
		//var posY = $(this).css('background-position-y').replace('px', '');
		ox_dap = "O";
		//effectCall('../common/mp3/cuing.mp3');
		$("#ox_checkBtn").click();
	});
		
	$("#ox_xBtn").click(function() {
		ox_dap = "X";
		//effectCall('../common/mp3/cuing.mp3');
		$("#ox_checkBtn").click();
	});
	
	$("#ox_vodBtn").click(function() {
		//effectCall('../common/mp3/click.mp3');
		//var url = vodpath+chapterNames[page-1].popVod+"_"+itostr(ox_vodNum)+".mp4";
		var url = vodpath+"/"+itostr(chasi)+"/explain"+ox_vodNum+".mp4";
		popupVideoStart(url, "해설 영상");
	});
	

	$("#ox_checkBtn").click(function() {
		if(!ox_dap){
			//gsap.set(ox_rePop, {display:"block"});
			//gsap.to(ox_rePop, 1.5, {display:"none"});
			//effectCall('../common/mp3/warning.mp3');
			//return;
		}
		
		//alert("ox_answerStr :"+ox_answerStr);
		if(ox_answerStr == "O"){
			//$("#ox_xBtn").children('.oxBtnBG').css("background-color", "#e0dbde");
			$("#ox_xBtn").children('.oxBtnImg').css("background-position-x", "0px");

			$("#ox_oBtn").children('.oxBtnImg').css("background-position-x", "-400px");
			//$("#ox_oBtn").children('.oxBtnBG').css("background-color", "#ffffff");
		}else{
			//$("#ox_oBtn").children('.oxBtnBG').css("background-color", "#e0dbde");
			$("#ox_oBtn").children('.oxBtnImg').css("background-position-x", "0px");

			$("#ox_xBtn").children('.oxBtnImg').css("background-position-x", "-400px");
			//$("#ox_xBtn").children('.oxBtnBG').css("background-color", "#ffffff");
		}
		
		$("#ox_oBtn").blur();
		$("#ox_xBtn").blur();

		oxBtn_disabled(true);
		
		
		/*if(ox_page == 1){
			$("#ox_que_oxImg").css("left", 70);
		}else{
			$("#ox_que_oxImg").css("left", 60);
		}*/
		//$("#ox_que_oxImg").css("left", 480);
		
		

		if(ox_answerStr == ox_dap){
			effectCall('../common/mp3/o.mp3');
			resultArr[ox_page-1] = "O";
			$("#ox_que_oxImg").css("background-position-x", "0px");

			ox_page++;
			$("#ox_que_oxImg").show();
			$("#ox_explanation").show();
			
			if(ox_page <= QuizDataArr.length){
				$("#ox_checkBtn").hide();
				$("#ox_nextBtn").show();
				//$("#ox_vodBtn").show();
				$("#ox_answerPop_txt2").html("다음 문제를 <br>풀어보세요");
			}else{
				$("#ox_checkBtn").hide();
				//$("#ox_vodBtn").show();
				$("#ox_resultBtn").show();
				$("#ox_answerPop_txt2").html("결과를 <br>확인해보세요");
				//console.log("quiz 끝");
			}
			ox_answer_Tl.restart();
		}else{
			if(ox_cur_life == 0){
				resultArr[ox_page-1] = "X";
				$("#ox_que_oxImg").css("background-position-x", "-180px");
				ox_page++;
				$("#ox_que_oxImg").show();
				$("#ox_explanation").show();

				if(ox_page <= QuizDataArr.length){
					$("#ox_checkBtn").hide();
					$("#ox_nextBtn").show();
					//$("#ox_vodBtn").show();
					$("#ox_wrongPop_txt2").html("다음 문제를 <br>풀어보세요");
				}else{
					$("#ox_checkBtn").hide();
					//$("#ox_vodBtn").show();
					$("#ox_resultBtn").show();
					$("#ox_wrongPop_txt2").html("결과를 <br>확인해보세요");
					//console.log("quiz 끝");
				}
			}else{
				/*
				// 틀리면 기회주기
				ox_cur_life--;

				gsap.set($("#ox_rePop"), {display:"block"});
				gsap.to($("#ox_rePop"), 1.5, {display:"none"});
				oxBtn_disabled(false);
				*/
				
			}
			ox_wrong_Tl.restart();
			effectCall('../common/mp3/x.mp3');							
		}				
	});

	$("#ox_nextBtn").click(function() {
		ox_vodNum++;
		$("#ox_vodBtn").hide();
		ox_makeQuiz();
		effectCall('../common/mp3/click.mp3');
	});

	$("#ox_resultBtn").click(function() {
		effectCall('../common/mp3/click.mp3');
		//console.log(resultArr);
		$("#ox_vodBtn").hide();

		var totalNum = 0;
		for(var i=1; i<=resultArr.length; i++){
			//console.log("i :"+i+" / "+resultArr[i-1]);
			if(resultArr[i-1] == "O"){
				$("#ox_result_ox_"+i).css('background-position-x', '0px');
				totalNum++;
			}else{
				$("#ox_result_ox_"+i).css('background-position-x', '-70px');
			}
		}
		
		//$("#ox_resultNum").css('background-position-y', ''+(-(totalNum*30))+'px');
		//$("#ox_resultNum").html("총 <span class='ox-score-impact'>"+QuizDataArr.length+"</span> 문제 중 <span class='ox-score-impact2'>"+totalNum+"</span> 문제를 맞히셨습니다.");
		$("#ox_resultNum").html("<span class='ox-score-impact2'>"+totalNum+"</span>");
		$("#ox_resultPop").show();
		
		quizData_saveFunc(totalNum);

		pageCompCheck = true;
		playerEnd();

		// totalNum 추후 쿠키및 서버에 저장하기 보충과정, 심화과정 결정하기.
	});

	$("#ox_restartBtn").click(function() {
		//$("#ox_checkBtn").show();
		$("#ox_resultBtn").hide();
		resultArr = [];
		ox_page = 1;
		ox_vodNum = 1;
		ox_makeQuiz();
		$("#ox_resultPop").hide();
		effectCall('../common/mp3/click.mp3');
	});
}

function ox_makeQuiz(){
	$("#ox_oBtn").children('.oxBtnImg').css("background-position-x", "0px");
	$("#ox_xBtn").children('.oxBtnImg').css("background-position-x", "0px");
	
	$("#ox_oBtn").children('.oxBtnBG').css("background-color", "#e0dbde");
	$("#ox_xBtn").children('.oxBtnBG').css("background-color", "#e0dbde");

	var str = QuizDataArr[ox_page-1];
	ox_dap = null;
	
	ox_cur_life = ox_life;

	$("#ox_que_oxImg").hide();
	
	$("#ox_nextBtn").hide();
	$("#ox_vodBtn").hide();
	ox_answerStr = ox_answer[ox_page-1];
	
	//$("#ox_queNum").html("0"+ox_page);
	$("#ox_queNum").css("background-position-y", -(ox_page-1)*100+"px");

	$("#ox_queText").html(str);

	$('#ox_answrText').html("");
	$('#ox_answrText').scrollTop(0);
	$('#ox_answrTextCtn').mCustomScrollbar("scrollTo", 0);
	$("#ox_answrText").html(explainArr[ox_page-1]);
	
		

	if(ox_answer[ox_page-1] == "O"){
		$("#ox_answrImg").html("O");
		//$("#ox_answrImg").css('background-position-y', '0px');
	}else{
		$("#ox_answrImg").html("X");
		//$("#ox_answrImg").css('background-position-y', '-40px');
	}
	
	/*
	if(ox_page == 1){
		$("#ox_queText").css("left", "230px");
	}else{
		$("#ox_queText").css("left", "254px");
	}
	*/
	
	
	if(str.split("<br>").length == 1){
		//$("#ox_queText").css("top", "174px");
		$("#ox_queText").css("font-size", "42px");
		$("#ox_queText").css("line-height", "54px");
	}else if(str.split("<br>").length == 2){
		//$("#ox_queText").css("top", "120px");
		$("#ox_queText").css("font-size", "42px");
		$("#ox_queText").css("line-height", "54px");
	}else if(str.split("<br>").length == 3){
		//$("#ox_queText").css("top", "102px");
		$("#ox_queText").css("font-size", "38px");
		$("#ox_queText").css("line-height", "48px");
	}
	
	
	$("#ox_queText").css("top", "174px");
	
	$("#ox_queText").css("width", "1340px");	
	$("#ox_queText").css("left", "0px");
	//$("#ox_queText").css('border', '1px solid black');

	oxBtn_disabled(false);

	$("#ox_explanation").hide();
}

function oxBtn_disabled(type){
	
	if(type){
		//$("#ox_oBtn").css("opacity", "0.5");
		$("#ox_oBtn").prop('disabled', true);
		$("#ox_oBtn").css('pointer-events', 'none');
		$("#ox_oBtn").attr("tabindex", -1);

		//$("#ox_xBtn").css("opacity", "0.5");
		$("#ox_xBtn").prop('disabled', true);
		$("#ox_xBtn").css('pointer-events', 'none');
		$("#ox_xBtn").attr("tabindex", -1);
	}else{
		//$("#ox_oBtn").css("opacity", "1");
		$("#ox_oBtn").prop('disabled', false);
		$("#ox_oBtn").css('pointer-events', 'auto');
		$("#ox_oBtn").attr("tabindex", 0);

		//$("#ox_xBtn").css("opacity", "1");
		$("#ox_xBtn").prop('disabled', false);
		$("#ox_xBtn").css('pointer-events', 'auto');
		$("#ox_xBtn").attr("tabindex", 0);

	}	
}

function oxQuizMotionStart(){
	oxQuizMotionChk = true;
	
	var ox_queBG = document.getElementById("ox_queBG"),
		ox_queNum = document.getElementById("ox_queNum"),
		ox_queText = document.getElementById("ox_queText"),
		ox_oBtn = document.getElementById("ox_oBtn"),
		ox_xBtn = document.getElementById("ox_xBtn"),
		ox_checkBtn = document.getElementById("ox_checkBtn");

	oxQuiz_Tl.fromTo([ox_queBG, ox_queNum, ox_queText], 0.5, {opacity:0, x:20}, {
		display: "block",
		opacity: 1,
		x:0,
		ease: "elastic.out(1, 0.7)",
	}, 0.2)
	
	.fromTo([ox_oBtn, ox_xBtn], 0.5, {scale:0.5, opacity:0}, {
		display: "block",
		opacity: 1,
		scale:1,
		ease: "elastic.out(1, 0.7)",
	}, 0.5)

	oxQuiz_Tl.play();
}