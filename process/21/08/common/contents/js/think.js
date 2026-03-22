var think_str = "의견을 입력하세요.";
var thinkCookieData;
var thinkComp;
var think_dt = 1.5;
var thinkMotionChk = false;
var think_title_Tl = gsap.timeline({
});

var think_wrongPop_Tl = gsap.timeline({
	paused: true
});

var think_opinion_wrongPop_Tl = gsap.timeline({
	paused: true
});

var think_resultPop_Tl = gsap.timeline({
	paused: true
});

window.onload = function () {
	pageCompCheck = false;
	thinkComp = false;
	thinkInit();
	
	//$("#chasi_titleBG").hide();
	//$("#chasi_titleText").hide();

	$("#video").on('timeupdate', function() {
		var time = $(this)[0].currentTime;
		if(time > 1.5){
			if(!thinkMotionChk){
				thinkMotionStart();
			}
		}else{
			if(thinkCookieData){
				//$("#think_saveBtn").css('left', 100);
				//$("#think_teacherBtn").css('left', 274);
			}else{
				//$("#think_saveBtn").css('left', $("#think_saveBtn").attr('orgX')+"px");
				//$("#think_teacherBtn").css('left', $("#think_teacherBtn").attr('orgX')+"px");
			}
			

			thinkMotionChk = false;
			think_title_Tl.pause(0);
			think_wrongPop_Tl.pause(0);
			think_opinion_wrongPop_Tl.pause(0);
			think_resultPop_Tl.pause(0);
		}		
	});
	
	think_wrongPop_Tl.fromTo($("#think_wrongPop"), 0.5, {display: "none", opacity:0}, {
		display: "block",
		opacity:1
	})
	.to($("#think_wrongPop"), 0.5, {
		display: "none",
		opacity:0
	}, 1.5)

	
	think_opinion_wrongPop_Tl.fromTo($("#think_opinion_wrongPop"), 0.5, {display: "none", opacity:0}, {
		display: "block",
		opacity:1
	})
	.to($("#think_opinion_wrongPop"), 0.5, {
		display: "none",
		opacity:0
	}, 1.5)


	think_resultPop_Tl.fromTo($("#think_resultPop"), 0.5, {display: "none", opacity:0}, {
		display: "block",
		opacity:1
	})
	.to($("#think_resultPop"), 0.5, {
		display: "none",
		opacity:0,
		onComplete: function () {
			//$("#think_saveBtn").css('left', 100);
			//$("#think_teacherBtn").css('left', 274);
			//$("#think_opinionBtn").show();
		}
	}, 1.5)
};

function think_saveData(txt){
	// 쿠키저장
	setCookie(lectureCode+"_"+chasi+"_"+itostr(page)+"_thinkCookieData", JSON.stringify(txt), 30);
}

function think_loadData(){
	// 쿠키로드
	thinkCookieData = JSON.parse(getCookie(lectureCode+"_"+chasi+"_"+itostr(page)+"_thinkCookieData"));
}

function thinkInit(){
	var think_focusArr = ["think_saveBtn", "think_teacherBtn", "think_opinionBtn"];
	for(var i=1; i<=think_focusArr.length; i++){
		$("#"+think_focusArr[i-1]).attr("tabindex", 0);
		$("#"+think_focusArr[i-1]).focus(function() { focusObj = $(this); });
		$("#"+think_focusArr[i-1]).focusout(function() { focusObj = null; });
	}

	think_loadData();
	
	$("#think_saveBtn").css('left', 520);
	$("#think_saveBtn").attr('orgX', 520);
	
	$("#think_opinionBtn").css('left', 710);
	$("#think_opinionBtn").attr('orgX', 710);

	$("#think_teacherBtn").css('left', 940);
	$("#think_teacherBtn").attr('orgX', 940);
	
	

	var question = think_question;
	

	$("#fullScreenBtn").css("opacity", "0.5");
	$("#fullScreenBtn").prop('disabled', true);
	// $("#fullScreenBtn").css('pointer-events', 'none');
	$("#fullScreenBtn").attr("tabindex", -1);	
	
	//$("#think_question").html("Q");
	//$("#think_queBG").html("Think About");
	
	$("#think_resultPop_txt1").html("저장완료");
	$("#think_resultPop_txt2").html("동료들의 의견도 <br>확인해 보세요.");
	
	$("#think_wrongPop_txt1").html("의견을 <br>입력해주세요.");
	$("#think_wrongPop_txt2").html("10자 이상 입력");
	
	//$("#think_opinion_wrongPop_txt1").html("자신의 생각을<br><font color='#fcff00'>입력한 후</font><br><font color='#fcff00'>전문가 의견</font>을<br>볼 수 있습니다.");
	$("#think_opinion_wrongPop_txt1").html("자신의 생각을<br>입력한 후<br>전문가 의견을<br>볼 수 있습니다.");
	$("#think_opinion_wrongPop_txt2").html("");

	var think_question;
	var thinkFontSize;
	var thinkFontlineH;
	var thinkPosY;

	for(var i=1; i<=thinkDataArr.length; i++){
		if(thinkDataArr[i-1].page == parseFloat(page)){
			think_question = thinkDataArr[i-1].str;
			thinkFontSize = thinkDataArr[i-1].fontSize;
			thinkFontlineH = thinkDataArr[i-1].fontlineH;
			thinkPosY = thinkDataArr[i-1].posY;
		};
	};

	if(thinkFontSize) $("#think_queText").css("font-size", thinkFontSize+"px");
	if(thinkFontlineH) $("#think_queText").css("line-height", thinkFontlineH+"px");
	if(thinkPosY) $("#think_queText").css("top", thinkPosY);
	$("#think_queText").html(think_question);

	
	//alert(thinkCookieData);
	if(thinkCookieData){
		//$("#think_saveBtn").css('left', 100);
		//$("#think_teacherBtn").css('left', 274);
		$("#thinkTextArea").val(thinkCookieData);
		thinkComp = true;
	}else{
		$("#thinkTextArea").val(think_str);
	}
	
	$("#thinkTextArea").keyup(function () {
		/*
		var str = $("#thinkTextArea").val();

		var str_arr = str.split("\n");  // 줄바꿈 기준으로 나눔 

		var row = str_arr.length;  // row = 줄 수 

		if(row >16){
			//마지막 입력문자 삭제
			var lastChar = str.slice(0,-1); //열 
			$("#thinkTextArea").val(lastChar);
			alert("더이상 입력할 수 없습니다.")
		}
		*/
	});
	
	$("#thinkTextArea").focus(function(){
		TextFocusCheck = true;
		//console.log('포커스를 얻었습니다.');
		if($("#thinkTextArea").val() == think_str){
			$("#thinkTextArea").val("");
		}
	});
	$("#thinkTextArea").blur(function(){
		TextFocusCheck = false;
		if($("#thinkTextArea").val() == ""){
			$("#thinkTextArea").val(think_str);
		}else{
			thinkComp = true;
			think_saveData($("#thinkTextArea").val());
		}
		//console.log('포커스를 벗어났습니다. .');
	});
	
	//$("#think_saveBtn").html("저장 하기");

	$("#think_saveBtn").mouseover(function() {
		$(this).css("background-position-y", "-50px");
	});
	
	$("#think_saveBtn").mouseout(function() {
		$(this).css("background-position-y", "0px");
	});

	$("#think_saveBtn").click(function(e) {
		
		/* 서버저장 
		if($("#thinkTextArea").val() == str || $("#thinkTextArea").val() == ""){
			effectCall('../common/mp3/warning.mp3');
			gsap.set(think_wrongPop, {display:"block"});
			gsap.to(think_wrongPop, think_dt, {display:"none"});
		}else{
			thinkComp = true;
			gsap.set(think_resultPop, {display:"block"});
			gsap.to(think_resultPop, think_dt, {display:"none"});
			effectCall('../common/mp3/ending.mp3');
			pageCompCheck = true;
			pageCompFunc();
			
			// common 함수 호출
			thinkSaveFunc($("#thinkTextArea").val());
		}
		*/
				
		var inputStr = $("#thinkTextArea").val().replace(/ /g, '').replace(/\n/g, ''); //모든 공백 줄바꿈 제거

		if(inputStr.length < 10 || $("#thinkTextArea").val() == think_str){
			effectCall('../common/mp3/warning.mp3');
			think_wrongPop_Tl.restart();
			think_saveData(false);
			return;
		}

		//쿠키저장 
		if(pageCompCheck) effectCall('../common/mp3/ending.mp3');
		thinkComp = true;
		think_saveData($("#thinkTextArea").val());
		think_resultPop_Tl.restart();
		
		pageCompCheck = true;
		pageCompFunc();
		
		if(lmsMode){
			var str = $("#thinkTextArea").val();
			thinkSaveFunc(str);
		}
	});
	
	
	//$("#think_opinionBtn").html("전문가 의견 보기");
		
	$("#think_opinionBtn").mouseover(function() {
		$(this).css("background-position-y", "-50px");
	});
	
	$("#think_opinionBtn").mouseout(function() {
		$(this).css("background-position-y", "0px");
	});

	$("#think_opinionBtn").click(function(e) {
		
		if(thinkComp && $("#thinkTextArea").val() != think_str){
			
			var inputStr = $("#thinkTextArea").val().replace(/ /g, '').replace(/\n/g, ''); //모든 공백 줄바꿈 제거

			if(inputStr.length < 10 || $("#thinkTextArea").val() == think_str){
				effectCall('../common/mp3/warning.mp3');
				think_wrongPop_Tl.restart();
				think_saveData(false);
				return;
			}
			
			if(!pageCompCheck){
				thinkComp = true;
				think_saveData($("#thinkTextArea").val());
				//think_resultPop_Tl.restart();

				pageCompCheck = true;
				pageCompFunc();
				
				if(lmsMode){
					var str = $("#thinkTextArea").val();
					thinkSaveFunc(str);
				}
			}

			$("#think_opinion_popup").show();
			next_balloon_Tl.pause(0);

			/*
			$("#popupVideoSyncText").html("");
			think_popVideoStart();
			if(!pageCompCheck){
				pageCompCheck = true;
				pageCompFunc();
			}
			*/
		}else{
			effectCall('../common/mp3/warning.mp3');
			think_opinion_wrongPop_Tl.restart();
		}

		

		/*  // 전문가 의견이 영상일 경우.
		if(thinkComp && $("#thinkTextArea").val() != str){
			$("#popupVideoSyncText").html("");
			if(!pageCompCheck){
				pageCompCheck = true;
				pageCompFunc();
			}
			think_popVideoStart();
		}else{
			effectCall('../common/mp3/warning.mp3');
		}
		*/
	});	
	
	

	//$("#think_teacherBtn").html("동료 교사 의견 보기");
	
	$("#think_teacherBtn").mouseover(function() {
		$(this).css("background-position-y", "-50px");
	});
	
	$("#think_teacherBtn").mouseout(function() {
		$(this).css("background-position-y", "0px");
	});

	$("#think_teacherBtn").click(function(e) {
		// common 함수 호출
		thinkPopUp();
	});
	
	$("#think_opinion_popup_img").attr("src", "img/think.png");

	$("#think_opinion_popup_contents").mCustomScrollbar({theme:"dark-3"});
		
	$("#think_opinion_popup_closeBtn").click(function() {
		$("#think_opinion_popup").hide();
		next_balloon_Tl.restart();
	});

	$("#think_opinion_popup_closeBtn").mouseover(function(e) {
		$(this).css("background-position-y", "-30px");
		gsap.to($(this), 0.5, {
			rotation: 180
		}, 0.3)
	});
	$("#think_opinion_popup_closeBtn").mouseout(function(e) {
		$(this).css("background-position-y", "0px");
		gsap.to($(this), 0.5, {
			rotation: 0
		}, 0.3)
	});

}

function thinkMotionStart(){
	thinkMotionChk = true;
	
	var queText = document.getElementById("think_queText"),
		question = document.getElementById("think_question"),
		queBG = document.getElementById("think_queBG"),
		TextArea = document.getElementById("thinkTextArea"),
		TextBox = document.getElementById("thinkTextBox"),
		saveBtn = document.getElementById("think_saveBtn"),
		teacherBtn = document.getElementById("think_teacherBtn");
		opinionBtn = document.getElementById("think_opinionBtn");
	

	/*
	if(thinkCookieData){
		think_title_Tl.to([opinionBtn], 0, {
			display: "none",
		})

		.fromTo([queText, queBG, question, TextArea, TextBox], 0.5, {opacity:0, y:20}, {
			display: "block",
			opacity: 1,
			y:0,
			ease: "elastic.out(1, 0.7)",
		}, 0.5)

		.fromTo([saveBtn, teacherBtn, opinionBtn], 0.5, {scale:0.5, opacity:0}, {
			display: "block",
			opacity: 1,
			scale:1,
			ease: "elastic.out(1, 0.7)",
			onComplete: function () {
				pageCompCheck = true;
				pageCompFunc();
			}
		}, 1)
	}else{
		think_title_Tl.to([opinionBtn], 0, {
			display: "none",
		})

		.fromTo([queText, queBG, question, TextArea, TextBox], 0.5, {opacity:0, y:20}, {
			display: "block",
			opacity: 1,
			y:0,
			ease: "elastic.out(1, 0.7)",
		}, 0.5)

		.fromTo([saveBtn, teacherBtn], 0.5, {scale:0.5, opacity:0}, {
			display: "block",
			opacity: 1,
			scale:1,
			ease: "elastic.out(1, 0.7)",
		}, 1)
	}
	*/
	
	think_title_Tl.fromTo([queText, question, TextArea, TextBox], 0.5, {opacity:0, y:20}, {
		display: "block",
		opacity: 1,
		y:0,
		ease: "elastic.out(1, 0.7)",
	}, 0.1)

	.fromTo([saveBtn, teacherBtn, opinionBtn], 0.5, {scale:0.5, opacity:0}, {
		display: "block",
		opacity: 1,
		scale:1,
		ease: "elastic.out(1, 0.7)",
	}, 0.6)
		
	think_title_Tl.play();

}

function think_popVideoStart(){
	var url = vodpath+"/"+itostr(chasi)+"/"+chapterNames[page-1].popVod+".mp4";
	popupVideoStart(url, "전문가 의견");
}