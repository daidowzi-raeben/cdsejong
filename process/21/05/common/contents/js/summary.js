// ============== last release 2021.07.01  ================ //

/*jslint browser: true, white: true, node: true*/
/*global gsap*/
"use strict";

var summary_btnType = "enabled"; // visible, enabled

var summary_title_Tl = gsap.timeline({
});
var summaryMotionChk = false;

var summary_cPage = 1;
var summary_tPage = summary_totalNum;


window.onload = function () {
	
	/*
	var print_html = '';
	print_html += '<div id="print-area" class="print-area">';
	for(var i=1; i<=print_total; i++){
		print_html += '<div class="print-page"><img src="./img/print-'+itostr(i)+'.png" /></div>';
	}	
	print_html += '</div>';
	$("body").append(print_html);
	*/

	$("#video").on('timeupdate', function() {
		var time = $(this)[0].currentTime;
		if(time > 0.5){
			if(!summaryMotionChk){
				summaryMotionStart();
			}
		}else{
			summaryMotionChk = false;
			summary_title_Tl.pause(0);
			
			summaryInit();
		}		
	});
	

	var summary_focusArr = ["sum_downBtn", "sum_printBtn", "sum_prevBtn", "sum_nextBtn"];
	for(var i=1; i<=summary_focusArr.length; i++){
		$("#"+summary_focusArr[i-1]).attr("tabindex", 0);
		$("#"+summary_focusArr[i-1]).focus(function() { focusObj = $(this); });
		$("#"+summary_focusArr[i-1]).focusout(function() { focusObj = null; });
	}

	$("#fullScreenBtn").css("opacity", "0.5");
	$("#fullScreenBtn").prop('disabled', true);
	// $("#fullScreenBtn").css('pointer-events', 'none');
	$("#fullScreenBtn").attr("tabindex", -1);
	$("#fullScreenBtn").attr("cursor", "default");
	
	//$("#sum_popImg").attr("src", "../common/contents/images/summaryPop_"+chasi+".png");
	
	//$("#sum_downBtn").html("다운로드");
	//$("#sum_printBtn").html("인쇄하기");
	//$("#sum_popBtn").html("참고문헌");
	//$("#sum_line").html("·");
	//$("#sum_popTitle_text").html("참고문헌");
	

	$("#sum_printBtn").mouseover(function() {
		$(this).css("background-position-y", "-44px");
		$(this).children(".toolTipText").show();
		$(this).children(".triangleTop").show();
	});
	
	$("#sum_printBtn").mouseout(function() {
		$(this).css("background-position-y", "0px");
		$(this).children(".toolTipText").hide();
		$(this).children(".triangleTop").hide();
	});

	$("#sum_printBtn").click(function() {
		effectCall('../common/mp3/click.mp3');
		window.open("down/summary.pdf", "_blank", 'fullscreen=no');
		//window.print();
	});
	

	$("#sum_downBtn").mouseover(function() {
		$(this).css("background-position-x", "-156px");
		$(this).children(".toolTipText").show();
		$(this).children(".triangleBottom").show();
	});
	
	$("#sum_downBtn").mouseout(function() {
		$(this).css("background-position-x", "0px");
		$(this).children(".toolTipText").hide();
		$(this).children(".triangleBottom").hide();
	});

	$("#sum_downBtn").click(function() {
		effectCall('../common/mp3/click.mp3');
		window.open("down/summary.pdf", "_blank", 'fullscreen=no');
		//var downURL = "down/summary.zip";
		//window.open(downURL);
	});
	
	
	$("#sum_popBtn").mouseover(function() {
		$(this).css("background-position-x", "-156px");
		$(this).children(".toolTipText").show();
		$(this).children(".triangleBottom").show();
	});
	
	$("#sum_popBtn").mouseout(function() {
		$(this).css("background-position-x", "0px");
		$(this).children(".toolTipText").hide();
		$(this).children(".triangleBottom").hide();
	});

	$("#sum_popBtn").click(function() {
		effectCall('../common/mp3/click.mp3');
		//$("#sum_popCtn").show();
		gsap.fromTo($("#sum_popCtn"), 0.5, {display: "none", opacity: 0}, {
			display: "block",
			opacity: 1
		})
	});
	

	$("#sum_closeBtn").mouseover(function(e) {
		gsap.to($(this), 0.5, {
			rotation: 180
		}, 0.3)
	});
	$("#sum_closeBtn").mouseout(function(e) {
		gsap.to($(this), 0.5, {
			rotation: 0
		}, 0.3)
	});

	$("#sum_closeBtn").click(function() {
		effectCall('../common/mp3/click.mp3');
		//$("#sum_popCtn").hide();
		gsap.fromTo($("#sum_popCtn"), 0.5, {display: "block", opacity: 1}, {
			display: "none",
			opacity: 0
		})
	});
	
	
	
	$("#sum_prevBtn").click(function() {
		effectCall('../common/mp3/click.mp3');
		
		summary_cPage--;

		if(summary_cPage < 1){
			summary_cPage = 1;
			return;
		}
		
		if(summary_cPage <= 1){
			if(summary_btnType == "visible"){
				$("#sum_prevBtn").hide();
				$("#sum_nextBtn").show();
			}else{
				$("#sum_prevBtn").css('opacity', "0.5");
				$("#sum_prevBtn").prop('disabled', true);
				$("#sum_prevBtn").css('pointer-events', 'none');
				$("#sum_prevBtn").css('cursor', 'default');

				$("#sum_nextBtn").css('opacity', "1");
				$("#sum_nextBtn").prop('disabled', false);
				$("#sum_nextBtn").css('pointer-events', 'auto');
				$("#sum_nextBtn").css('cursor', 'pointer');
			}
		}else{
			if(summary_btnType == "visible"){
				$("#sum_prevBtn").show();
				$("#sum_nextBtn").show();
			}else{
				$("#sum_prevBtn").css('opacity', "1");
				$("#sum_prevBtn").prop('disabled', false);
				$("#sum_prevBtn").css('pointer-events', 'auto');
				$("#sum_prevBtn").css('cursor', 'pointer');

				$("#sum_nextBtn").css('opacity', "1");
				$("#sum_nextBtn").prop('disabled', false);
				$("#sum_nextBtn").css('pointer-events', 'auto');
				$("#sum_nextBtn").css('cursor', 'pointer');
			}
		}		
		
		$("#sum_cPage").html(itostr(summary_cPage));
		$("#sum_tPage").html(itostr(summary_tPage));
		
		summary_page_fn();
	});
	
	
	$("#sum_nextBtn").click(function() {
		effectCall('../common/mp3/click.mp3');
		
		summary_cPage++;

		if(summary_cPage > summary_tPage){
			summary_cPage = summary_tPage;
			return;
		}

		if(summary_cPage >= summary_tPage){
			if(summary_btnType == "visible"){
				$("#sum_prevBtn").show();
				$("#sum_nextBtn").hide();
			}else{
				$("#sum_prevBtn").css('opacity', "1");
				$("#sum_prevBtn").prop('disabled', false);
				$("#sum_prevBtn").css('pointer-events', 'auto');
				$("#sum_prevBtn").css('cursor', 'pointer');

				$("#sum_nextBtn").css('opacity', "0.5");
				$("#sum_nextBtn").prop('disabled', true);
				$("#sum_nextBtn").css('pointer-events', 'none');
				$("#sum_nextBtn").css('cursor', 'default');
			}
		}else{		
			if(summary_btnType == "visible"){
				$("#sum_prevBtn").show();
				$("#sum_nextBtn").show();
			}else{
				$("#sum_prevBtn").css('opacity', "1");
				$("#sum_prevBtn").prop('disabled', false);
				$("#sum_prevBtn").css('pointer-events', 'auto');
				$("#sum_prevBtn").css('cursor', 'pointer');

				$("#sum_nextBtn").css('opacity', "1");
				$("#sum_nextBtn").prop('disabled', false);
				$("#sum_nextBtn").css('pointer-events', 'auto');
				$("#sum_nextBtn").css('cursor', 'pointer');
			}
		}
		
		$("#sum_cPage").html(itostr(summary_cPage));
		$("#sum_tPage").html(itostr(summary_tPage));
		
		summary_page_fn();
	});
	
	// mobileCheck

	summaryInit();
	summary_toolTipFunc();
	//summary_referenceInit();
};

function summaryInit(){
    summary_cPage = 1;
	
	if(summary_btnType == "visible"){
		$("#sum_prevBtn").hide();
		$("#sum_nextBtn").hide();
	}else{
		$("#sum_prevBtn").css('opacity', "0.5");
		$("#sum_prevBtn").prop('disabled', true);
		$("#sum_prevBtn").css('pointer-events', 'none');
		$("#sum_prevBtn").css('cursor', 'default');

		$("#sum_nextBtn").css('opacity', "1");
		$("#sum_nextBtn").prop('disabled', false);
		$("#sum_nextBtn").css('pointer-events', 'auto');
		$("#sum_nextBtn").css('cursor', 'pointer');
	}

	$("#sum_cPage").html(itostr(summary_cPage));
	$("#sum_tPage").html(itostr(summary_tPage));
		
	summary_page_fn();
}

function summary_toolTipFunc(){
	/*$("#sum_downBtn").append('<div class="triangleBottom"></div> <div class="toolTipText"></div>');
	$("#sum_downBtn").children(".triangleBottom").css('margin-top', '-12px');
	$("#sum_downBtn").children(".triangleBottom").css('margin-left', '14px');
	$("#sum_downBtn").children(".toolTipText").css({left: -26, top: -40, width:70});
	$("#sum_downBtn").children(".toolTipText").css("text-align", "center");
	$("#sum_downBtn").children(".toolTipText").html("저장하기");*/
	
	/*
	$("#sum_printBtn").append('<div class="triangleBottom"></div> <div class="toolTipText"></div>');
	$("#sum_printBtn").children(".triangleBottom").css('margin-top', '-12px');
	$("#sum_printBtn").children(".triangleBottom").css('margin-left', '16px');
	$("#sum_printBtn").children(".toolTipText").css({left: -24, top: -40, width:70});
	$("#sum_printBtn").children(".toolTipText").css("text-align", "center");
	$("#sum_printBtn").children(".toolTipText").html("인쇄하기");
	*/
	
	$("#sum_printBtn").append('<div class="triangleTop"></div> <div class="toolTipText"></div>');
	$("#sum_printBtn").children(".triangleTop").css('margin-top', '42px');
	$("#sum_printBtn").children(".triangleTop").css('margin-left', '16px');
	$("#sum_printBtn").children(".toolTipText").css({left: -24, top: 50, width:70});
	$("#sum_printBtn").children(".toolTipText").css("text-align", "center");
	$("#sum_printBtn").children(".toolTipText").html("인쇄하기");

	/*
	$("#sum_popBtn").append('<div class="triangleBottom"></div> <div class="toolTipText"></div>');
	$("#sum_popBtn").children(".triangleBottom").css('margin-top', '-12px');
	$("#sum_popBtn").children(".triangleBottom").css('margin-left', '14px');
	$("#sum_popBtn").children(".toolTipText").css({left: -26, top: -40, width:70});
	$("#sum_popBtn").children(".toolTipText").css("text-align", "center");
	$("#sum_popBtn").children(".toolTipText").html("참고문헌");*/
}

function summaryMotionStart(){
	summaryMotionChk = true;

	var contents = document.getElementById("sum_contents"),
		line = document.getElementById("sum_line"),
		cPage = document.getElementById("sum_cPage"),
		tPage = document.getElementById("sum_tPage"),
		prevBtn = document.getElementById("sum_prevBtn"),
		nextBtn = document.getElementById("sum_nextBtn"),
		downBtn = document.getElementById("sum_downBtn"),
		printBtn = document.getElementById("sum_printBtn"),
		popBtn = document.getElementById("sum_popBtn");
	
		
	var arr = [];
	if(summary_btnType == "visible"){
		arr = [line, cPage, tPage, nextBtn, printBtn];
	}else{
		arr = [line, cPage, tPage, prevBtn, nextBtn, printBtn];
	}
	
	if(summary_totalNum == 1){
		arr = [downBtn, printBtn, popBtn];
	}
	
	// 20250604 제이제이 - 기존 소스 제거\
	// summary_title_Tl.fromTo(contents, 0.5, {opacity:0, x:20}, {
	// 	display: "block",
	// 	opacity: 1,
	// 	x:0,
	// 	ease: "elastic.out(1, 0.7)",
	// }, 0.1)
	
	// .fromTo(arr, 0.5, {scale:0.5}, {
	// 	display: "block",
	// 	scale:1,
	// 	ease: "elastic.out(1, 0.7)",
	// }, 0.5)

	// start : 20250604 제이제이 -  GSAP 타겟 오류 방지용 DOM 체크 //
	arr = arr.filter(el => el && typeof el === "object" && el.nodeType === 1);
	
	// 기존소스에 if문 추가
	if (contents && contents.nodeType === 1) {
		summary_title_Tl.fromTo(contents, 0.5, {opacity:0, x:20}, {
			display: "block",
			opacity: 1,
			x:0,
			ease: "elastic.out(1, 0.7)",
		}, 0.1)
		
		.fromTo(arr, 0.5, {scale:0.5}, {
			display: "block",
			scale:1,
			ease: "elastic.out(1, 0.7)",
		}, 0.5)
	}

	if (arr.length > 0) {
		summary_title_Tl.fromTo(arr, 0.5, {
			scale: 0.5
		}, {
			display: "block",
			scale: 1,
			ease: "elastic.out(1, 0.7)",
		}, 0.5);
	}
	// end //
	

	summary_title_Tl.play();
}


function summary_page_fn(){	
	$("#sum_contents").css("background", "url(img/summary_"+itostr(summary_cPage)+".png) no-repeat 0px 0px");
}

