var practicePopArr = [
"상처 발생 시 응급처치 방법",
"코피가 났을 때 응급처치 방법",
"출혈이 있고 골절 시 응급처치 방법",
"골절 시 응급처치 방법",
"의식이 있는 영아의 기도 폐쇄 처치법",
"의식이 있는 유아의 (부분적) 기도 폐쇄 <br>처치법",
"의식이 있는 유아의 (완전한) 기도 폐쇄 <br>처치법"
];

function practicePopInit(){
	//$("#practicePopCtn").css('display', 'none');
	$("#practicePopCtn").css("opacity", "0");
	$("#practicePopCtn").css('pointer-events', 'none');
	$("#practicePopCtn").css('position', 'absolute');
	$("#practicePopCtn").css({left: 0, top: 0, width:1100, height:680});
	$("#practicePopCtn").css('background-color', '#ffffff');
	
	var htmlStr = 
	'<style>'+
		'.practicePop_box-wrap{ display:flex; width:100%; height:100%; flex-flow:wrap;}'+
	'</style>'+
	'<div id="practicePopTitleIcon"></div>'+
	'<div id="practicePopTitleLine"></div>'+
	'<div id="practicePopTitle"></div>'+

	'<div id="practicePopThumbCtn"> <div class="practicePop_box-wrap"></div> </div>'+
	
	'<div id="practicePopCloseBtn"></div>'

	$("#practicePopCtn").append(htmlStr);

	$("#practicePopTitle").css('position', 'absolute');
	$("#practicePopTitle").css({left: 460, top: 70});
	$("#practicePopTitle").css('padding', '0px 10px');
	$("#practicePopTitle").css('font-family', 'GmarketSansBold');
	$("#practicePopTitle").css('font-size', '45px');
	$("#practicePopTitle").css('color', '#000000');
	$("#practicePopTitle").css('letter-spacing', '-1px');
	$("#practicePopTitle").html("실습 영상");
	
	$("#practicePopTitleLine").css('position', 'absolute');
	$("#practicePopTitleLine").css({left: 460, top: 104, width:190, height:13});
	$("#practicePopTitleLine").css('background-color', '#ffe49c');
	
	$("#practicePopTitleIcon").css('position', 'absolute');
	$("#practicePopTitleIcon").css({left: 410, top: 57, width:55, height:74});
	$("#practicePopTitleIcon").css('background', 'url(../img/studyPop/vod.png) no-repeat 0px 0px');
	
	$("#practicePopCloseBtn").css('position', 'absolute');
	$("#practicePopCloseBtn").css({left: 1030, top: 20, width:40, height:40});
	$("#practicePopCloseBtn").css('background', 'url(../img/studyPop/close.png) no-repeat 0px 0px');
	
	$("#practicePopThumbCtn").css('position', 'absolute');
	$("#practicePopThumbCtn").css({left: 10, top: 140, width:1080, height:530});
	//$("#practicePopThumbCtn").css('border', "1px solid black");
	$("#practicePopThumbCtn").css('overflow-x', "hidden");
	$("#practicePopThumbCtn").css('overflow-y', "auto");
	
	var thumbW = 300;
	var thumbH = 184;
	
	for(var i=1; i<=practicePopArr.length; i++){
		var thumbHtml = 
			'<div id="practicePop_thumb_'+i+'">'+
				'<div id="thumbImg"></div>'+
				'<div id="thumbCover"></div>'+

				'<div id="thumbCoverIcon">'+
					'<div id="thumbCoverIcon_bg"></div>'+
					'<div id="thumbCoverIcon_arrow"></div>'+
				'</div>'+

				'<div id="thumbText"></div>'+
			'</div>';
		$(".practicePop_box-wrap").append(thumbHtml);
		
		
		$("#practicePop_thumb_"+i).css({width:thumbW, height:thumbH});
		$("#practicePop_thumb_"+i).css('background-color', '#333333');
		$("#practicePop_thumb_"+i).css("display", "flex");
		
		//$("#practicePop_thumb_"+i).css('color', '#ffffff');
		//$("#practicePop_thumb_"+i).html(i);

		$("#practicePop_thumb_"+i).css("margin-left", 40);
		$("#practicePop_thumb_"+i).css("margin-top", 10);
		$("#practicePop_thumb_"+i).css("margin-bottom", 72);
		
		$("#practicePop_thumb_"+i).children("#thumbImg").css('position', 'absolute');
		$("#practicePop_thumb_"+i).children("#thumbImg").css({width:288, height:173});
		$("#practicePop_thumb_"+i).children("#thumbImg").css("margin-top", 5);
		$("#practicePop_thumb_"+i).children("#thumbImg").css("margin-left", 6);
		$("#practicePop_thumb_"+i).children("#thumbImg").css('background', 'url(../img/practicePop/vod-'+itostr(i)+'.png) no-repeat 0px 0px');

		$("#practicePop_thumb_"+i).children("#thumbCover").css('position', 'absolute');
		$("#practicePop_thumb_"+i).children("#thumbCover").css({width:288, height:173});
		$("#practicePop_thumb_"+i).children("#thumbCover").css("margin-top", 5);
		$("#practicePop_thumb_"+i).children("#thumbCover").css("margin-left", 6);
		$("#practicePop_thumb_"+i).children("#thumbCover").css('background-color', '#000000');
		$("#practicePop_thumb_"+i).children("#thumbCover").css('opacity', '0.5');
		
		$("#practicePop_thumb_"+i).children("#thumbCoverIcon").val(i);
		$("#practicePop_thumb_"+i).children("#thumbCoverIcon").css('position', 'absolute');
		$("#practicePop_thumb_"+i).children("#thumbCoverIcon").css({width:thumbW, height:thumbH});
		$("#practicePop_thumb_"+i).children("#thumbCoverIcon").children("#thumbCoverIcon_bg").css('position', 'absolute');
		$("#practicePop_thumb_"+i).children("#thumbCoverIcon").children("#thumbCoverIcon_bg").css({width:50, height:50});
		$("#practicePop_thumb_"+i).children("#thumbCoverIcon").children("#thumbCoverIcon_bg").css("margin-top", 62);
		$("#practicePop_thumb_"+i).children("#thumbCoverIcon").children("#thumbCoverIcon_bg").css("margin-left", 119);
		$("#practicePop_thumb_"+i).children("#thumbCoverIcon").children("#thumbCoverIcon_bg").css('background-color', '#6ac8c0');
		$("#practicePop_thumb_"+i).children("#thumbCoverIcon").children("#thumbCoverIcon_bg").css('border-radius', '25px');
		
		$("#practicePop_thumb_"+i).children("#thumbCoverIcon").children("#thumbCoverIcon_arrow").css('position', 'absolute');
		$("#practicePop_thumb_"+i).children("#thumbCoverIcon").children("#thumbCoverIcon_arrow").css("margin-top", 78);
		$("#practicePop_thumb_"+i).children("#thumbCoverIcon").children("#thumbCoverIcon_arrow").css("margin-left", 136);
		$("#practicePop_thumb_"+i).children("#thumbCoverIcon").children("#thumbCoverIcon_arrow").css('border-top', '9px solid transparent');
		$("#practicePop_thumb_"+i).children("#thumbCoverIcon").children("#thumbCoverIcon_arrow").css('border-left', '18px solid #ffffff');
		$("#practicePop_thumb_"+i).children("#thumbCoverIcon").children("#thumbCoverIcon_arrow").css('border-bottom', '9px solid transparent');

		$("#practicePop_thumb_"+i).children("#thumbText").css({width:thumbW, height:68});
		//$("#practicePop_thumb_"+i).children("#thumbText").css("top", (thumbH+8) * i );
		$("#practicePop_thumb_"+i).children("#thumbText").css("margin-top", thumbH+6);
		//$("#practicePop_thumb_"+i).children("#thumbText").css('border', "1px solid red");
		$("#practicePop_thumb_"+i).children("#thumbText").css('font-family', 'GmarketSansMedium');
		$("#practicePop_thumb_"+i).children("#thumbText").css('font-size', '18px');
		//$("#practicePop_thumb_"+i).children("#thumbText").css('text-align', 'center');
		$("#practicePop_thumb_"+i).children("#thumbText").css('line-height', '22px');
		$("#practicePop_thumb_"+i).children("#thumbText").html("실습"+i+"<br>"+practicePopArr[i-1]);
		

		$("#practicePop_thumb_"+i).children("#thumbCoverIcon").css('cursor', "pointer");
		$("#practicePop_thumb_"+i).children("#thumbCoverIcon").click(function() {
			practicePopHide();
			var num = $(this).val();
			var url = "../vod/practice/vod-"+itostr(num)+".mp4";
			popupVideoStart(url, "실습 영상");
		});

		$("#practicePop_thumb_"+i).children("#thumbCoverIcon").on('mouseover', function(e) {
			//$(this).css("background-position-y", "-34px");
			var num = $(this).val();
			$("#practicePop_thumb_"+num).children("#thumbCover").css('opacity', '0');
			$("#practicePop_thumb_"+num).css('background-color', '#6ac8c0');

			$("#practicePop_thumb_"+num).children("#thumbCoverIcon").children("#thumbCoverIcon_arrow").css('border-left', '18px solid #ffd67e');
		});

		$("#practicePop_thumb_"+i).children("#thumbCoverIcon").on('mouseout', function(e) {
			//$(this).css("background-position-y", "0px");
			var num = $(this).val();
			$("#practicePop_thumb_"+num).children("#thumbCover").css('opacity', '0.5');
			$("#practicePop_thumb_"+num).css('background-color', '#333333');

			$("#practicePop_thumb_"+num).children("#thumbCoverIcon").children("#thumbCoverIcon_arrow").css('border-left', '18px solid #ffffff');
		});
	}
	
	//$(".practicePop_box-wrap").css('border', "1px solid red");
	
	if(!mobileCheck){	
		$("#practicePopThumbCtn").mCustomScrollbar({theme:"dark-3"});
	}

	$("#practicePopCloseBtn").css('cursor', "pointer");
	$("#practicePopCloseBtn").mouseover(function(e) {
		gsap.to($(this), 0.5, {
			rotation: 180
		}, 0.3)
	});

	$("#practicePopCloseBtn").mouseout(function(e) {
		gsap.to($(this), 0.5, {
			rotation: 0
		}, 0.3)
	});

	$("#practicePopCloseBtn").click(function() {
		popupVideoClose();
		$("#practicePopCtn").css('pointer-events', 'none');
		gsap.to($("#practicePopCtn"), 0.5, {
			opacity: 0
		}, 0.3)

		$("#practicePopThumbCtn").mCustomScrollbar("scrollTo","top",{ //"scrollTo"함수 사용, "위치"
			scrollInertia:0 // 이동하는 스크롤 시간
		});
	});
}

function practicePopShow(){
	videoPause();
	$("#practicePopCtn").css('pointer-events', 'auto');
	//$("#practicePopCtn").css("opacity", "1");
	gsap.to($("#practicePopCtn"), 0.5, {
		opacity: 1
	}, 0.3)
}

function practicePopHide(){
	$("#practicePopCtn").css('pointer-events', 'none');
	gsap.to($("#practicePopCtn"), 0.5, {
		opacity: 0,
		onComplete: function () {
			//$("#practicePopCtn").hide();
		}
	})
}

function practicePop_fullscreen(posX, scale){
	$('#practicePopCtn').css("left", posX );
	$('#practicePopCtn').css('transform', 'scale(' + scale + ')');
	$('#practicePopCtn').css('msTransform', 'scale(' + scale + ')');
	$('#practicePopCtn').css('-webkit-transform', 'scale(' + scale + ')');
	$('#practicePopCtn').css('-moz-transform', 'scale(' + scale + ')');
	$('#practicePopCtn').css('-o-transform', 'scale(' + scale + ')');
	
	$('#practicePopCtn').css('transform-origin', '0 0');
	$('#practicePopCtn').css('msTransform-origin', '0 0');
	$('#practicePopCtn').css('-webkit-transform-origin', '0 0');
	$('#practicePopCtn').css('-moz-transform-origin', '0 0');
	$('#practicePopCtn').css('-o-transform-origin', '0 0');
}