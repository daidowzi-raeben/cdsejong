function studyPopShow(){
	videoPause();
	$("#studyPopCtn").show();
	gsap.to($("#studyPopCtn"), 0.5, {
		opacity: 1
	}, 0.3)
}

function studyPopInit(){
	var studyIndex;
	var studyCurBtn;
	
	$("#studyPopCtn").css('opacity', "0");
	$("#studyPopCtn").hide();

	studyPop_layout();
	
	
	// 과정개요 화면
	$("#studyPopTapCtn_1").css('display', 'none');
	$("#studyPopTapCtn_1").css('position', 'absolute');
	$("#studyPopTapCtn_1").css({left: 10, top: 270, width:1080, height:400});
	//$("#studyPopTapCtn_1").css('border', "1px solid black");
	
	$("#studyPopTapCtn_1_txt").css('position', 'absolute');
	$("#studyPopTapCtn_1_txt").css('font-family', 'GmarketSansBold');
	$("#studyPopTapCtn_1_txt").css('font-size', '25px');
	//$("#studyPopTapCtn_1_txt").css('line-height', '39px');
	$("#studyPopTapCtn_1_txt").css('letter-spacing', '-1px');
	$("#studyPopTapCtn_1_txt").css({left: 40, top: 6});

	$("#studyPopTapCtn_1_txt_icon_1").css('position', 'absolute');
	$("#studyPopTapCtn_1_txt_icon_1").css({left: 40, top: 45, width:36, height:34});
	$("#studyPopTapCtn_1_txt_icon_1").css('background', 'url(../img/studyPop/rank1-bullet.png) no-repeat 0px 0px');
	
	$("#studyPopTapCtn_1_txt_1").css('position', 'absolute');
	$("#studyPopTapCtn_1_txt_1").css('font-family', 'GmarketSansMedium');
	$("#studyPopTapCtn_1_txt_1").css('font-size', '23px');
	//$("#studyPopTapCtn_1_txt_1").css('line-height', '39px');
	$("#studyPopTapCtn_1_txt_1").css('letter-spacing', '-1px');
	$("#studyPopTapCtn_1_txt_1").css({left: 76, top: 52});

	$("#studyPopTapCtn_1_txt_icon_2").css('position', 'absolute');
	$("#studyPopTapCtn_1_txt_icon_2").css({left: 40, top: 90, width:36, height:34});
	$("#studyPopTapCtn_1_txt_icon_2").css('background', 'url(../img/studyPop/rank1-bullet.png) no-repeat 0px 0px');
	
	$("#studyPopTapCtn_1_txt_2").css('position', 'absolute');
	$("#studyPopTapCtn_1_txt_2").css('font-family', 'GmarketSansMedium');
	$("#studyPopTapCtn_1_txt_2").css('font-size', '23px');
	//$("#studyPopTapCtn_1_txt_2").css('line-height', '39px');
	$("#studyPopTapCtn_1_txt_2").css('letter-spacing', '-1px');
	$("#studyPopTapCtn_1_txt_2").css({left: 76, top: 97});

	$("#studyPopTapCtn_1_txt_3").css('position', 'absolute');
	$("#studyPopTapCtn_1_txt_3").css('font-family', 'GmarketSansMedium');
	$("#studyPopTapCtn_1_txt_3").css('font-size', '20px');
	$("#studyPopTapCtn_1_txt_3").css('line-height', '26px');
	$("#studyPopTapCtn_1_txt_3").css('letter-spacing', '-1px');
	$("#studyPopTapCtn_1_txt_3").css({left: 76, top: 130});

	$("#studyPopTapCtn_1_txt_icon_4").css('position', 'absolute');
	$("#studyPopTapCtn_1_txt_icon_4").css({left: 40, top: 245, width:36, height:34});
	$("#studyPopTapCtn_1_txt_icon_4").css('background', 'url(../img/studyPop/rank1-bullet.png) no-repeat 0px 0px');
	
	$("#studyPopTapCtn_1_txt_4").css('position', 'absolute');
	$("#studyPopTapCtn_1_txt_4").css('font-family', 'GmarketSansMedium');
	$("#studyPopTapCtn_1_txt_4").css('font-size', '23px');
	//$("#studyPopTapCtn_1_txt_4").css('line-height', '39px');
	$("#studyPopTapCtn_1_txt_4").css('letter-spacing', '-1px');
	$("#studyPopTapCtn_1_txt_4").css({left: 76, top: 252});

	$("#studyPopTapCtn_1_txt_5").css('position', 'absolute');
	$("#studyPopTapCtn_1_txt_5").css('font-family', 'GmarketSansMedium');
	$("#studyPopTapCtn_1_txt_5").css('font-size', '20px');
	$("#studyPopTapCtn_1_txt_5").css('line-height', '26px');
	$("#studyPopTapCtn_1_txt_5").css('letter-spacing', '-1px');
	$("#studyPopTapCtn_1_txt_5").css({left: 76, top: 282});

	$("#studyPopTapCtn_1_txt_icon_6").css('position', 'absolute');
	$("#studyPopTapCtn_1_txt_icon_6").css({left: 40, top: 346, width:36, height:34});
	$("#studyPopTapCtn_1_txt_icon_6").css('background', 'url(../img/studyPop/rank1-bullet.png) no-repeat 0px 0px');
	
	$("#studyPopTapCtn_1_txt_6").css('position', 'absolute');
	$("#studyPopTapCtn_1_txt_6").css('font-family', 'GmarketSansMedium');
	$("#studyPopTapCtn_1_txt_6").css('font-size', '23px');
	//$("#studyPopTapCtn_1_txt_6").css('line-height', '39px');
	$("#studyPopTapCtn_1_txt_6").css('letter-spacing', '-1px');
	$("#studyPopTapCtn_1_txt_6").css({left: 76, top: 353});
	
	var dotArrPosY = [136, 162, 188, 214, 240, 288, 314]
	for(var k=1; k<=dotArrPosY.length; k++){
		$("#studyPopTapCtn_1_txt_dot_"+k).css('position', 'absolute');
		$("#studyPopTapCtn_1_txt_dot_"+k).css({left: 62, top: dotArrPosY[k-1], width:8, height:8});	
		$("#studyPopTapCtn_1_txt_dot_"+k).css('background-color', '#000000');
	}
	
	$("#studyPopCloseBtn").css('cursor', "pointer");
	$("#studyPopCloseBtn").mouseover(function(e) {
		gsap.to($(this), 0.5, {
			rotation: 180
		}, 0.3)
	});

	$("#studyPopCloseBtn").mouseout(function(e) {
		gsap.to($(this), 0.5, {
			rotation: 0
		}, 0.3)
	});

	$("#studyPopCloseBtn").click(function() {
		//console.log( Math.floor($("#video")[0].currentTime)+" / "+ Math.floor($("#video")[0].duration) );
		if( $("#timeText").text().split(" / ")[0] != $("#timeText").text().split(" / ")[1] ){
			videoPlay();
		}
		
		gsap.to($("#studyPopCtn"), 0.5, {
			opacity: 0,
			onComplete: function () {
				$("#studyPopCtn").hide();
			}
		}, 0.3)
		$("#studyPopTapBtn_1").mouseover();
		$("#studyPopTapBtn_1").click();
		
	});
	
	
	// 과정구성 화면
	$("#studyPopTapCtn_2").css('display', 'none');
	$("#studyPopTapCtn_2").css('position', 'absolute');
	$("#studyPopTapCtn_2").css({left: 10, top: 270, width:1080, height:400});
	//$("#studyPopTapCtn_2").css('border', "1px solid black");
	$("#studyPopTapCtn_2").css('overflow-x', "hidden");
	$("#studyPopTapCtn_2").css('overflow-y', "auto");

	var prevY = 50;
	var boxHtml = 
		'<div id="studyPopTapCtn_2_txt">본 과정은 다음과 같이 <font color="#6ac8c0">24차시</font>로 구성되어 있습니다.</div>'
	for(var i=1; i<=24; i++){
		
		boxHtml += '<div id="studyPopTapCtn_2_Box_'+i+'">'+
						'<div id="studyPopTapCtn_2_Box_'+i+'_txt1">'+itostr(i)+'.</div>'+
						'<div id="studyPopTapCtn_2_Box_'+i+'_line_1"></div>'+
						'<div id="studyPopTapCtn_2_Box_'+i+'_txt2">'+chasiTextArr[i-1]+'</div>'+
						'<div id="studyPopTapCtn_2_Box_'+i+'_line_2"></div>'+	
						'<div id="studyPopTapCtn_2_Box_'+i+'_txt3">교재 다운</div>'+
					'</div>'
	}
	
		
	$(".studyPopTapCtn_2_box-wrap").append(boxHtml);
	//$(".studyPopTapCtn_2_box-wrap").html(boxHtml);
	
	//$("#studyPopTapCtn_2_txt").css('position', 'absolute');
	$("#studyPopTapCtn_2_txt").css('font-family', 'GmarketSansBold');
	$("#studyPopTapCtn_2_txt").css('font-size', '25px');
	//$("#studyPopTapCtn_2_txt").css('line-height', '39px');
	$("#studyPopTapCtn_2_txt").css('letter-spacing', '-1px');
	//$("#studyPopTapCtn_2_txt").css({left: 40, top: 6});
	$("#studyPopTapCtn_2_txt").css("margin-top", 6);
	$("#studyPopTapCtn_2_txt").css("margin-left", 40);
	$("#studyPopTapCtn_2_txt").css("margin-bottom", 20);

	for(var j=1; j<=24; j++){
		
		$("#studyPopTapCtn_2_Box_"+j).css({width:480, height:60});
		$("#studyPopTapCtn_2_Box_"+j).css('border', "2px solid #ddd");
		$("#studyPopTapCtn_2_Box_"+j).css('background-color', '#ffffff');
		$("#studyPopTapCtn_2_Box_"+j).css("display", "flex");
		
		if(j%2 == 1){
			$("#studyPopTapCtn_2_Box_"+j).css("margin-left", 40);
		}else{
			$("#studyPopTapCtn_2_Box_"+j).css("margin-left", 30);
		}
		
		$("#studyPopTapCtn_2_Box_"+j).css("margin-bottom", 20);
		
		
		$("#studyPopTapCtn_2_Box_"+j+"_txt1").css('font-family', 'GmarketSansBold');
		$("#studyPopTapCtn_2_Box_"+j+"_txt1").css('font-size', '22px');
		$("#studyPopTapCtn_2_Box_"+j+"_txt1").css('letter-spacing', '-1px');
		$("#studyPopTapCtn_2_Box_"+j+"_txt1").css("margin-left", 14);
		$("#studyPopTapCtn_2_Box_"+j+"_txt1").css("margin-top", 19);
		
		//$("#studyPopTapCtn_2_Box_"+j+"_txt2").css('position', 'absolute');
		$("#studyPopTapCtn_2_Box_"+j+"_txt2").css('font-family', 'GmarketSansMedium');
		$("#studyPopTapCtn_2_Box_"+j+"_txt2").css('font-size', '20px');
		$("#studyPopTapCtn_2_Box_"+j+"_txt2").css('letter-spacing', '-1px');
		$("#studyPopTapCtn_2_Box_"+j+"_txt2").css("width", 304);
		$("#studyPopTapCtn_2_Box_"+j+"_txt2").css("margin-left", 12);
		$("#studyPopTapCtn_2_Box_"+j+"_txt2").css("margin-top", 21);

		if(chasiTextArr[j-1].split("<br>").length == 2){
			$("#studyPopTapCtn_2_Box_"+j+"_txt2").css("margin-top", 11);
		}
		
		$("#studyPopTapCtn_2_Box_"+j+"_line_1").css({width:2, height:22});
		$("#studyPopTapCtn_2_Box_"+j+"_line_1").css('background-color', '#6ac8c0');
		$("#studyPopTapCtn_2_Box_"+j+"_line_1").css("margin-left", 12);
		$("#studyPopTapCtn_2_Box_"+j+"_line_1").css("margin-top", 20);

		$("#studyPopTapCtn_2_Box_"+j+"_line_2").css({width:2, height:22});
		$("#studyPopTapCtn_2_Box_"+j+"_line_2").css('background-color', '#6ac8c0');
		//$("#studyPopTapCtn_2_Box_"+j+"_line_2").css("margin-right", 50);
		$("#studyPopTapCtn_2_Box_"+j+"_line_2").css("margin-top", 20);
		
		$("#studyPopTapCtn_2_Box_"+j+"_txt3").attr('value', j);		
		$("#studyPopTapCtn_2_Box_"+j+"_txt3").css('font-family', 'GmarketSansMedium');
		$("#studyPopTapCtn_2_Box_"+j+"_txt3").css('font-size', '20px');
		$("#studyPopTapCtn_2_Box_"+j+"_txt3").css('letter-spacing', '-1px');
		$("#studyPopTapCtn_2_Box_"+j+"_txt3").css("margin-left", 12);
		$("#studyPopTapCtn_2_Box_"+j+"_txt3").css("margin-top", 21);
		
		//$("#studyPopTapCtn_2_Box_"+j+"_txt3").css('border', "1px solid black");
		$("#studyPopTapCtn_2_Box_"+j+"_txt3").css('cursor', 'pointer');
		$("#studyPopTapCtn_2_Box_"+j+"_txt3").attr('value', j);

		$("#studyPopTapCtn_2_Box_"+j+"_txt3").mouseover(function(e) {
			$(this).css('color', '#6ac8c0');
		});

		$("#studyPopTapCtn_2_Box_"+j+"_txt3").mouseout(function(e) {
			$(this).css('color', '#000000');
		});

		$("#studyPopTapCtn_2_Box_"+j+"_txt3").click(function() {
			window.open("../"+itostr($(this).attr('value'))+"/down/reference.pdf", "_blank", 'fullscreen=no');	
		});	
	}
	
	$("#studyPopTapCtn_2_Box_"+parseFloat(chasi)).css('border', "4px solid #6ac8c0");

	if(!mobileCheck){	
		$("#studyPopTapCtn_2").mCustomScrollbar({theme:"dark-3"});
	}

	

	/////// 학습전개 ////////////
	
	$("#studyPopTapCtn_3").css('display', 'none');
	$("#studyPopTapCtn_3").css('position', 'absolute');
	$("#studyPopTapCtn_3").css({left: 10, top: 270, width:1080, height:400});
	//$("#studyPopTapCtn_3").css('border', "1px solid black");
	
	$("#studyPopTapCtn_3_txt").css('position', 'absolute');
	$("#studyPopTapCtn_3_txt").css('font-family', 'GmarketSansBold');
	$("#studyPopTapCtn_3_txt").css('font-size', '25px');
	//$("#studyPopTapCtn_3_txt").css('line-height', '39px');
	$("#studyPopTapCtn_3_txt").css('letter-spacing', '-1px');
	$("#studyPopTapCtn_3_txt").css({left: 40, top: 6});
	
	$("#studyPopTapCtn_3_line_1").css('position', 'absolute');
	$("#studyPopTapCtn_3_line_1").css({left: 314, top: 50, width:60, height:50});
	$("#studyPopTapCtn_3_line_1").css('background', 'url(../img/studyPop/flow-line.png) no-repeat 0px 0px');
	//$("#studyPopTapCtn_3_line_1").css('border', "1px solid black");
	
	$("#studyPopTapCtn_3_line_2").css('position', 'absolute');
	$("#studyPopTapCtn_3_line_2").css({left: 514, top: 50, width:60, height:50});
	$("#studyPopTapCtn_3_line_2").css('background', 'url(../img/studyPop/flow-line.png) no-repeat 0px 0px');

	$("#studyPopTapCtn_3_line_3").css('position', 'absolute');
	$("#studyPopTapCtn_3_line_3").css({left: 714, top: 50, width:60, height:50});
	$("#studyPopTapCtn_3_line_3").css('background', 'url(../img/studyPop/flow-line.png) no-repeat 0px 0px');
	
	$("#studyPopTapCtn_3_sub_icon").css('position', 'absolute');
	$("#studyPopTapCtn_3_sub_icon").css({left: 360, top: 109, width:24, height:24});
	$("#studyPopTapCtn_3_sub_icon").css('background-color', '#6ac8c0');
	$("#studyPopTapCtn_3_sub_icon").css('border-radius', '50%');
	$("#studyPopTapCtn_3_sub_icon").css('font-family', 'SCDream3');
	$("#studyPopTapCtn_3_sub_icon").css('font-size', '17px');
	$("#studyPopTapCtn_3_sub_icon").css('text-align', 'center');
	$("#studyPopTapCtn_3_sub_icon").css('color', '#ffffff');


	$("#studyPopTapCtn_3_sub_txt").css('position', 'absolute');
	$("#studyPopTapCtn_3_sub_txt").css({left: 390, top: 104});
	$("#studyPopTapCtn_3_sub_txt").css('font-family', 'GmarketSansMedium');
	$("#studyPopTapCtn_3_sub_txt").css('font-size', '17px');
	$("#studyPopTapCtn_3_sub_txt").css('line-height', '39px');
	$("#studyPopTapCtn_3_sub_txt").css('letter-spacing', '-1px');


	var stage3_tapPosX = [160, 360, 560, 760]
	var tapCtn_3_CurBtn;
	for(var i=1; i<=stage3_tapPosX.length; i++){
		$("#studyPopTapCtn_3_btn_"+i).css('position', 'absolute');
		$("#studyPopTapCtn_3_btn_"+i).css({left: stage3_tapPosX[i-1], top: 50, width:166, height:50});
		$("#studyPopTapCtn_3_btn_"+i).css('background', 'url(../img/studyPop/flow-tab.png) no-repeat 0px 0px');

		$("#studyPopTapCtn_3_btn_"+i).css('cursor', 'pointer');
		$("#studyPopTapCtn_3_btn_"+i).attr('value', i);

		$("#studyPopTapCtn_3_btn_"+i).mouseover(function(e) {
			$(this).css("background-position-x", "-166px");
		});

		$("#studyPopTapCtn_3_btn_"+i).mouseout(function(e) {
			
			if($(this).attr('value') != tapCtn_3_CurBtn.attr('value')){
				$(this).css("background-position-x", "0px");
			}		
			
		});

		$("#studyPopTapCtn_3_btn_"+i).click(function() {
		
			if(tapCtn_3_CurBtn && tapCtn_3_CurBtn.attr('value') != $(this).attr('value')){
				tapCtn_3_CurBtn.css("background-position-x", "0px");
				$("#studyPopTapCtn_3_btnTap_"+tapCtn_3_CurBtn.attr('value')).hide();
			}

			$("#studyPopTapCtn_3_btnTap_"+$(this).attr('value')).show();

			tapCtn_3_CurBtn = $(this);

		});
	}
	

	$(".stage3_tapBtnText").css('position', 'absolute');
	$(".stage3_tapBtnText").css({left: 0, top: 8, width:166, height:50});
	//$(".stage3_tapBtnText").css('background-color', '#6ac8c0');
	//$(".stage3_tapBtnText").css('background-color', 'transparent');
	$(".stage3_tapBtnText").css('color', '#ffffff');
	$(".stage3_tapBtnText").css("text-align", "center");
	$(".stage3_tapBtnText").css('font-family', 'GmarketSansMedium');
	$(".stage3_tapBtnText").css('font-size', '22px');
	$(".stage3_tapBtnText").css('line-height', '39px');
	$(".stage3_tapBtnText").css('letter-spacing', '-1px');
	


	// 학습전개 첫번째 탭
	$("#studyPopTapCtn_3_btnTap_1").css('display', 'none');
	$("#studyPopTapCtn_3_btnTap_1").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_1").css({left: 10, top: 100, width:1060, height:300});
	//$("#studyPopTapCtn_3_btnTap_1").css('border', "1px solid black");
	

	$("#studyPopTapCtn_3_btnTap_1_img").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_1_img").css({left: 30, top: 38, width:1000, height:164});
	$("#studyPopTapCtn_3_btnTap_1_img").css('background', 'url(../img/studyPop/flow/flow1.png) no-repeat 0px 0px');
	
	$("#studyPopTapCtn_3_btnTap_1_icon_1").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_1_icon_1").css({left: 160, top: 210, width:36, height:34});
	$("#studyPopTapCtn_3_btnTap_1_icon_1").css('background', 'url(../img/studyPop/rank1-bullet.png) no-repeat 0px 0px');

	$("#studyPopTapCtn_3_btnTap_1_txt_1").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_1_txt_1").css({left: 200, top: 212});
	$("#studyPopTapCtn_3_btnTap_1_txt_1").css('font-family', 'GmarketSansMedium');
	$("#studyPopTapCtn_3_btnTap_1_txt_1").css('font-size', '23px');
	$("#studyPopTapCtn_3_btnTap_1_txt_1").css('line-height', '39px');
	$("#studyPopTapCtn_3_btnTap_1_txt_1").css('letter-spacing', '-1px');
	
	$("#studyPopTapCtn_3_btnTap_1_icon_2").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_1_icon_2").css({left: 160, top: 250, width:36, height:34});
	$("#studyPopTapCtn_3_btnTap_1_icon_2").css('background', 'url(../img/studyPop/rank1-bullet.png) no-repeat 0px 0px');

	$("#studyPopTapCtn_3_btnTap_1_txt_2").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_1_txt_2").css({left: 200, top: 252});
	$("#studyPopTapCtn_3_btnTap_1_txt_2").css('font-family', 'GmarketSansMedium');
	$("#studyPopTapCtn_3_btnTap_1_txt_2").css('font-size', '23px');
	$("#studyPopTapCtn_3_btnTap_1_txt_2").css('line-height', '39px');
	$("#studyPopTapCtn_3_btnTap_1_txt_2").css('letter-spacing', '-1px');	

	
	// 학습전개 두번째 탭
	$("#studyPopTapCtn_3_btnTap_2").css('display', 'none');
	$("#studyPopTapCtn_3_btnTap_2").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_2").css({left: 10, top: 100, width:1060, height:300});
	//$("#studyPopTapCtn_3_btnTap_2").css('border', "1px solid black");
	
	$("#studyPopTapCtn_3_btnTap_2_img").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_2_img").css({left: 30, top: 38, width:1000, height:164});
	$("#studyPopTapCtn_3_btnTap_2_img").css('background', 'url(../img/studyPop/flow/flow2.png) no-repeat 0px 0px');

	$("#studyPopTapCtn_3_btnTap_2_icon_1").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_2_icon_1").css({left: 300, top: 210, width:36, height:34});
	$("#studyPopTapCtn_3_btnTap_2_icon_1").css('background', 'url(../img/studyPop/rank1-bullet.png) no-repeat 0px 0px');

	$("#studyPopTapCtn_3_btnTap_2_txt_1").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_2_txt_1").css({left: 340, top: 212});
	$("#studyPopTapCtn_3_btnTap_2_txt_1").css('font-family', 'GmarketSansMedium');
	$("#studyPopTapCtn_3_btnTap_2_txt_1").css('font-size', '23px');
	$("#studyPopTapCtn_3_btnTap_2_txt_1").css('line-height', '39px');
	$("#studyPopTapCtn_3_btnTap_2_txt_1").css('letter-spacing', '-1px');
	
	$("#studyPopTapCtn_3_btnTap_1_sub_txt").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_1_sub_txt").css('font-family', 'GmarketSansMedium');
	$("#studyPopTapCtn_3_btnTap_1_sub_txt").css('font-size', '20px');
	$("#studyPopTapCtn_3_btnTap_1_sub_txt").css('line-height', '26px');
	$("#studyPopTapCtn_3_btnTap_1_sub_txt").css('letter-spacing', '-1px');
	$("#studyPopTapCtn_3_btnTap_1_sub_txt").css({left: 340, top: 250});
	
	$("#studyPopTapCtn_3_txt_dot_1").css('position', 'absolute');
	$("#studyPopTapCtn_3_txt_dot_1").css({left: 324, top: 255, width:8, height:8});	
	$("#studyPopTapCtn_3_txt_dot_1").css('background-color', '#000000');

	$("#studyPopTapCtn_3_txt_dot_2").css('position', 'absolute');
	$("#studyPopTapCtn_3_txt_dot_2").css({left: 324, top: 283, width:8, height:8});	
	$("#studyPopTapCtn_3_txt_dot_2").css('background-color', '#000000');
	

	// 학습전개 세번째 탭
	$("#studyPopTapCtn_3_btnTap_3").css('display', 'none');
	$("#studyPopTapCtn_3_btnTap_3").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_3").css({left: 10, top: 100, width:1060, height:300});
	//$("#studyPopTapCtn_3_btnTap_3").css('border', "1px solid black");
	
	$("#studyPopTapCtn_3_btnTap_3_img").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_3_img").css({left: 30, top: 38, width:1000, height:164});
	$("#studyPopTapCtn_3_btnTap_3_img").css('background', 'url(../img/studyPop/flow/flow3.png) no-repeat 0px 0px');

	$("#studyPopTapCtn_3_btnTap_3_icon_1").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_3_icon_1").css({left: 300, top: 210, width:36, height:34});
	$("#studyPopTapCtn_3_btnTap_3_icon_1").css('background', 'url(../img/studyPop/rank1-bullet.png) no-repeat 0px 0px');

	$("#studyPopTapCtn_3_btnTap_3_txt_1").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_3_txt_1").css({left: 340, top: 212});
	$("#studyPopTapCtn_3_btnTap_3_txt_1").css('font-family', 'GmarketSansMedium');
	$("#studyPopTapCtn_3_btnTap_3_txt_1").css('font-size', '23px');
	$("#studyPopTapCtn_3_btnTap_3_txt_1").css('line-height', '39px');
	$("#studyPopTapCtn_3_btnTap_3_txt_1").css('letter-spacing', '-1px');
	
	$("#studyPopTapCtn_3_btnTap_3_btnTap_1_sub_txt").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_3_btnTap_1_sub_txt").css('font-family', 'GmarketSansMedium');
	$("#studyPopTapCtn_3_btnTap_3_btnTap_1_sub_txt").css('font-size', '20px');
	$("#studyPopTapCtn_3_btnTap_3_btnTap_1_sub_txt").css('line-height', '26px');
	$("#studyPopTapCtn_3_btnTap_3_btnTap_1_sub_txt").css('letter-spacing', '-1px');
	$("#studyPopTapCtn_3_btnTap_3_btnTap_1_sub_txt").css({left: 340, top: 250});
	
	$("#studyPopTapCtn_3_btnTap_3_txt_dot_1").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_3_txt_dot_1").css({left: 324, top: 255, width:8, height:8});	
	$("#studyPopTapCtn_3_btnTap_3_txt_dot_1").css('background-color', '#000000');

	$("#studyPopTapCtn_3_btnTap_3_txt_dot_2").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_3_txt_dot_2").css({left: 324, top: 283, width:8, height:8});	
	$("#studyPopTapCtn_3_btnTap_3_txt_dot_2").css('background-color', '#000000');
	

	// 학습전개 네번째 탭
	$("#studyPopTapCtn_3_btnTap_4").css('display', 'none');
	$("#studyPopTapCtn_3_btnTap_4").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_4").css({left: 10, top: 100, width:1060, height:300});
	//$("#studyPopTapCtn_3_btnTap_4").css('border', "1px solid black");
	

	$("#studyPopTapCtn_3_btnTap_4_img").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_4_img").css({left: 30, top: 38, width:1000, height:164});
	$("#studyPopTapCtn_3_btnTap_4_img").css('background', 'url(../img/studyPop/flow/flow4.png) no-repeat 0px 0px');
	
	$("#studyPopTapCtn_3_btnTap_4_icon_1").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_4_icon_1").css({left: 300, top: 210, width:36, height:34});
	$("#studyPopTapCtn_3_btnTap_4_icon_1").css('background', 'url(../img/studyPop/rank1-bullet.png) no-repeat 0px 0px');

	$("#studyPopTapCtn_3_btnTap_4_txt_1").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_4_txt_1").css({left: 340, top: 212});
	$("#studyPopTapCtn_3_btnTap_4_txt_1").css('font-family', 'GmarketSansMedium');
	$("#studyPopTapCtn_3_btnTap_4_txt_1").css('font-size', '23px');
	$("#studyPopTapCtn_3_btnTap_4_txt_1").css('line-height', '39px');
	$("#studyPopTapCtn_3_btnTap_4_txt_1").css('letter-spacing', '-1px');
	
	$("#studyPopTapCtn_3_btnTap_4_icon_2").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_4_icon_2").css({left: 300, top: 250, width:36, height:34});
	$("#studyPopTapCtn_3_btnTap_4_icon_2").css('background', 'url(../img/studyPop/rank1-bullet.png) no-repeat 0px 0px');

	$("#studyPopTapCtn_3_btnTap_4_txt_2").css('position', 'absolute');
	$("#studyPopTapCtn_3_btnTap_4_txt_2").css({left: 340, top: 252});
	$("#studyPopTapCtn_3_btnTap_4_txt_2").css('font-family', 'GmarketSansMedium');
	$("#studyPopTapCtn_3_btnTap_4_txt_2").css('font-size', '23px');
	$("#studyPopTapCtn_3_btnTap_4_txt_2").css('line-height', '39px');
	$("#studyPopTapCtn_3_btnTap_4_txt_2").css('letter-spacing', '-1px');


	$("#studyPopTapCtn_3_btn_1").mouseover();
	$("#studyPopTapCtn_3_btn_1").click();
	


	/////// 화면구성 ////////////
	$("#studyPopTapCtn_4").css('display', 'none');
	$("#studyPopTapCtn_4").css('position', 'absolute');
	$("#studyPopTapCtn_4").css({left: 10, top: 270, width:1080, height:400});
	//$("#studyPopTapCtn_3").css('border', "1px solid black");
	
	$("#studyPopTapCtn_4_txt").css('position', 'absolute');
	$("#studyPopTapCtn_4_txt").css('font-family', 'GmarketSansBold');
	$("#studyPopTapCtn_4_txt").css('font-size', '25px');
	//$("#studyPopTapCtn_4_txt").css('line-height', '39px');
	$("#studyPopTapCtn_4_txt").css('letter-spacing', '-1px');
	$("#studyPopTapCtn_4_txt").css({left: 40, top: 6});
		
	
	$("#studyPopTapCtn_4_sub_icon").css('position', 'absolute');
	$("#studyPopTapCtn_4_sub_icon").css({left: 355, top: 40, width:24, height:24});
	$("#studyPopTapCtn_4_sub_icon").css('background-color', '#6ac8c0');
	$("#studyPopTapCtn_4_sub_icon").css('border-radius', '50%');
	$("#studyPopTapCtn_4_sub_icon").css('font-family', 'SCDream3');
	$("#studyPopTapCtn_4_sub_icon").css('font-size', '17px');
	$("#studyPopTapCtn_4_sub_icon").css('text-align', 'center');
	$("#studyPopTapCtn_4_sub_icon").css('color', '#ffffff');


	$("#studyPopTapCtn_4_sub_txt").css('position', 'absolute');
	$("#studyPopTapCtn_4_sub_txt").css({left: 385, top: 35});
	$("#studyPopTapCtn_4_sub_txt").css('font-family', 'GmarketSansMedium');
	$("#studyPopTapCtn_4_sub_txt").css('font-size', '17px');
	$("#studyPopTapCtn_4_sub_txt").css('line-height', '39px');
	$("#studyPopTapCtn_4_sub_txt").css('letter-spacing', '-1px');
	
	$("#studyPopTapCtn_4_img").css('position', 'absolute');
	$("#studyPopTapCtn_4_img").css({left: 40, top: 70, width:1000, height:333});
	$("#studyPopTapCtn_4_img").css('background', 'url(../img/studyPop/layout/layoutBG.png) no-repeat 0px 0px');

	$("#studyPopTapCtn_4_bg_img").css('position', 'absolute');
	$("#studyPopTapCtn_4_bg_img").css({left: 40, top: 70, width:1000, height:333});
		
	
	var circleExplainArr = 
	[
		"현재 학습하고 있는 차시명입니다.",
		
		"목차 열기 클릭 시 본 차시의 학습흐름을 볼 수 있습니다.<br>각 흐름을 클릭하면 해당 페이지로 이동합니다.",
		
		"- 학습 도우미 : 과정 개요 및 학습 전개 방식, 수료 기준 등을 확인할 수 있습니다."+
		"<br>- 시연 영상 : 실제 보육현장의 시연 영상을 확인할 수 있습니다."+
		"<br>- 즐겨찾기 : 학습 중 페이지를 즐겨찾기 할 수 있습니다."+
		"<br>- 메모 : 학습 중 필요사항을 메모할 수 있습니다."+
		"<br>- 질문하기 : 학습 내용과 관련된 질문을 할 수 있습니다.",
		
		"현재 페이지에서 학습의 진행 정도와 진행 시간을 확인할 수 있습니다.",
		
		"학습을 재생, 일시정지, 다시보기 할 수 있습니다.",
		
		"이전 또는 다음 학습 화면으로 이동할 수 있습니다."
	];

	var circleHtml = "";
	for(var i=1; i<=6; i++){
		circleHtml += 
			'<div id="studyPopTapCtn_4_circleBtn_'+i+'"></div>'+
			'<div id="studyPopTapCtn_4_circleExplain_'+i+'"></div>'
	}
	$("#studyPopTapCtn_4").append(circleHtml);
	
	var circlePosX = [240, 340, 744, 490, 660, 754];
	var circlePosY = [80, 340, 104, 340, 340, 340];
	
	var circleExplainPosX = [240, 340, 360, 400, 460, 500];
	var circleExplainPosY = [120, 280, 140, 300, 300, 300];

	for(var k=1; k<=6; k++){
		$("#studyPopTapCtn_4_circleBtn_"+k).css('cursor', 'pointer');
		$("#studyPopTapCtn_4_circleBtn_"+k).attr('value', k);
		$("#studyPopTapCtn_4_circleBtn_"+k).css('position', 'absolute');
		$("#studyPopTapCtn_4_circleBtn_"+k).css({left: circlePosX[k-1], top: circlePosY[k-1], width:28, height:28});
		$("#studyPopTapCtn_4_circleBtn_"+k).css('background-color', '#000000');

		$("#studyPopTapCtn_4_circleBtn_"+k).css('border-radius', '50%');
		$("#studyPopTapCtn_4_circleBtn_"+k).css('font-family', 'SCDream5');
		$("#studyPopTapCtn_4_circleBtn_"+k).css('color', '#ffffff');
		$("#studyPopTapCtn_4_circleBtn_"+k).css('font-size', '16.5px');
		$("#studyPopTapCtn_4_circleBtn_"+k).css('text-align', 'center');
		$("#studyPopTapCtn_4_circleBtn_"+k).css('line-height', '28px');

		$("#studyPopTapCtn_4_circleBtn_"+k).html(k);
		
		$("#studyPopTapCtn_4_circleExplain_"+k).css('display', 'none');
		$("#studyPopTapCtn_4_circleExplain_"+k).css('position', 'absolute');
		$("#studyPopTapCtn_4_circleExplain_"+k).css({left: circleExplainPosX[k-1], top: circleExplainPosY[k-1], width:"auto", height:"auto"});
		$("#studyPopTapCtn_4_circleExplain_"+k).css('background-color', '#ffffff');
		$("#studyPopTapCtn_4_circleExplain_"+k).css('border', "3px solid #6ac8c0");
		$("#studyPopTapCtn_4_circleExplain_"+k).css('padding', "5px 8px 3px 8px");

		$("#studyPopTapCtn_4_circleExplain_"+k).css('font-family', 'GmarketSansMedium');
		$("#studyPopTapCtn_4_circleExplain_"+k).css('color', '#000000');
		$("#studyPopTapCtn_4_circleExplain_"+k).css('font-size', '15px');
		
		$("#studyPopTapCtn_4_circleExplain_"+k).html(circleExplainArr[k-1]);
		//console.log( circleExplainArr[k-1] );

		$("#studyPopTapCtn_4_circleBtn_"+k).mouseover(function(e) {
			var num = $(this).attr('value');
			$(this).css('background-color', '#6ac8c0');
		
			$("#studyPopTapCtn_4_bg_img").css('background', 'url(../img/studyPop/layout/layout'+num+'.png) no-repeat 0px 0px');
			$("#studyPopTapCtn_4_circleExplain_"+num).show();
		});

		$("#studyPopTapCtn_4_circleBtn_"+k).mouseout(function(e) {
			var num = $(this).attr('value');
			$(this).css('background-color', '#000000');
			$("#studyPopTapCtn_4_bg_img").css('background', 'url() no-repeat 0px 0px');
			$("#studyPopTapCtn_4_circleExplain_"+num).hide();
		});
	}




	/////////// 수료기준 /////////////
	$("#studyPopTapCtn_5").css('display', 'none');
	$("#studyPopTapCtn_5").css('position', 'absolute');
	$("#studyPopTapCtn_5").css({left: 10, top: 270, width:1080, height:400});
	//$("#studyPopTapCtn_5").css('border', "1px solid black");
	
	$("#studyPopTapCtn_5_txt").css('position', 'absolute');
	$("#studyPopTapCtn_5_txt").css('font-family', 'GmarketSansBold');
	$("#studyPopTapCtn_5_txt").css('font-size', '25px');
	//$("#studyPopTapCtn_5_txt").css('line-height', '39px');
	$("#studyPopTapCtn_5_txt").css('letter-spacing', '-1px');
	$("#studyPopTapCtn_5_txt").css({left: 40, top: 6});
	
	$("#studyPopTapCtn_5_tableCtn").css('position', 'absolute');
	$("#studyPopTapCtn_5_tableCtn").css({left: 40, top: 50});

	

	//////////////////////////////////////////////////////////////////////////////////

	for(var i=1; i<=5; i++){
		$("#studyPopTapBtn_"+i).css('cursor', 'pointer');
		$("#studyPopTapBtn_"+i).attr('value', i);

		$("#studyPopTapBtn_"+i).mouseover(function(e) {
			//$(this).css("background-position-y", "-40px");
			$(this).children(".studyPopTapBtnText").css('color', '#ffffff');
			$(this).children(".studyPopTapBtnText").css('background-color', '#6ac8c0');
		});

		$("#studyPopTapBtn_"+i).mouseout(function(e) {
			if($(this).attr('value') != studyIndex){
				$(this).children(".studyPopTapBtnText").css('color', '#000000');
				$(this).children(".studyPopTapBtnText").css('background-color', 'transparent');
			}			
			//$(this).css("background-position-y", "0px");
		});

		$("#studyPopTapBtn_"+i).click(function() {
			if(studyCurBtn && studyIndex != $(this).attr('value')){
				studyCurBtn.children(".studyPopTapBtnText").css('color', '#000000');
				studyCurBtn.children(".studyPopTapBtnText").css('background-color', 'transparent');
			}
			
			studyIndex = $(this).attr('value');
			studyCurBtn = $(this);
			
			studyPopTapInit(studyIndex);
		});
	}
		
	$("#studyPopTapBtn_1").mouseover();
	$("#studyPopTapBtn_1").click();

	
}

function studyPopTapInit(num){
	$("#studyPopTapCtn_2").scrollTop(0);
	
	$("#studyPopTapCtn_3_btn_1").mouseover();
	$("#studyPopTapCtn_3_btn_1").click();

	for(var i=1; i<=5; i++){
		$("#studyPopTapCtn_"+i).hide();
	}
	$("#studyPopTapCtn_"+num).show();
}




//////////////////////////////// 학습도우미 레이아웃 /////////////////////

// 과정개요
function studyPop_layout(){
	var htmlStr = 
	'<div id="studyPopTitleIcon"></div>'+
	'<div id="studyPopTitleLine"></div>'+
	'<div id="studyPopTitle"></div>'+

	'<div id="studyPopTapBtn_1"> <div class="studyPopTapBtnText">과정개요</div> </div>'+
	'<div id="studyPopTapBtn_2"> <div class="studyPopTapBtnText">과정구성</div> </div>'+
	'<div id="studyPopTapBtn_3"> <div class="studyPopTapBtnText">학습전개</div> </div>'+
	'<div id="studyPopTapBtn_4"> <div class="studyPopTapBtnText">화면구성</div> </div>'+
	'<div id="studyPopTapBtn_5"> <div class="studyPopTapBtnText">수료기준</div> </div>'+
	
	'<div id="studyPopTapLine_1"></div>'+
	'<div id="studyPopTapLine_2"></div>'+
	'<div id="studyPopTapLine_3"></div>'+
	'<div id="studyPopTapLine_4"></div>'+

	'<div id="studyPopCloseBtn"></div>'+
	
	// 과정개요
	'<div id="studyPopTapCtn_1">'+
		'<div id="studyPopTapCtn_1_txt">본 과정의 <font color="#6ac8c0">개요</font>는 다음과 같습니다.</div>'+
			
		'<div id="studyPopTapCtn_1_txt_icon_1"></div>'+
		'<div id="studyPopTapCtn_1_txt_1">과정명 : 영유아교사를 위한 안전교육지도</div>'+
		
		'<div id="studyPopTapCtn_1_txt_icon_2"></div>'+
		'<div id="studyPopTapCtn_1_txt_2">과정목표</div>'+

		'<div id="studyPopTapCtn_1_txt_3">'+
		'영유아 안전교육의 목적과 내용을 이해하고, 영유아 안전교육 교육계획을 수립할 수 있다.'+
		'<br>영유아 발달특성과 안전사고 유형을 이해하고, 어린이집에서 연령별 안전교육을 지도할 수 있다.'+
		'<br>영유아 안전사고 사례 및 사고 예방법을 알고, 그 대응 방안을 수립할 수 있다.'+
		'<br>영유아 안전사고 유형별 행동수칙을 알고, 실제 안전사고 발생 시 신속, 정확하게 대응 할 수 있다.'+
		//'<br>보육교직원으로 갖추어야 할 인성 및 태도를 함양할 수 있다.'+
		'</div>'+
		
		'<div id="studyPopTapCtn_1_txt_icon_4"></div>'+
		'<div id="studyPopTapCtn_1_txt_4">학습대상</div>'+
		
		'<div id="studyPopTapCtn_1_txt_5">'+
		'영유아 보육을 담당하고자 하는 보육교사 및 어린이집 원장'+
		'<br>영유아 보육을 담당하고 있는 일반직무교육 대상자'+
		'</div>'+

		'<div id="studyPopTapCtn_1_txt_icon_6"></div>'+
		'<div id="studyPopTapCtn_1_txt_6">학습시간 : 5주 (24시간)</div>'+

		'<div id="studyPopTapCtn_1_txt_dot_1"></div>'+
		'<div id="studyPopTapCtn_1_txt_dot_2"></div>'+
		'<div id="studyPopTapCtn_1_txt_dot_3"></div>'+
		'<div id="studyPopTapCtn_1_txt_dot_4"></div>'+
		//'<div id="studyPopTapCtn_1_txt_dot_5"></div>'+
		'<div id="studyPopTapCtn_1_txt_dot_6"></div>'+
		'<div id="studyPopTapCtn_1_txt_dot_7"></div>'+
	'</div>'+
	
	// 과정구성
	'<style>'+
		'.studyPopTapCtn_2_box-wrap{ display:flex; width:100%; height:100%; flex-flow:wrap;}'+
	'</style>'+
	'<div id="studyPopTapCtn_2">'+
		'<div class="studyPopTapCtn_2_box-wrap"></div>'+
	'</div>'+
	
	// 학습전개
	'<div id="studyPopTapCtn_3">'+
		'<div id="studyPopTapCtn_3_txt">본 과정은 다음과 같은 <font color="#6ac8c0">흐름</font>으로 진행됩니다.</div>'+

		'<div id="studyPopTapCtn_3_line_1"></div>'+
		'<div id="studyPopTapCtn_3_line_2"></div>'+
		'<div id="studyPopTapCtn_3_line_3"></div>'+

		'<div id="studyPopTapCtn_3_btn_1"> <div class="stage3_tapBtnText">들어가기</div> </div>'+
		'<div id="studyPopTapCtn_3_btn_2"> <div class="stage3_tapBtnText">학습하기</div> </div>'+
		'<div id="studyPopTapCtn_3_btn_3"> <div class="stage3_tapBtnText">적용하기</div> </div>'+
		'<div id="studyPopTapCtn_3_btn_4"> <div class="stage3_tapBtnText">정리하기</div> </div>'+
		
		'<div id="studyPopTapCtn_3_sub_icon">※</div>'+
		'<div id="studyPopTapCtn_3_sub_txt">단계별 탭을 클릭하여 내용을 확인해 보세요.</div>'+
		
		// 첫번째 탭
		'<div id="studyPopTapCtn_3_btnTap_1">'+
			'<div id="studyPopTapCtn_3_btnTap_1_img"></div>'+

			'<div id="studyPopTapCtn_3_btnTap_1_icon_1"></div>'+
			'<div id="studyPopTapCtn_3_btnTap_1_txt_1">오늘의 이야기 : 학습 주제와 관련된 이야기를 통해 동기 유발 및 주제 인지</div>'+

			'<div id="studyPopTapCtn_3_btnTap_1_icon_2"></div>'+
			'<div id="studyPopTapCtn_3_btnTap_1_txt_2">학습목표 : 학습 주제와 학습 목표 제공</div>'+
		'</div>'+		
		
		// 두번째 탭
		'<div id="studyPopTapCtn_3_btnTap_2">'+
			'<div id="studyPopTapCtn_3_btnTap_2_img"></div>'+

			'<div id="studyPopTapCtn_3_btnTap_2_icon_1"></div>'+
			'<div id="studyPopTapCtn_3_btnTap_2_txt_1">본 학습</div>'+

			'<div id="studyPopTapCtn_3_txt_dot_1"></div>'+
			'<div id="studyPopTapCtn_3_txt_dot_2"></div>'+
			
			'<div id="studyPopTapCtn_3_btnTap_1_sub_txt">'+
				'학습 주제와 관련된 세부 내용을 강사 강의를 통해 전달'+
				'<br>시연이 필요한 부분은 보육현장의 시연 영상 제공'+
			'</div>'+
		'</div>'+
		
		// 세번째 탭
		'<div id="studyPopTapCtn_3_btnTap_3">'+
			'<div id="studyPopTapCtn_3_btnTap_3_img"></div>'+

			'<div id="studyPopTapCtn_3_btnTap_3_icon_1"></div>'+
			'<div id="studyPopTapCtn_3_btnTap_3_txt_1">생각해보기</div>'+

			'<div id="studyPopTapCtn_3_btnTap_3_txt_dot_1"></div>'+
			'<div id="studyPopTapCtn_3_btnTap_3_txt_dot_2"></div>'+
			
			'<div id="studyPopTapCtn_3_btnTap_3_btnTap_1_sub_txt">'+
				'현장에서 발생하는 문제 사례에 대한 학습자의 의견 작성'+
				'<br>타 학습자 의견 공유 및 전문가의 피드백 제공'+
			'</div>'+
		'</div>'+
		
		// 네번째 탭
		'<div id="studyPopTapCtn_3_btnTap_4">'+
			'<div id="studyPopTapCtn_3_btnTap_4_img"></div>'+

			'<div id="studyPopTapCtn_3_btnTap_4_icon_1"></div>'+
			'<div id="studyPopTapCtn_3_btnTap_4_txt_1">학습 퀴즈 : 학습 주제와 관련된 선다형 3문항 제시</div>'+

			'<div id="studyPopTapCtn_3_btnTap_4_icon_2"></div>'+
			'<div id="studyPopTapCtn_3_btnTap_4_txt_2">학습 정리 : 학습 주제별 요약 정리, 참고문헌 제공</div>'+
		'</div>'+

	'</div>'+
	



	// 화면구성
	'<div id="studyPopTapCtn_4">'+
		'<div id="studyPopTapCtn_4_txt">본 과정은 다음과 같은 <font color="#6ac8c0">화면</font>으로 구성되어 있습니다.</div>'+
		
		'<div id="studyPopTapCtn_4_sub_icon">※</div>'+
		'<div id="studyPopTapCtn_4_sub_txt">각 영역 숫자에 마우스를 오버해 내용을 확인하세요.</div>'+
		
		'<div id="studyPopTapCtn_4_img"></div>'+
		'<div id="studyPopTapCtn_4_bg_img"></div>'+

	'</div>'+
	
	// 수료기준
	'<div id="studyPopTapCtn_5">'+
		'<div id="studyPopTapCtn_5_txt">본 과정의 <font color="#6ac8c0">수료 기준</font>은 다음과 같습니다.</div>'+
		
		
		'<div id="studyPopTapCtn_5_tableCtn">'+
			
			'<table class="help-table">'+
			'<thead>'+
			'<tr>'+
			'<th rowspan="2" class="table-top-left-corner" style="widtn:10%;">평가항목</th>'+
			'<th class="td-bg-mint" style="widtn:30%;">진도율</th>'+
			'<th class="td-bg-mint" style="widtn:30%;">진행단계평가</th>'+
			'<th class="td-bg-mint table-top-right-corner" style="widtn:30%;">최종평가(시험+과제)</th>'+
			'</tr>'+
			'<tr>'+
			'<td>100%(필수)</td>'+
			'<td>20%</td>'+
			'<td>80%</td>'+
			'</tr>'+
			'</thead>'+
			'<tbody>'+
			'<tr>'+
			'<td class="td-th">수료기준</td>'+
			'<td class="td-align-left" colspan="3" style="padding-left:30px; line-height:34px;">'+
			'전체 <font color="#6ac8c0">진도율 100%</font> 필수(100% 미만 시 미수료)'+
			'<br>진행단계평가+최종평가(시험+과제) 합산점수 <font color="#6ac8c0">총점 60점 이상</font> 수료'+
			'</td>'+
			'</tr>'+
			'<tr>'+
			'<td class="td-th table-bottom-left-corner">유의사항</td>'+
			'<td colspan="3" class="table-bottom-right-corner" style="padding-left:30px; line-height:34px;">'+
			'평가는 최초 1회만 응시 가능(재응시 불가)'+
			'<br>평가는 과정기간 종료일까지 완료해야 함'+
			'<br>· 진행단계평가 : 진도율 50%이상 학습 후 1개월차 안에 응시 가능'+
			'<br>· 최종평가 : 진도율 100%이상 학습 후 2개월차에 응시 가능'+
			'</td>'+
			'</tr>'+
			'</tbody>'+
			'</table>'+
			

		'</div>'+
		


	'</div>';

	$("#studyPopCtn").append(htmlStr);
	
	$("#studyPopCtn").css('position', 'absolute');
	$("#studyPopCtn").css({left: 0, top: 0, width:1100, height:680});
	$("#studyPopCtn").css('background', 'url(../img/studyPop/extraBG.png) no-repeat 0px 0px');
	
	$(".studyPopTapBtnText").css('position', 'absolute');
	$(".studyPopTapBtnText").css({left: 0, top: 85, width:100, height:34});
	//$(".studyPopTapBtnText").css('background-color', '#6ac8c0');
	//$(".studyPopTapBtnText").css('background-color', 'transparent');
	$(".studyPopTapBtnText").css('color', '#000000');
	$(".studyPopTapBtnText").css("text-align", "center");
	$(".studyPopTapBtnText").css('font-family', 'GmarketSansMedium');
	$(".studyPopTapBtnText").css('font-size', '19px');
	$(".studyPopTapBtnText").css('line-height', '39px');
	$(".studyPopTapBtnText").css('letter-spacing', '-1px');

	//$("#indexBtn").children(".toolTipText").css("text-align", "center");

	$("#studyPopTitle").css('position', 'absolute');
	$("#studyPopTitle").css({left: 450, top: 70});
	$("#studyPopTitle").css('padding', '0px 10px');
	$("#studyPopTitle").css('font-family', 'GmarketSansBold');
	$("#studyPopTitle").css('font-size', '45px');
	$("#studyPopTitle").css('color', '#000000');
	$("#studyPopTitle").css('letter-spacing', '-1px');
	$("#studyPopTitle").html("학습 도우미");
	
	$("#studyPopTitleLine").css('position', 'absolute');
	$("#studyPopTitleLine").css({left: 450, top: 104, width:244, height:13});
	$("#studyPopTitleLine").css('background-color', '#ffe49c');
	
	$("#studyPopTitleIcon").css('position', 'absolute');
	$("#studyPopTitleIcon").css({left: 406, top: 57, width:44, height:74});
	$("#studyPopTitleIcon").css('background', 'url(../img/studyPop/help.png) no-repeat 0px 0px');
	
	$("#studyPopCloseBtn").css('position', 'absolute');
	$("#studyPopCloseBtn").css({left: 1030, top: 20, width:40, height:40});
	$("#studyPopCloseBtn").css('background', 'url(../img/studyPop/close.png) no-repeat 0px 0px');
	
	
	$("#studyPopTapLine_1").css('position', 'absolute');
	$("#studyPopTapLine_1").css({left: 308, top: 166, width:1, height:60});
	$("#studyPopTapLine_1").css('background-color', '#ddd');

	$("#studyPopTapLine_2").css('position', 'absolute');
	$("#studyPopTapLine_2").css({left: 469, top: 166, width:1, height:60});
	$("#studyPopTapLine_2").css('background-color', '#ddd');

	$("#studyPopTapLine_3").css('position', 'absolute');
	$("#studyPopTapLine_3").css({left: 630, top: 166, width:1, height:60});
	$("#studyPopTapLine_3").css('background-color', '#ddd');

	$("#studyPopTapLine_4").css('position', 'absolute');
	$("#studyPopTapLine_4").css({left: 791, top: 166, width:1, height:60});
	$("#studyPopTapLine_4").css('background-color', '#ddd');

	$("#studyPopTapBtn_1").css('position', 'absolute');
	$("#studyPopTapBtn_1").css({left: 178, top: 136, width:100, height:90});
	$("#studyPopTapBtn_1").css('background', 'url(../img/studyPop/outline.png) no-repeat 0px 0px');
	//$("#studyPopTapBtn_1").css('border', "1px solid black");

	$("#studyPopTapBtn_2").css('position', 'absolute');
	$("#studyPopTapBtn_2").css({left: 339, top: 136, width:100, height:90});
	$("#studyPopTapBtn_2").css('background', 'url(../img/studyPop/course.png) no-repeat 0px 0px');

	$("#studyPopTapBtn_3").css('position', 'absolute');
	$("#studyPopTapBtn_3").css({left: 500, top: 136, width:100, height:90});
	$("#studyPopTapBtn_3").css('background', 'url(../img/studyPop/flow.png) no-repeat 0px 0px');

	$("#studyPopTapBtn_4").css('position', 'absolute');
	$("#studyPopTapBtn_4").css({left: 661, top: 136, width:100, height:90});
	$("#studyPopTapBtn_4").css('background', 'url(../img/studyPop/layout.png) no-repeat 0px 0px');
	
	$("#studyPopTapBtn_5").css('position', 'absolute');
	$("#studyPopTapBtn_5").css({left: 822, top: 136, width:100, height:90});
	$("#studyPopTapBtn_5").css('background', 'url(../img/studyPop/complete.png) no-repeat 0px 0px');
	
}

function studyPop_fullscreen(posX, scale){
	$('#studyPopCtn').css("left", posX );
	$('#studyPopCtn').css('transform', 'scale(' + scale + ')');
	$('#studyPopCtn').css('msTransform', 'scale(' + scale + ')');
	$('#studyPopCtn').css('-webkit-transform', 'scale(' + scale + ')');
	$('#studyPopCtn').css('-moz-transform', 'scale(' + scale + ')');
	$('#studyPopCtn').css('-o-transform', 'scale(' + scale + ')');
	
	$('#studyPopCtn').css('transform-origin', '0 0');
	$('#studyPopCtn').css('msTransform-origin', '0 0');
	$('#studyPopCtn').css('-webkit-transform-origin', '0 0');
	$('#studyPopCtn').css('-moz-transform-origin', '0 0');
	$('#studyPopCtn').css('-o-transform-origin', '0 0');
}