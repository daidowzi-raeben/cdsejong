function diagnosisInit(){

	var diagnosisStr = [
		"영유아를 위한 ESG에서 환경(Environmental), <br>사회(Social), 거버넌스 (Governance) 의미를 알고 <br>설명할 수 있다.",
		"ESD 2030과 지속가능발전교육목표(SDGs)에 대해 알고 <br>설명할 수 있다.",
		"영유아교육기관에서 탄소중립을 실천해 볼 수 있는 <br>놀이에 대해 설명할 수 있다.",
		"플로깅의 유래와 실천사례에 대해 알고 설명할 수 있다.",
		"에너지 종류와 친환경 에너지에 대해 알고 설명할 수 있다.",
		"영유아 교육을 위한 기후변화의 원인과 영향에 대해 <br>알고 설명할 수 있다.",
		"영유아 교육에서 약속과 규칙의 필요성 및 민주적 의사 <br>결정의 중요성에 알고 설명할 수 있다.",
		"ESD를 기반으로 한 영유아를 위한 화폐와 시장경제 활동 <br>계획을 알고 설명할 수 있다.",
		"세계 여러 나라의 영유아 ESG 활동 동향을 알고 설명할 수 <br>있다.",
		"ESG와 ESD를 연계한 영유아 실천 교육계획에 필요한 <br>교사의 역할을 알고 설명할 수 있다."
		]
	
	///////////////////////////////////////////////////////////////////////////////
	
	

	var diagnosisHtml = 
		'<div id="diagnosisCtn">'+
			'<div id="diagnosis_checkPop">'+
			'	<div id="diagnosis_checkPop_bg"></div>'+
			'	<div id="diagnosis_checkPopCtn"> <div id="diagnosis_checkCtn"></div> </div>'+
			'	<div id="diagnosis_resultBtn"></div>'+
			'</div>'+
			'<div id="diagnosisStartPop">'+
			'	<div id="diagnosis_bg"></div>'+
			'	<div id="diagnosis_startBtn"></div>'+
			'</div>'+
			'<div id="diagnosis_resultPop">'+
			'	<div id="diagnosis_resultPop_bg"></div>'+
			'	<div id="diagnosis_resultPop_text"></div>'+
			'	<div id="diagnosis_resultPop_box_1"></div>'+
			'	<div id="diagnosis_resultPop_box_2"></div>'+
			'	<div id="diagnosis_resultPop_box_3"></div>'+
			'	<div id="diagnosis_resultPop_btn_1"></div>'+
			'	<div id="diagnosis_resultPop_btn_2"></div>'+
			'	<div id="diagnosis_resultPop_btn_3"></div>'+
			'	<div id="diagnosis_resultPop_reBtn"></div>'+
			'</div>'+
			'<div id="diagnosis_closeBtn"></div>'+
			'<div id="diagnosis_compPop"></div>'+
			'<div id="diagnosis_rePop"></div>'+
		'</div>';
	
	$("#contentsCtn").append(diagnosisHtml);
	
	setTimeout(function() {
		diagnosisEvent(diagnosisStr);
	}, 500);

	$(".topMenu").hide();
	
}

function diagnosisEvent(diagnosisStr){
	$("#popupVideo_closeBG").hide();
	$("#popupVideo_closeBtn").hide();
	$("#loadingPop").hide();
	
	$("#diagnosis_compPop").hide();
	$("#diagnosis_compPop").css('position', 'absolute');
	$("#diagnosis_compPop").css({left: 0, top: 0, width:1280, height:770});
	$("#diagnosis_compPop").css('background', 'url(../img/diagnosisPop/compPop.png) no-repeat 0px 0px');
	
	$("#diagnosis_rePop").hide();
	$("#diagnosis_rePop").css('position', 'absolute');
	$("#diagnosis_rePop").css({left: 0, top: 0, width:1280, height:770});
	$("#diagnosis_rePop").css('background', 'url(../img/diagnosisPop/rePop.png) no-repeat 0px 0px');
	
	
	$("#diagnosisStartPop").css('position', 'absolute');
	$("#diagnosisStartPop").css({left: 0, top: 0, width:1280, height:770});

	$("#diagnosis_bg").css('position', 'absolute');
	$("#diagnosis_bg").css({left: 0, top: 0, width:1280, height:770});
	$("#diagnosis_bg").css('background', 'url(../img/diagnosisPop/bg.png) no-repeat 0px 0px');
	//$("#diagnosis_bg").css('border', "1px solid red");

	$("#diagnosis_closeBtn").css('cursor', 'pointer');
	$("#diagnosis_closeBtn").css('position', 'absolute');
	$("#diagnosis_closeBtn").css({left: 1220, top: 16, width:40, height:40});
	$("#diagnosis_closeBtn").css('background', 'url(../img/diagnosisPop/closeBtn.png) no-repeat 0px 0px');

	$("#diagnosis_closeBtn").mouseover(function(e) {		
		$(this).css("background-position-y", "-40px");
		gsap.to($(this), 0.5, {
			rotation: 180
		}, 0.3)
	});
	$("#diagnosis_closeBtn").mouseout(function(e) {
		$(this).css("background-position-y", "0px");
		gsap.to($(this), 0.5, {
			rotation: 0
		}, 0.3)
	});
	
	$("#diagnosis_closeBtn").click(function() {
		$("#diagnosisCtn").hide();
		
		$(".topMenu").show();
		startVideo(vodpath+"/"+itostr(chasi)+"/"+chapterNames[page-1].vod+".mp4");
		$("#videoCtn").show();
	});


	$("#diagnosis_startBtn").css('cursor', 'pointer');
	$("#diagnosis_startBtn").css('position', 'absolute');
	$("#diagnosis_startBtn").css({left: 477, top: 496, width:330, height:70});
	$("#diagnosis_startBtn").css('background', 'url(../img/diagnosisPop/startBtn.png) no-repeat 0px 0px');
	
	$("#diagnosis_startBtn").mouseover(function(e) {		
		$(this).css("background-position-y", "-70px");
	});
	$("#diagnosis_startBtn").mouseout(function(e) {
		$(this).css("background-position-y", "0px");
	});
	
	var startPop_Tl = gsap.timeline({
		paused: true
	});
	
	startPop_Tl.fromTo($("#diagnosisStartPop"), 0.5, {opacity: 1}, {
		opacity: 0,
		onComplete: function () {				
			$("#diagnosisStartPop").hide();
		}
	});

	$("#diagnosis_startBtn").click(function() {
		$(this).attr("disabled", true);
		startPop_Tl.restart();
		$("#diagnosis_checkPop").show();
		effectCall('../common/mp3/click.mp3');
	});

	
	$("#diagnosis_checkPop_bg").css('position', 'absolute');
	$("#diagnosis_checkPop_bg").css({left: 0, top: 0, width:1280, height:770});
	$("#diagnosis_checkPop_bg").css('background', 'url(../img/diagnosisPop/checkPop_bg.png) no-repeat 0px 0px');
	
	
	$("#diagnosis_checkPopCtn").css('position', 'absolute');
	$("#diagnosis_checkPopCtn").css({left: 50, top: 200, width:1190, height:426});
	//$("#diagnosis_checkPopCtn").css('border', "1px solid red");
	//$("#diagnosis_checkPopCtn").css('overflow-y', "auto");
		
	//$("#diagnosis_checkCtn").css('position', 'absolute');
	//$("#diagnosis_checkCtn").css({left: 27, top: 199, width:1250, height:490});
	//$("#diagnosis_checkCtn").css('scroll-behavior', "smooth");
	//$("#diagnosis_checkCtn").css('overflow-y', "auto");
	
	//$("#diagnosis_checkCtn").css('border', "1px solid red");

	var prevY = 0;
	
	var checkBtnPosX = [552, 684, 820, 956, 1092];
	var checkArr = [];

	for(var i=1; i<=diagnosisStr.length; i++){
		checkArr[i-1] = null;
		var htmlStr = 
			'<div id="diagnosisGrup_'+i+'">'+
				'<div id="diagnosisText"></div>'+
				'<div id="diagnosisCheckBtn_1"><div id="circle"></div></div>'+
				'<div id="diagnosisCheckBtn_2"><div id="circle"></div></div>'+
				'<div id="diagnosisCheckBtn_3"><div id="circle"></div></div>'+
				'<div id="diagnosisCheckBtn_4"><div id="circle"></div></div>'+
				'<div id="diagnosisCheckBtn_5"><div id="circle"></div></div>'+
				'<div id="diagnosis_underline"></div>'+
			'</div>';

		$("#diagnosis_checkCtn").append(htmlStr);
		
		$("#diagnosisGrup_"+i).attr('value', i);
		$("#diagnosisGrup_"+i).css('position', 'absolute');
		$("#diagnosisGrup_"+i).css('left', "2px");
		$("#diagnosisGrup_"+i).css('top', prevY+"px");
		
		$("#diagnosisGrup_"+i).children("#diagnosisText").css('position', 'absolute');
		$("#diagnosisGrup_"+i).children("#diagnosisText").css('width', '510px');
		$("#diagnosisGrup_"+i).children("#diagnosisText").css('height', 'auto');

		//$("#diagnosisGrup_"+i).children("#diagnosisText").css('border', "1px solid red");
		
		$("#diagnosisGrup_"+i).children("#diagnosisText").css('font-family', 'SCDream5');
		$("#diagnosisGrup_"+i).children("#diagnosisText").css('font-size', '20px');
		$("#diagnosisGrup_"+i).children("#diagnosisText").css('color', '#ffffff');
		$("#diagnosisGrup_"+i).children("#diagnosisText").css('filter', 'drop-shadow(1px 1px 1px rgba(0,0,0,0.2))');
		$("#diagnosisGrup_"+i).children("#diagnosisText").html(diagnosisStr[i-1]);
		
		var textH = $("#diagnosisGrup_"+i).children("#diagnosisText").height();

		$("#diagnosisGrup_"+i).children("#diagnosis_underline").css('position', 'absolute');
		$("#diagnosisGrup_"+i).children("#diagnosis_underline").css('width', '1157px');
		$("#diagnosisGrup_"+i).children("#diagnosis_underline").css('height', '1px');
		$("#diagnosisGrup_"+i).children("#diagnosis_underline").css('top', textH+12);
		$("#diagnosisGrup_"+i).children("#diagnosis_underline").css('background-color', '#ffffff');
		$("#diagnosisGrup_"+i).children("#diagnosis_underline").css('filter', 'drop-shadow(1px 1px 1px rgba(0,0,0,0.2))');
		
		var checkBtnPosY = (textH/2) - 12;
		

		for(var j=1; j<=5; j++){
			$("#diagnosisGrup_"+i).children("#diagnosisCheckBtn_"+j).attr('value', j);
			$("#diagnosisGrup_"+i).children("#diagnosisCheckBtn_"+j).css('cursor', "pointer");
			$("#diagnosisGrup_"+i).children("#diagnosisCheckBtn_"+j).css('position', 'absolute');
			$("#diagnosisGrup_"+i).children("#diagnosisCheckBtn_"+j).css('left', checkBtnPosX[j-1]);
			$("#diagnosisGrup_"+i).children("#diagnosisCheckBtn_"+j).css('top', checkBtnPosY);
			$("#diagnosisGrup_"+i).children("#diagnosisCheckBtn_"+j).css('width', '20px');
			$("#diagnosisGrup_"+i).children("#diagnosisCheckBtn_"+j).css('height', '20px');
			$("#diagnosisGrup_"+i).children("#diagnosisCheckBtn_"+j).css('border-radius', '14px');
			$("#diagnosisGrup_"+i).children("#diagnosisCheckBtn_"+j).css('border', "2px solid #ffffff");
			$("#diagnosisGrup_"+i).children("#diagnosisCheckBtn_"+j).css('filter', 'drop-shadow(1px 1px 1px rgba(0,0,0,0.2))');

			$("#diagnosisGrup_"+i).children("#diagnosisCheckBtn_"+j).children("#circle").css('display', 'none');
			$("#diagnosisGrup_"+i).children("#diagnosisCheckBtn_"+j).children("#circle").css('margin-left', '2px');
			$("#diagnosisGrup_"+i).children("#diagnosisCheckBtn_"+j).children("#circle").css('margin-top', '2px');
			$("#diagnosisGrup_"+i).children("#diagnosisCheckBtn_"+j).children("#circle").css('width', '16px');
			$("#diagnosisGrup_"+i).children("#diagnosisCheckBtn_"+j).children("#circle").css('height', '16px');
			$("#diagnosisGrup_"+i).children("#diagnosisCheckBtn_"+j).children("#circle").css('border-radius', '10px');
			$("#diagnosisGrup_"+i).children("#diagnosisCheckBtn_"+j).children("#circle").css('background-color', '#e4ff00');

			$("#diagnosisGrup_"+i).children("#diagnosisCheckBtn_"+j).click(function() {
				var index = $(this).parents().attr('value');
				var num = $(this).attr('value');
				
				if(checkArr[index-1]){
					var old_index = checkArr[index-1].split("_")[0];
					var old_num = checkArr[index-1].split("_")[1];
					$("#diagnosisGrup_"+old_index).children("#diagnosisCheckBtn_"+old_num).children("#circle").hide();
				}

				$(this).children("#circle").show();
				checkArr[index-1] = index+"_"+num;
				//console.log(index+" / "+num);
				//console.log(checkArr);
				
				effectCall('../common/mp3/balloon.mp3');

			});
		}

		
		//console.log( $("#diagnosisGrup_"+i).children("#diagnosisText").height() );
		
		//$("#diagnosisGrup_"+i).children("#diagnosisText").css('border', "1px solid red");

		prevY += $("#diagnosisGrup_"+i).children("#diagnosisText").height() + 24;
	}
	

	$("#diagnosis_checkCtn").css('height', prevY);
		
	$("#diagnosis_checkPopCtn").mCustomScrollbar(
		{
			scrollInertia: 1500,
			scrollEasing: "easeOut",
			theme:"light-1"
			//theme:"dark-3"
		}
	);
	//$("#diagnosis_checkPopCtn").mCustomScrollbar("update");	
	$("#diagnosis_checkPop").hide();

	$("#diagnosis_resultBtn").css('cursor', 'pointer');
	$("#diagnosis_resultBtn").css('position', 'absolute');
	$("#diagnosis_resultBtn").css({left: 541, top: 670, width:200, height:50});
	$("#diagnosis_resultBtn").css('background', 'url(../img/diagnosisPop/resultBtn.png) no-repeat 0px 0px');
	
	$("#diagnosis_resultBtn").mouseover(function(e) {		
		$(this).css("background-position-y", "-50px");
	});
	$("#diagnosis_resultBtn").mouseout(function(e) {
		$(this).css("background-position-y", "0px");
	});
	
	var rePop_Tl = gsap.timeline({
		paused: true
	});
	
	var compPop_Tl = gsap.timeline({
		paused: true
	});
	
	

	rePop_Tl.to($("#diagnosis_rePop"), 0, {
		opacity: 0
	})
	.to($("#diagnosis_rePop"), 0.5, {
		display: "block",
		opacity: 1
	})
	.to($("#diagnosis_rePop"), 0.5, {
		display: "none",
		opacity: 0
	}, 1);
	


	compPop_Tl.to($("#diagnosis_compPop"), 0, {
		opacity: 0
	})
	.to($("#diagnosis_compPop"), 0.5, {
		display: "block",
		opacity: 1
	})	
	.to($("#diagnosis_compPop"), 0.5, {
		display: "none",
		opacity: 0,
		onComplete: function () {
			gsap.to($("#diagnosis_checkPop"), 0.5, {
				opacity: 0
			})

			gsap.fromTo($("#diagnosis_resultPop"), 0.5, {display: "none", opacity: 0}, {
				display: "block",
				opacity: 1,
				onComplete: function () {
					// 체크리스트 화면 초기화
					$('#diagnosis_checkPopCtn').mCustomScrollbar("scrollTo","top",{ //"scrollTo"함수 사용, "위치"
						scrollInertia:0 // 이동하는 스크롤 시간
					});
					for(var i=1; i<=checkArr.length; i++){
						$("#diagnosisGrup_"+checkArr[i-1].split("_")[0]).children("#diagnosisCheckBtn_"+checkArr[i-1].split("_")[1]).children("#circle").hide();
					}
					checkArr = [];
					$("#diagnosis_resultBtn").attr("disabled", false);
					$("#diagnosis_resultPop_reBtn").attr("disabled", false);
				}
			})
			//$("#diagnosis_resultPop").show();
		}
	}, 1);
	
	
	var scoreText = "";
	$("#diagnosis_resultBtn").click(function() {
		
		var score = 0;
		for(var i=1; i<=checkArr.length; i++){
			if(checkArr[i-1]){
				score += Number(checkArr[i-1].split("_")[1]);
			}else{
				rePop_Tl.restart();
				effectCall('../common/mp3/x.mp3');
				return
			}
		}
				
		$(this).attr("disabled", true);
		$("#diagnosis_resultPop_reBtn").attr("disabled", true);

		
		
		compPop_Tl.restart();
		effectCall('../common/mp3/correct.mp3');
				
		//console.log("score :"+score);
		if(score < 30){
			scoreText = "초급";
			$("#diagnosis_resultPop_btn_1").css('background', 'url(../img/diagnosisPop/resultPop_btn2.png) no-repeat 0px 0px');
			$("#diagnosis_resultPop_box_1").css("background-position-y", "-360px");
		}else if(score >= 30 && score < 40){
			scoreText = "중급";
			$("#diagnosis_resultPop_btn_2").css('background', 'url(../img/diagnosisPop/resultPop_btn2.png) no-repeat 0px 0px');
			$("#diagnosis_resultPop_box_2").css("background-position-y", "-360px");
		}else if(score >= 40){
			scoreText = "고급";
			$("#diagnosis_resultPop_btn_3").css('background', 'url(../img/diagnosisPop/resultPop_btn2.png) no-repeat 0px 0px');
			$("#diagnosis_resultPop_box_3").css("background-position-y", "-360px");
		}
		//console.log("score : "+score);
		//console.log(checkArr.length);

		var resultPop_text = 
			'<div style="position: absolute">당신의 역량은</div>'+
			'<div style="position: absolute; left:480px; font-family: esamanru_Bold; color: #e4ff00;">'+scoreText+'</div>'+
			'<div style="position: absolute; left:634px;">입니다.</div>'
		$("#diagnosis_resultPop_text").html(resultPop_text);
	});

	
	////////// 결과확인팝업
	
	$("#diagnosis_resultPop").hide();
	
	$("#diagnosis_resultPop").css('position', 'absolute');
	$("#diagnosis_resultPop").css({left: 0, top: 0, width:1280, height:770});

	$("#diagnosis_resultPop_bg").css('position', 'absolute');
	$("#diagnosis_resultPop_bg").css({left: 0, top: 0, width:1280, height:770});
	$("#diagnosis_resultPop_bg").css('background', 'url(../img/diagnosisPop/resultPop_bg.png) no-repeat 0px 0px');
	
	$("#diagnosis_resultPop_text").css('position', 'absolute');
	$("#diagnosis_resultPop_text").css('left', 240);
	$("#diagnosis_resultPop_text").css('top', 104);
	$("#diagnosis_resultPop_text").css('width', '940px');
	$("#diagnosis_resultPop_text").css('height', '100px');
	$("#diagnosis_resultPop_text").css('transform', 'scale('+0.95+','+1+')');
	$("#diagnosis_resultPop_text").css('transform-origin', '0 0');
	$("#diagnosis_resultPop_text").css('filter', 'drop-shadow(1px 1px 1px rgba(0,0,0,0.5))');

	//$("#diagnosis_resultPop_text").css('border', "1px solid red");

	$("#diagnosis_resultPop_text").css('font-family', 'esamanru_Light');
	$("#diagnosis_resultPop_text").css('font-size', '80px');
	$("#diagnosis_resultPop_text").css('color', '#ffffff');
			

	$("#diagnosis_resultPop_reBtn").css('cursor', 'pointer');
	$("#diagnosis_resultPop_reBtn").css('position', 'absolute');
	$("#diagnosis_resultPop_reBtn").css({left: 541, top: 672, width:200, height:50});
	$("#diagnosis_resultPop_reBtn").css('background', 'url(../img/diagnosisPop/resultPop_reBtn.png) no-repeat 0px 0px');
	
	$("#diagnosis_resultPop_reBtn").click(function() {
		$("#diagnosis_resultPop").hide();

		$("#diagnosis_resultPop_btn_1").css('background', 'url(../img/diagnosisPop/resultPop_btn1.png) no-repeat 0px 0px');
		$("#diagnosis_resultPop_btn_2").css('background', 'url(../img/diagnosisPop/resultPop_btn1.png) no-repeat 0px 0px');
		$("#diagnosis_resultPop_btn_3").css('background', 'url(../img/diagnosisPop/resultPop_btn1.png) no-repeat 0px 0px');

		$("#diagnosis_resultPop_box_1").css("background-position-y", "0px");
		$("#diagnosis_resultPop_box_2").css("background-position-y", "0px");
		$("#diagnosis_resultPop_box_3").css("background-position-y", "0px");
		
		$("#diagnosis_checkPop").css('opacity', 1);
		effectCall('../common/mp3/click.mp3');
		for(var i=1; i<=diagnosisStr.length; i++){
			checkArr[i-1] = null;
		};
	});

	$("#diagnosis_resultPop_reBtn").on('mouseover', function(e) {
		$(this).css("background-position-y", "-50px");
	});

	$("#diagnosis_resultPop_reBtn").on('mouseout', function(e) {
		$(this).css("background-position-y", "0px");
	});
	
	var resultPop_btnPosX = [115, 495, 875];
	var resultPop_boxPosX = [80, 460, 840];

	for(var k=1; k<=3; k++){
		$("#diagnosis_resultPop_box_"+k).css('position', 'absolute');
		$("#diagnosis_resultPop_box_"+k).css({left: resultPop_boxPosX[k-1], top: 218, width:360, height:360});
		$("#diagnosis_resultPop_box_"+k).css('background', 'url(../img/diagnosisPop/resultPop_box_'+k+'.png) no-repeat 0px 0px');


		$("#diagnosis_resultPop_btn_"+k).attr('value', k);

		$("#diagnosis_resultPop_btn_"+k).css('cursor', 'pointer');
		$("#diagnosis_resultPop_btn_"+k).css('position', 'absolute');
		$("#diagnosis_resultPop_btn_"+k).css({left: resultPop_btnPosX[k-1], top: 473, width:290, height:90});
		$("#diagnosis_resultPop_btn_"+k).css('background', 'url(../img/diagnosisPop/resultPop_btn1.png) no-repeat 0px 0px');

		$("#diagnosis_resultPop_btn_"+k).click(function() {
			//console.log( $(this).attr('value') );
			var downURL = "down/report_0"+$(this).attr('value')+".zip";
			window.open(downURL);
		});

		$("#diagnosis_resultPop_btn_"+k).on('mouseover', function(e) {
			$(this).css("background-position-y", "-90px");
		});

		$("#diagnosis_resultPop_btn_"+k).on('mouseout', function(e) {
			$(this).css("background-position-y", "0px");
		});
	}
}