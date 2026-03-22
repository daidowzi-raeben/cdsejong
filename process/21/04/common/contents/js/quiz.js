var multipleQuiz_page = 1;
var multipleQuiz_life = 1;
var multipleQuiz_btnNum = 4;
var multipleQuiz_TextColor = '#252525';
var multipleQuiz_SelectColor = '#E30000';
var multipleQuiz_wrongColor = '#E30000'; 
var multipleQuiz_answerColor = '#0036ff';
var multipleQuiz_checkMode = true;  // true : 정답확인 버튼있는경우. false: 정답확인버튼 없이 보기클릭시 바로 정답 체크

var multipleQuiz_cur_life;
var multipleQuiz_currentValue;
var multipleQuiz_resultArr = [];

var multipleQuizEventChk;
var multipleQuizMotionChk = false;

var multipleQuizCover_Tl = gsap.timeline({
	paused: true
});

var multipleQuiz_Tl = gsap.timeline({
});

var multiple_check_Tl = gsap.timeline({
	paused: true
});

var multiple_wrong_Tl = gsap.timeline({
	paused: true
});

var multiple_answer_Tl = gsap.timeline({
	paused: true
});

var multiple_explanation_Tl = gsap.timeline({
	paused: true
});


window.onload = function () {

	pageCompCheck = false;
	
	/// cover

	multipleQuizCover_Tl.fromTo($("#quiz_cover"), 1, {opacity:0, y:-20}, {
		display: "block",
		opacity: 1,
		y:0,
		ease: "elastic.out(1, 0.7)",
		onComplete: function () {
			//console.log("comp");
		}
	}, 0.3)
	
	
	multiple_check_Tl.fromTo($("#multipleQuiz_checkPop"), 0.5, {display: "none", opacity:0}, {
		display: "block",
		opacity:1
	})
	.to($("#multipleQuiz_checkPop"), 0.5, {
		display: "none",
		opacity:0
	}, 2)


	multiple_wrong_Tl.fromTo($("#multipleQuiz_wrongPop"), 0.5, {display: "none", opacity:0}, {
		display: "block",
		opacity:1
	})
	.to($("#multipleQuiz_wrongPop"), 0.5, {
		display: "none",
		opacity:0,
		onComplete: function () {
			if(multipleQuiz_cur_life == 0){
				multipleQuiz_cur_life = multipleQuiz_life;
				multiple_explanation_Tl.restart();
			}
			multipleQuiz_cur_life--;
		}
	}, 2)
	
	multiple_answer_Tl.fromTo($("#multipleQuiz_answerPop"), 0.5, {display: "none", opacity:0}, {
		display: "block",
		opacity:1
	})
	.to($("#multipleQuiz_answerPop"), 0.5, {
		display: "none",
		opacity:0,
		onComplete: function () {
			multiple_explanation_Tl.restart();
		}
	}, 2)	
	
	multiple_explanation_Tl.fromTo($("#multipleQuiz_explanation"), 0.5, {display: "none", opacity:0, x:10}, {
		display: "block",
		opacity:1,
		x:0
	})		

	if(quizType == "OX"){
		oxQuizInit();
	}else{
		multipleQuizInit();
	}
	
	//$("#chasi_titleBG").hide();
	//$("#chasi_titleText").hide();
	
	$("#multipleQuizCtn").hide();
	//$("#quiz_coverText").html("QUIZ<div style='position:absolute; left:308px; top:96px;width:18px; height:18px; background-color: #8bc3f3; border-radius: 9px;'></div>");
	//$("#quiz_cover_subText").html("오늘 학습이 잘 이해 되셨나요?<br>그럼 퀴즈를 통해 오늘 배운 내용을 정리해보겠습니다.<br><br>자, 준비가 되었으면 <font color='#448ccb'><span style='border-bottom:2px solid #448ccb;'>Start</span></font> 버튼을 클릭하세요.");
	//$("#quiz_startBtn").html("시작 하기");
	
	//$("#multipleQuiz_question_guide").html("Learning Quiz");
	//$("#multipleQuiz_nextBtn").html("다음 문제");
	//$("#multipleQuiz_resultBtn").html("결과 보기");
		
	//$("#multipleQuiz_restartBtn").html("다시 풀기");
	$("#multipleQuiz_explanation_txt").html("정답");
	
	//$("#multipleQuiz_answerPop_txt1").html("Correct");
	//$("#multipleQuiz_wrongPop_txt1").html("Incorrect");
	
	//$("#multipleQuiz_answerPop_txt2").html("다음 문제를 풀어보세요");
	//$("#multipleQuiz_answerPop_txt2").html("결과를 확인해보세요");

	//$("#multipleQuiz_wrongPop_txt2").html("한 번의 기회가 남았습니다.");
	//$("#multipleQuiz_wrongPop_txt2").html("다음 문제를 풀어보세요");
	//$("#multipleQuiz_wrongPop_txt2").html("결과를 확인해보세요");

	//$("#multipleQuiz_scoreText").html("Your Score is...");
	//$("#multipleQuiz_result_qNum_1").html("Q1");
	//$("#multipleQuiz_result_qNum_2").html("Q2");
	//$("#multipleQuiz_result_qNum_3").html("Q3");
	

	$("#quiz_startBtn").on('mouseover', function(e) {
		$(this).css("background-position-y", "-40px");
	});
	$("#quiz_startBtn").on('mouseout', function(e) {
		$(this).css("background-position-y", "0px");
	});

	$("#quiz_startBtn").click(function() {
		effectCall('../common/mp3/click.mp3');
		multipleQuizCover_Tl.pause(0);
		$("#quiz_cover").hide();
		
		$("#multipleQuizCtn").show();

		multipleQuizMotionChk = false;
		multipleQuiz_Tl.pause(0);
		multiple_check_Tl.pause(0);
		multiple_wrong_Tl.pause(0);
		multiple_answer_Tl.pause(0);
		multiple_explanation_Tl.pause(0);
		
		$("#multipleQuiz_checkBtn").hide();
		$("#multipleQuiz_nextBtn").hide();
		$("#multipleQuiz_resultBtn").hide();
		multipleQuiz_resultArr = [];
		multipleQuiz_page = 1;
		make_Question();
		
		$("#multipleQuiz_resultPop").hide();

		multipleQuizMotionStart();

		$("#chasi_titleBG").show();
		$("#chasi_titleText").show();
	});
	
	
	$("#video").on('timeupdate', function() {

		var time = $(this)[0].currentTime;
		if(time < 8){
			//console.log("multipleQuizMotionChk :"+multipleQuizMotionChk);
			if(multipleQuizMotionChk) return;
			
			multipleQuiz_Tl.pause(0);
			multiple_check_Tl.pause(0);
			multiple_wrong_Tl.pause(0);
			multiple_answer_Tl.pause(0);
			multiple_explanation_Tl.pause(0);

			$("#multipleQuiz_checkBtn").hide();
			$("#multipleQuiz_nextBtn").hide();
			$("#multipleQuiz_resultBtn").hide();
			multipleQuiz_resultArr = [];
			multipleQuiz_page = 1;
			
			$("#multipleQuiz_resultPop").hide();
			

			$("#multipleQuizCtn").hide();


			//$("#quiz_cover").show();
			//multipleQuizCover_Tl.restart();

			//$("#chasi_titleBG").hide();
			//$("#chasi_titleText").hide();

			multipleQuizCover_Tl.pause(0);
			$("#quiz_cover").hide();
		}else{
			multipleQuizMotionChk = false;
		}
		
	});	
	
	$("#video").on('ended', function() {
		multipleQuizCover_Tl.restart();
	});


		
	// mouseOver
	if(!mobileCheck){
		$("#multipleQuiz_checkBtn").on('mouseover', function(e) {
			$(this).css("background-position-y", "-40px");
		});
		$("#multipleQuiz_checkBtn").on('mouseout', function(e) {
			$(this).css("background-position-y", "0px");
		});

		$("#multipleQuiz_nextBtn").on('mouseover', function(e) {
			$(this).css("background-position-y", "-40px");
		});
		$("#multipleQuiz_nextBtn").on('mouseout', function(e) {
			$(this).css("background-position-y", "0px");
		});

		$("#multipleQuiz_resultBtn").on('mouseover', function(e) {
			$(this).css("background-position-y", "-40px");
		});
		$("#multipleQuiz_resultBtn").on('mouseout', function(e) {
			$(this).css("background-position-y", "0px");
		});

		$("#multipleQuiz_restartBtn").on('mouseover', function(e) {
			$(this).css("background-position-y", "-40px");
		});
		$("#multipleQuiz_restartBtn").on('mouseout', function(e) {
			$(this).css("background-position-y", "0px");
		});

		$("#multipleQuiz_answrTextCtn").mCustomScrollbar({theme:"light-3"});
		$("#multipleQuiz_answrTextCtn").mCustomScrollbar();
	}
	
	$("#fullScreenBtn").css("opacity", "0.5");
	$("#fullScreenBtn").prop('disabled', true);
	// $("#fullScreenBtn").css('pointer-events', 'none');
	$("#fullScreenBtn").attr("tabindex", -1);
	
	// 탭인덱스 추가.
	var quiz_focusArr = ["quiz_startBtn", "multipleQuiz_checkBtn", "multipleQuiz_nextBtn", "multipleQuiz_resultBtn", "multipleQuiz_restartBtn"];
	for(var i=1; i<=quiz_focusArr.length; i++){
		$("#"+quiz_focusArr[i-1]).attr("tabindex", 0);
		$("#"+quiz_focusArr[i-1]).focus(function() { focusObj = $(this); });
		$("#"+quiz_focusArr[i-1]).focusout(function() { focusObj = null; });
	}
};

function multipleQuizInit(){

	for(var i=1; i<=multipleQuiz_btnNum; i++){
		var quizHtml = '<div id="quizBogi_'+i+'" value="'+i+'" onClick="multipleQuiz_bogiClickEvent('+i+')"> '
		quizHtml += '<div id="bogiIcon"></div>'
		// quizHtml += '<div id="bogi_check"></div>'
		quizHtml += '<div id="txt"></div>'
		quizHtml += '</div>'

		$("#multipleQuiz_example").append(quizHtml);
	}

	make_Question();

	// btn Event
	
	$("#multipleQuiz_checkBtn").click(function() {
		
		if(!multipleQuiz_currentValue){
			//gsap.set($("#multipleQuiz_rePop"), {display:"block"});
			//gsap.to($("#multipleQuiz_rePop"), 1.5, {display:"none"});
			effectCall('../common/sound/wrong.mp3');
			$("#multipleQuiz_checkPop_txt2").html("문제를<br>풀어보세요.");
			multiple_check_Tl.restart();
			return;
		}
		

		if(multipleQuiz_currentValue == quizData[multipleQuiz_page-1].answer){
			if(multipleQuiz_page == quizData.length){
				$("#multipleQuiz_resultBtn").show();
				$("#multipleQuiz_answerPop_txt2").html("결과를 <br>확인해보세요");
			}else{
				$("#multipleQuiz_nextBtn").show();
				$("#multipleQuiz_answerPop_txt2").html("다음 문제를 <br>풀어보세요");
			};
			
			multipleQuiz_resultArr[multipleQuiz_page-1] = "O";
			multipleQuiz_BogiBtnDisabled(true);
			multipleQuiz_answerTextColor();
			$(this).hide();
						
			$("#multipleQuiz_question_oxImg").css("background-position-x", "0px");
			$("#multipleQuiz_question_oxImg").show();
			multiple_answer_Tl.restart();
			//multiple_explanation_Tl.restart();
			
			effectCall('../common/mp3/o.mp3');
		}else{
			if(multipleQuiz_cur_life == 0){
				if(multipleQuiz_page == quizData.length){
					$("#multipleQuiz_resultBtn").show();
					$("#multipleQuiz_wrongPop_txt2").html("결과를 <br>확인해보세요");
				}else{
					$("#multipleQuiz_nextBtn").show();
					$("#multipleQuiz_wrongPop_txt2").html("다음 문제를 <br>풀어보세요");
				};
				multipleQuiz_resultArr[multipleQuiz_page-1] = "X";
				multipleQuiz_BogiBtnDisabled(true);
				multipleQuiz_answerTextColor();
				$(this).hide();
								
				$("#multipleQuiz_question_oxImg").css("background-position-x", "-180px");
				$("#multipleQuiz_question_oxImg").show();
				
				//multiple_explanation_Tl.restart();
			}else{
				// 틀림 다시 기회준다.
				multipleQuiz_resetTextColor();
				multipleQuiz_currentValue = null;
				$("#multipleQuiz_wrongPop_txt2").html("한 번의 기회가 <br>남았습니다.");
			}
			multiple_wrong_Tl.restart();
			// effectCall('../common/mp3/x.mp3');
			effectCall('../common/sound/wrong.mp3');
		}
	});
	

	$("#multipleQuiz_nextBtn").click(function() {
		effectCall('../common/mp3/click.mp3');
		
		$("#multipleQuiz_answrText").html("");
		$("#multipleQuiz_answrText").scrollTop();
		multiple_explanation_Tl.pause(0);
		$(this).hide();
		if(multipleQuiz_checkMode){
			$("#multipleQuiz_checkBtn").show();
		}
		
		multipleQuiz_page++;
		make_Question();	
	});

	$("#multipleQuiz_resultBtn").click(function() {
		effectCall('../common/mp3/click.mp3');
		var totalNum = 0;
		for(var i=1; i<=multipleQuiz_resultArr.length; i++){
			if(multipleQuiz_resultArr[i-1] == "O"){
				$("#multipleQuiz_result_ox_"+i).css('background-position-x', '0px');
				totalNum++;
			}else{
				$("#multipleQuiz_result_ox_"+i).css('background-position-x', '-100px');
			}
		}
		
		$("#multipleQuiz_resultNum").html("<span class='quiz-score-impact2'>"+totalNum+"</span>");
		
		$("#multipleQuiz_resultPop").show();
		pageCompCheck = true;
		playerEnd();

		// Completely remove next page tooltip
		$("#nextBtn").removeAttr('title');  // Remove title attribute
		$("#nextBtn").children(".triangleBottom").hide();  // Hide tooltip triangle
		$("#nextBtn").children(".toolTipText").hide();  // Hide tooltip text
		$("#nextBtn").off('mouseover mouseout');  // Remove tooltip events
		
		// Remove prev button tooltip but keep it enabled
		$("#prevBtn").removeAttr('title');
		$("#prevBtn").children(".triangleBottom").hide();
		$("#prevBtn").children(".toolTipText").hide();
		$("#prevBtn").off('mouseover mouseout');
		$("#prevBtn").css('pointer-events', 'auto');
		$("#prevBtn").css('opacity', '1');
		$("#prevBtn").css('cursor', 'pointer');

		// Show nextPop image only after showing result
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
			window.location.href = '003.htm';
		});
		
		// Enable next button click
		$("#nextBtn").css('pointer-events', 'auto');
		$("#nextBtn").css('cursor', 'pointer');
		
		// Add click event for next button
		$("#nextBtn").off('click').on('click', function() {
			window.location.href = '003.htm';
		});
	});
	
	$("#multipleQuiz_restartBtn").click(function() {
		effectCall('../common/mp3/click.mp3');
		
		if(multipleQuiz_checkMode){
			$("#multipleQuiz_checkBtn").show();
		}
		
		$("#multipleQuiz_nextBtn").hide();
		$("#multipleQuiz_resultBtn").hide();
		multipleQuiz_resultArr = [];
		multipleQuiz_page = 1;
		make_Question();
		$("#multipleQuiz_resultPop").hide();
		multiple_explanation_Tl.pause(0);

		pageCompCheck = false;
		$("#nextPop").hide();
		
		// Remove nextPop image when returning to quiz start
		$('#nextPopImage').remove();
		$("#nextBtn").css('pointer-events', 'none');
		$("#nextBtn").css('cursor', 'default');
	});

	// Add prev button click handler
	$("#prevBtn").click(function() {
		if ($("#multipleQuiz_resultPop").is(':visible')) {
			effectCall('../common/mp3/click.mp3');
			
			if(multipleQuiz_checkMode){
				$("#multipleQuiz_checkBtn").show();
			}
			
			$("#multipleQuiz_nextBtn").hide();
			$("#multipleQuiz_resultBtn").hide();
			multipleQuiz_resultArr = [];
			multipleQuiz_page = 1;
			make_Question();
			$("#multipleQuiz_resultPop").hide();
			multiple_explanation_Tl.pause(0);

			pageCompCheck = false;
			$("#nextPop").hide();
			
			// Remove nextPop image when returning to quiz start
			$('#nextPopImage').remove();
			$("#nextBtn").css('pointer-events', 'none');
			$("#nextBtn").css('cursor', 'default');
			
			// Show quiz start screen
			$("#quiz_cover").show();
			multipleQuizCover_Tl.restart();
		}
	});
}


function make_Question(){	
	multipleQuiz_BogiBtnDisabled(false);
	multipleQuiz_currentValue = null;
	
	// ox퀴즈 타입은 기회제공 없음.
	if(quizType == "OX"){
		multipleQuiz_cur_life = 0;
	}else{
		multipleQuiz_cur_life = multipleQuiz_life;
	}
	
	$("#multipleQuiz_question_oxImg").hide();
	$("#multipleQuiz_question_oxImg").css("background-position-x", "0px");
	$('#question_bogiText').hide();

	var queNumPosY = -(multipleQuiz_page-1)*150;
	$("#multipleQuiz_questionNum").css('background-position-y', queNumPosY);
	//$("#multipleQuiz_questionNum").html("Q"+multipleQuiz_page);
	

	$("#multipleQuiz_question").html(quizData[multipleQuiz_page-1].question);

	$("#multipleQuiz_answrText").mCustomScrollbar("scrollTo", 0);
	$("#multipleQuiz_answrText").html(quizData[multipleQuiz_page-1].explain);
	
	//var answerNumPosY = -(quizData[multipleQuiz_page-1].answer-1) * $("#multipleQuiz_answrImg").height();
	//$("#multipleQuiz_answrImg").css('background-position-y', answerNumPosY);
	$("#multipleQuiz_answrImg").html(quizData[multipleQuiz_page-1].answer);

	$("#multipleQuiz_questionNum").text("Q" + multipleQuiz_page);
	
	if(quizData[multipleQuiz_page-1].question.split("<br>").length == 1){
		$("#multipleQuiz_question").css("top", 154);
	}else if(quizData[multipleQuiz_page-1].question.split("<br>").length == 2){
		$("#multipleQuiz_question").css("top", 134);
	}else {
		$("#multipleQuiz_question").css("top", 114);
	}
	
	$("#multipleQuiz_question").css("left", 210);
	
	if(multipleQuiz_page == 1){
		//$("#multipleQuiz_question").css("left", 222);
		//$("#multipleQuiz_question_oxImg").css("left", 70);
	}else{
		//$("#multipleQuiz_question").css("left", 246);
		//$("#multipleQuiz_question_oxImg").css("left", 50);
	}

	if(quizData[multipleQuiz_page-1].fontSize){
		$("#multipleQuiz_question").css("font-size", quizData[multipleQuiz_page-1].fontSize);
		$("#multipleQuiz_question").css("line-height", quizData[multipleQuiz_page-1].line_height+"px");
	}else{
		$("#multipleQuiz_question").css("font-size", "38px");
		$("#multipleQuiz_question").css("line-height", "42px");
	}
	
	if(quizData[multipleQuiz_page-1].questionY){
		$("#multipleQuiz_question").css("top", quizData[multipleQuiz_page-1].questionY);
	}

	if(quizData[multipleQuiz_page-1].bogiStartY){
		$("#multipleQuiz_example").css("top", quizData[multipleQuiz_page-1].bogiStartY+"px");
	}else{
		$("#multipleQuiz_example").css("top", "230px");
	}
	

	// bogiText 추가함.
	if(quizData[multipleQuiz_page-1].bogiText){
		$("#multipleQuizCtn").append('<div id="question_bogiText"></div>');
		$('#question_bogiText').css('position', 'absolute');
		$('#question_bogiText').css('width', quizData[multipleQuiz_page-1].bogiTextW+'px');
		$('#question_bogiText').css('font-size', '20px');
		$('#question_bogiText').css('font-family', 'NotoSansKR-Medium');
		$('#question_bogiText').css('color', '#333333');
		//$('#question_bogiText').css('letter-spacing', '-1px');
		//$('#question_bogiText').css('margin-top', '10px');
		$('#question_bogiText').css('padding', '14px');
		//$('#question_bogiText').css('padding-right', '10px');
		$('#question_bogiText').css('line-height', '28px');
		$('#question_bogiText').css('background-color', '1px solid #eeeeee');
		$('#question_bogiText').css('border-radius', '12px');
		$('#question_bogiText').css('-moz-border-radius', '12px');
		$('#question_bogiText').css('-webkit-border-radius', '12px');

		$('#question_bogiText').html(quizData[multipleQuiz_page-1].bogiText);
		$('#question_bogiText').css('left', '224px');

		$('#question_bogiText').css('top', quizData[multipleQuiz_page-1].bogiTextPosY+'px');
		$('#question_bogiText').show();
	};


	/////// bogi make

	var prevY = 20;
	var txt_height = 20;

	for(var i=1; i<=multipleQuiz_btnNum; i++){
		var str = quizData[multipleQuiz_page-1]["example_"+i];

		$("#quizBogi_"+i).css('position', 'absolute');
		$("#quizBogi_"+i).css("cursor", "Pointer");
		$("#quizBogi_"+i).css("top", prevY);
		
		prevY += (txt_height*str.split("<br>").length) + quizData[multipleQuiz_page-1].bogiGap;

		var iconW = 50;
		var iconH = 50;

		var nodes=$("#quizBogi_"+i).children();

		nodes.each(function(){
			var nodeID = $(this).attr('id');
			switch(nodeID){
				case "bogiIcon":
					$(this).css("position", 'absolute');
					$(this).css("width", iconW);
					$(this).css("height", iconH);
					//$(this).css('background', 'url(../common/contents/images/quiz_select-bg.png) no-repeat 0px 0px');
					$(this).css("background-color", "#252525");
					$(this).css('font-size', '22px');
					$(this).css("font-family", "GmarketSansMedium");
					$(this).css("color", "#ffffff");
					$(this).css("text-align", "center");
					$(this).css("line-height", "50px");
					//$(this).css("padding", "0px 0");
					
					//$(this).css("text-indent", 6);
					$(this).css("border-radius", "25px");
					$(this).html(i);
					//$(this).css('border', '1px solid red');
					break;
				
				case "bogi_check":
					$(this).css("display", 'none');
					$(this).css("position", 'absolute');
					$(this).css("width", 36);
					$(this).css("height", 31);
					$(this).css('margin-left', '3px');
					$(this).css('margin-top', '-6px');
					$(this).css('background', 'url(../common/contents/images/quiz_select-check.png) no-repeat 0px 0px');
					break;
				
				case "txt":
					$(this).css('transform', 'scale('+0.95+','+1+')');
					$(this).css('transform-origin', '0 0');
					$(this).css('margin-left', '60px');
					$(this).css('margin-top', '12px');
					if(quizData[multipleQuiz_page-1].bogi_FontSize){
						$(this).css('font-size', quizData[multipleQuiz_page-1].bogi_FontSize);
						$(this).css('line-height', quizData[multipleQuiz_page-1].bogi_Line_height);
					}else{
						$(this).css('font-size', '28px');
						$(this).css('line-height', '30px');
					}
					
					$(this).css('font-family', 'SCDream4');
										
					$(this).css('color', multipleQuiz_TextColor);
					$(this).html(str);
					//$(this).css('border', '1px solid red');
					break;
			};
		});
		
		$("#quizBogi_"+i).attr("tabindex", 0);
		$("#quizBogi_"+i).focus(function() { focusObj = $(this); });
		$("#quizBogi_"+i).focusout(function() { focusObj = null; });
		
		$("#quizBogi_"+i).on('mouseover', function(e) {
			if(multipleQuizEventChk) return;
			//$(this).children('#bogiIcon').css("background-position-x", "-50px");
		});
		$("#quizBogi_"+i).on('mouseout', function(e) {
			if(multipleQuizEventChk) return;
			//$(this).children('#bogiIcon').css("background-position-x", "0px");
		});
	};
}


/////////////////////////////////////////  ox 퀴즈 타입   ///////////////////////////////////////////
function oxQuizInit(){
	var oxBtnHtml = 
		'<div id="quizBtn_O"> <div class="quizBtnBG"></div> <div class="quizBtnImg"></div> </div>'+
		'<div id="quizBtn_X"> <div class="quizBtnBG"></div> <div class="quizBtnImg"></div> </div>'
	$("#multipleQuiz_example").append(oxBtnHtml);
	
	
	$(".quizBtnImg").css("position", 'absolute');
	$(".quizBtnImg").css("left", 0);
	$(".quizBtnImg").css("top", 0);
	$(".quizBtnImg").css("width", 200);
	$(".quizBtnImg").css("height", 200);
	
	$(".quizBtnBG").css("position", 'absolute');
	$(".quizBtnBG").css("opacity", 0.5);
	$(".quizBtnBG").css("left", 0);
	$(".quizBtnBG").css("top", 0);
	$(".quizBtnBG").css("width", 200);
	$(".quizBtnBG").css("height", 200);
	$(".quizBtnBG").css("background-color", "rgba(247,157,112,0.2)");
	$(".quizBtnBG").css("border-radius", "50%");
	$(".quizBtnBG").css("-moz-border-radius", "50%");
	$(".quizBtnBG").css("-webkit-border-radius", "50%");
	
	$("#quizBtn_O").css('cursor', 'pointer');
	$("#quizBtn_O").css("position", 'absolute');
	$("#quizBtn_O").css("left", 258);
	$("#quizBtn_O").css("top", 30);
	$("#quizBtn_O").css("width", 200);
	$("#quizBtn_O").css("height", 200);	
	$("#quizBtn_O").children('.quizBtnImg').css('background', 'url(../common/contents/images/o-icon.png) no-repeat 0px 0px');
	
	$("#quizBtn_X").css('cursor', 'pointer');
	$("#quizBtn_X").css("position", 'absolute');
	$("#quizBtn_X").css("left", 538);
	$("#quizBtn_X").css("top", 30);
	$("#quizBtn_X").css("width", 200);
	$("#quizBtn_X").css("height", 200);
	$("#quizBtn_X").children('.quizBtnImg').css('background', 'url(../common/contents/images/x-icon.png) no-repeat 0px 0px');
	
	$("#quizBtn_O").attr("tabindex", 0);
	$("#quizBtn_O").focus(function() { focusObj = $(this); });
	$("#quizBtn_O").focusout(function() { focusObj = null; });

	$("#quizBtn_X").attr("tabindex", 0);
	$("#quizBtn_X").focus(function() { focusObj = $(this); });
	$("#quizBtn_X").focusout(function() { focusObj = null; });

	$("#quizBtn_O").click(function() {
		oxQuizAnswerCheck("O");
	});

	$("#quizBtn_X").click(function() {
		oxQuizAnswerCheck("X");
	});
	
	
	$("#multipleQuiz_nextBtn").click(function() {
		effectCall('../common/mp3/click.mp3');
		
		$("#multipleQuiz_answrText").html("");
		$("#multipleQuiz_answrText").scrollTop();
		multiple_explanation_Tl.pause(0);
		$(this).hide();

		if(multipleQuiz_checkMode){
			$("#multipleQuiz_checkBtn").show();
		}
		
		$("#quizBtn_O").prop('disabled', false);
		$("#quizBtn_O").css('pointer-events', 'auto');
		$("#quizBtn_O").attr("tabindex", 0);
		$("#quizBtn_O").children('.quizBtnImg').css("background-position-x", "0px");

		$("#quizBtn_X").prop('disabled', false);
		$("#quizBtn_X").css('pointer-events', 'auto');
		$("#quizBtn_X").attr("tabindex", 0);
		$("#quizBtn_X").children('.quizBtnImg').css("background-position-x", "0px");

		multipleQuiz_page++;
		make_Question();
	});
	
	$("#multipleQuiz_resultBtn").click(function() {
		effectCall('../common/mp3/click.mp3');
		var totalNum = 0;
		for(var i=1; i<=multipleQuiz_resultArr.length; i++){
			if(multipleQuiz_resultArr[i-1] == "O"){
				$("#multipleQuiz_result_ox_"+i).css('background-position-x', '0px');
				totalNum++;
			}else{
				$("#multipleQuiz_result_ox_"+i).css('background-position-x', '-100px');
			}
		}
		
		$("#multipleQuiz_resultNum").html("<span class='quiz-score-impact2'>"+totalNum+"</span>");
		
		$("#multipleQuiz_resultPop").show();
		pageCompCheck = true;
		playerEnd();

		// Completely remove next page tooltip
		$("#nextBtn").removeAttr('title');  // Remove title attribute
		$("#nextBtn").children(".triangleBottom").hide();  // Hide tooltip triangle
		$("#nextBtn").children(".toolTipText").hide();  // Hide tooltip text
		$("#nextBtn").off('mouseover mouseout');  // Remove tooltip events
		
		// Remove prev button tooltip but keep it enabled
		$("#prevBtn").removeAttr('title');
		$("#prevBtn").children(".triangleBottom").hide();
		$("#prevBtn").children(".toolTipText").hide();
		$("#prevBtn").off('mouseover mouseout');
		$("#prevBtn").css('pointer-events', 'auto');
		$("#prevBtn").css('opacity', '1');
		$("#prevBtn").css('cursor', 'pointer');

		// Show nextPop image only after showing result
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
			window.location.href = '003.htm';
		});
		
		// Enable next button click
		$("#nextBtn").css('pointer-events', 'auto');
		$("#nextBtn").css('cursor', 'pointer');
		
		// Add click event for next button
		$("#nextBtn").off('click').on('click', function() {
			window.location.href = '003.htm';
		});
	});
	
	$("#multipleQuiz_restartBtn").click(function() {
		effectCall('../common/mp3/click.mp3');
		
		$("#quizBtn_O").prop('disabled', false);
		$("#quizBtn_O").css('pointer-events', 'auto');
		$("#quizBtn_O").attr("tabindex", 0);
		$("#quizBtn_O").children('.quizBtnImg').css("background-position-x", "0px");

		$("#quizBtn_X").prop('disabled', false);
		$("#quizBtn_X").css('pointer-events', 'auto');
		$("#quizBtn_X").attr("tabindex", 0);
		$("#quizBtn_X").children('.quizBtnImg').css("background-position-x", "0px");
		
		if(multipleQuiz_checkMode){
			$("#multipleQuiz_checkBtn").show();
		}

		$("#multipleQuiz_nextBtn").hide();
		$("#multipleQuiz_resultBtn").hide();
		multipleQuiz_resultArr = [];
		multipleQuiz_page = 1;
		make_Question();
		$("#multipleQuiz_resultPop").hide();
		multiple_explanation_Tl.pause(0);

		pageCompCheck = false;
		$("#nextPop").hide();
	});

	if(!mobileCheck){
		$("#quizBtn_O").on('mouseover', function(e) {
			$(this).children('.quizBtnBG').css("opacity", 1);
		});
		$("#quizBtn_O").on('mouseout', function(e) {
			$(this).children('.quizBtnBG').css("opacity", 0.5);
		});

		$("#quizBtn_X").on('mouseover', function(e) {
			$(this).children('.quizBtnBG').css("opacity", 1);
		});
		$("#quizBtn_X").on('mouseout', function(e) {
			$(this).children('.quizBtnBG').css("opacity", 0.5);
		});
	}
}

function oxQuizAnswerCheck(param){
	//console.log("answer :"+quizData[multipleQuiz_page-1].answer);
	$("#quizBtn_O").blur();
	$("#quizBtn_X").blur();

	if(quizData[multipleQuiz_page-1].answer == param){
		multipleQuiz_resultArr[multipleQuiz_page-1] = "O";
		$("#multipleQuiz_question_oxImg").css("background-position-x", "0px");
		if(multipleQuiz_page == quizData.length){
			$("#multipleQuiz_answerPop_txt2").html("결과를 확인해보세요");
		}else{
			$("#multipleQuiz_answerPop_txt2").html("다음 문제를 풀어보세요");
		}
		multiple_answer_Tl.restart();
		effectCall('../common/mp3/o.mp3');
	}else{
		multipleQuiz_resultArr[multipleQuiz_page-1] = "X";
		$("#multipleQuiz_question_oxImg").css("background-position-x", "-180px");
		if(multipleQuiz_page == quizData.length){
			$("#multipleQuiz_wrongPop_txt2").html("결과를 확인해보세요");
		}else{
			$("#multipleQuiz_wrongPop_txt2").html("다음 문제를 풀어보세요");
		}
		multiple_wrong_Tl.restart();
		effectCall('../common/mp3/x.mp3');
	}
	$("#multipleQuiz_question_oxImg").show();
	
	$("#quizBtn_"+quizData[multipleQuiz_page-1].answer).children('.quizBtnImg').css("background-position-x", "-200px");

	$("#quizBtn_O").prop('disabled', true);
	$("#quizBtn_O").css('pointer-events', 'none');
	$("#quizBtn_O").attr("tabindex", -1);
	
	$("#quizBtn_X").prop('disabled', true);
	$("#quizBtn_X").css('pointer-events', 'none');
	$("#quizBtn_X").attr("tabindex", -1);


	if(multipleQuiz_page == quizData.length){
		$("#multipleQuiz_resultBtn").show();
	}else{
		$("#multipleQuiz_nextBtn").show();
	};
}


function multipleQuiz_BogiBtnDisabled(param){
	multipleQuizEventChk = param;
	for(var i=1; i<=multipleQuiz_btnNum; i++){
		if(param){
			$("#quizBogi_"+i).prop('disabled', true);
			$("#quizBogi_"+i).css('pointer-events', 'none');
			$("#quizBogi_"+i).attr("tabindex", -1);
		}else{
			$("#quizBogi_"+i).prop('disabled', false);
			$("#quizBogi_"+i).css('pointer-events', 'auto');
			$("#quizBogi_"+i).attr("tabindex", 0);
		}	
	}
}

function multipleQuiz_resetTextColor(){
	for(var i=1; i<=multipleQuiz_btnNum; i++){
		var nodes=$("#quizBogi_"+i).children();

		nodes.each(function(){
			var nodeID = $(this).attr('id');
			switch(nodeID){
				case "bogiIcon":
					//$(this).css("background-color", multipleQuiz_TextColor);
					$(this).css("background-position-y", "0px");
					break;
				
				case "bogi_check":
					$(this).css("display", "none");
					break;
				
				case "txt":
					$(this).css('color', multipleQuiz_TextColor);
					
					$(this).removeClass('check');
					break;
			};
		});
	}
}

function multipleQuiz_answerTextColor(){		
	multipleQuiz_resetTextColor();
	
	//var answerNode;
	//var wrongNode;
	
		
	if(multipleQuiz_currentValue == quizData[multipleQuiz_page-1].answer){
		var nodes=$("#quizBogi_"+multipleQuiz_currentValue).children();
		
		nodes.each(function(){
			var nodeID = $(this).attr('id');
			switch(nodeID){
				case "bogiIcon":
					$(this).css("background-position-y", "-68px");
					//$(this).css('background-color', multipleQuiz_answerColor);
					break;
				
				case "txt":
					$(this).css('color', multipleQuiz_answerColor);
					break;			
			};
		});

	}else{
		
		var answerNode=$("#quizBogi_"+quizData[multipleQuiz_page-1].answer).children();

		answerNode.each(function(){
			var nodeID = $(this).attr('id');
			switch(nodeID){
				case "bogiIcon":
					$(this).css("background-position-y", "-68px");
					//$(this).css('background-color', multipleQuiz_answerColor);
					break;
				
				case "txt":
					$(this).css('color', multipleQuiz_answerColor);
					break;			
			};
		});

		
		var wrongNode=$("#quizBogi_"+multipleQuiz_currentValue).children();
		
		wrongNode.each(function(){
			var nodeID = $(this).attr('id');
			switch(nodeID){
				case "bogiIcon":
					$(this).css("background-position-y", "-34px");
					//$(this).css('background-color', multipleQuiz_answerColor);
					break;
				
				case "txt":
					$(this).css('color', multipleQuiz_wrongColor);
					break;			
			};
		});
		
	}
	

	/*
	var nodes=$("#quizBogi_"+index).children();
	
	nodes.each(function(){
		var nodeID = $(this).attr('id');
		switch(nodeID){
			case "bogiIcon":
				$(this).css("background-position-x", "-100px");
				break;
			
			case "txt":
				$(this).css('color', multipleQuiz_answerColor);
				break;			
		};
	});
	*/
}


function multipleQuiz_bogiClickEvent(index){
	if(multipleQuizEventChk) return;

	multipleQuiz_currentValue = index;	
	
	
	if(multipleQuiz_checkMode){
		multipleQuiz_resetTextColor();
		var nodes=$("#quizBogi_"+index).children();	
		nodes.each(function(){
			var nodeID = $(this).attr('id');
			switch(nodeID){
				case "bogiIcon":
					//$(this).css("background-color", multipleQuiz_SelectColor);
					$(this).css("background-position-y", "-34px");
					break;
				
				case "bogi_check":
					$(this).css("display", "block");
					break;

				case "txt":
					$(this).css('color', multipleQuiz_SelectColor);
					$(this).addClass('check');
					break;			
			};
		});	
	}else{
		// 확인버튼 없을때 강제 클릭
		$("#multipleQuiz_checkBtn").click();
	}
}

function multipleQuizMotionStart(){
	multipleQuizMotionChk = true;
	
	var questionNum = document.getElementById("multipleQuiz_questionNum"),
		question_guide = document.getElementById("multipleQuiz_question_guide"),
		question = document.getElementById("multipleQuiz_question"),
		question_bogiText = document.getElementById("question_bogiText"),
		checkBtn = document.getElementById("multipleQuiz_checkBtn"),

		example = document.getElementById("multipleQuiz_example"),
		cover = document.getElementById("quiz_cover")
				
	
	if(multipleQuiz_checkMode){
		multipleQuiz_Tl.fromTo([questionNum, question_guide], 0.5, {opacity:0, y:20}, {
			display: "block",
			opacity: 1,
			y:0,
			ease: "elastic.out(1, 0.7)",
		}, 0.1)

		.fromTo([question, question_bogiText], 0.5, {opacity:0, x:-20}, {
			display: "block",
			opacity: 1,
			x:0,
			ease: "elastic.out(1, 0.7)",
		}, 0.3)
		
		.fromTo([example, checkBtn], 0.5, {opacity:0, x:30}, {
			display: "block",
			opacity: 1,
			x:0,
			ease: "elastic.out(1, 0.7)",
			onComplete: function () {
				multipleQuizMotionChk = false;
			}
		}, 0.5)		
	}else{
		multipleQuiz_Tl.fromTo([questionNum, question_guide], 0.5, {opacity:0, y:20}, {
			display: "block",
			opacity: 1,
			y:0,
			ease: "elastic.out(1, 0.7)",
		}, 0.1)

		.fromTo([question, question_bogiText], 0.5, {opacity:0, x:-20}, {
			display: "block",
			opacity: 1,
			x:0,
			ease: "elastic.out(1, 0.7)",
		}, 0.3)
		
		.fromTo(example, 0.5, {opacity:0, x:30}, {
			display: "block",
			opacity: 1,
			x:0,
			ease: "elastic.out(1, 0.7)",
			onComplete: function () {
				multipleQuizMotionChk = false;
			}
		}, 0.5)
	}
	
	multipleQuiz_Tl.play();
}

function showResult() {
    // Show result popup
    $("#multipleQuiz_resultPop").show();
    
    // Show nextPop image only after showing result
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
        window.location.href = '003.htm';
    });
    
    // Enable next button click
    $("#nextBtn").css('pointer-events', 'auto');
    $("#nextBtn").css('cursor', 'pointer');
    
    // Add click event for next button
    $("#nextBtn").off('click').on('click', function() {
        window.location.href = '003.htm';
    });
}
