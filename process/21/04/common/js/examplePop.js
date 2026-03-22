function examplePopInit(){
	//$("#examplePopCtn").css('display', 'none');
	$("#examplePopCtn").css("opacity", "0");
	$("#examplePopCtn").css('pointer-events', 'none');
	$("#examplePopCtn").css('position', 'absolute');
	$("#examplePopCtn").css({left: 0, top: 0, width:1100, height:680});
	$("#examplePopCtn").css('background-color', '#ffffff');
	
	var htmlStr = 
	'<style>'+
		'.examplePop_box-wrap{ display:flex; width:100%; height:100%; flex-flow:wrap;}'+
	'</style>'+
	'<div id="examplePopTitleIcon"></div>'+
	'<div id="examplePopTitleLine"></div>'+
	'<div id="examplePopTitle"></div>'+

	'<div id="examplePopThumbCtn"> <div class="examplePop_box-wrap"></div> </div>'+
	
	'<div id="examplePopCloseBtn"></div>'

	$("#examplePopCtn").append(htmlStr);

	$("#examplePopTitle").css('position', 'absolute');
	$("#examplePopTitle").css({left: 490, top: 70});
	$("#examplePopTitle").css('padding', '0px 10px');
	$("#examplePopTitle").css('font-family', 'GmarketSansBold');
	$("#examplePopTitle").css('font-size', '45px');
	$("#examplePopTitle").css('color', '#000000');
	$("#examplePopTitle").css('letter-spacing', '-1px');
	$("#examplePopTitle").html("사례모음");
	
	$("#examplePopTitleLine").css('position', 'absolute');
	$("#examplePopTitleLine").css({left: 490, top: 104, width:190, height:13});
	$("#examplePopTitleLine").css('background-color', '#ffe49c');
	
	$("#examplePopTitleIcon").css('position', 'absolute');
	$("#examplePopTitleIcon").css({left: 421, top: 57, width:69, height:74});
	$("#examplePopTitleIcon").css('background', 'url(../img/studyPop/tip.png) no-repeat 0px 0px');
	
	$("#examplePopCloseBtn").css('position', 'absolute');
	$("#examplePopCloseBtn").css({left: 1030, top: 20, width:40, height:40});
	$("#examplePopCloseBtn").css('background', 'url(../img/studyPop/close.png) no-repeat 0px 0px');
	
	$("#examplePopThumbCtn").css('position', 'absolute');
	$("#examplePopThumbCtn").css({left: 10, top: 140, width:1080, height:530});
	//$("#examplePopThumbCtn").css('border', "1px solid black");
	$("#examplePopThumbCtn").css('overflow-x', "hidden");
	$("#examplePopThumbCtn").css('overflow-y', "auto");
	
	var thumbW = 300;
	var thumbH = 184;
	
	for(var i=1; i<=24; i++){
		var thumbHtml = '<div id="examplePop_thumb_'+i+'"> <div id="thumbText"></div> </div>';
		$(".examplePop_box-wrap").append(thumbHtml);

		$("#examplePop_thumb_"+i).css({width:thumbW, height:thumbH});
		$("#examplePop_thumb_"+i).css('background-color', '#333333');
		$("#examplePop_thumb_"+i).css("display", "flex");
		
		//$("#examplePop_thumb_"+i).css('color', '#ffffff');
		//$("#examplePop_thumb_"+i).html(i);

		$("#examplePop_thumb_"+i).css("margin-left", 40);
		$("#examplePop_thumb_"+i).css("margin-top", 20);
		$("#examplePop_thumb_"+i).css("margin-bottom", 52);

		
		$("#examplePop_thumb_"+i).children("#thumbText").css({width:thumbW, height:30});
		$("#examplePop_thumb_"+i).children("#thumbText").css("margin-top", thumbH);
		$("#examplePop_thumb_"+i).children("#thumbText").css('border', "1px solid red");

		$("#examplePop_thumb_"+i).children("#thumbText").css('font-family', 'GmarketSansMedium');
		$("#examplePop_thumb_"+i).children("#thumbText").css('font-size', '20px');
		$("#examplePop_thumb_"+i).children("#thumbText").css('text-align', 'center');
		$("#examplePop_thumb_"+i).children("#thumbText").css('line-height', '34px');

		$("#examplePop_thumb_"+i).children("#thumbText").html(i+"차시");

		$("#examplePop_thumb_"+i).css('cursor', "pointer");
		$("#examplePop_thumb_"+i).click(function() {
			examplePopHide();
			var url = "../vod/01/tip.mp4";
			popupVideoStart(url, "사례모음");
		});
	}
	
	//$(".examplePop_box-wrap").css('border', "1px solid red");
	
	if(!mobileCheck){	
		$("#examplePopThumbCtn").mCustomScrollbar({theme:"dark-3"});
	}

	$("#examplePopCloseBtn").css('cursor', "pointer");
	$("#examplePopCloseBtn").mouseover(function(e) {
		gsap.to($(this), 0.5, {
			rotation: 180
		}, 0.3)
	});

	$("#examplePopCloseBtn").mouseout(function(e) {
		gsap.to($(this), 0.5, {
			rotation: 0
		}, 0.3)
	});

	$("#examplePopCloseBtn").click(function() {
		popupVideoClose();
		$("#examplePopCtn").css('pointer-events', 'none');
		$("#examplePopCtn").css("opacity", "0");

		$("#examplePopThumbCtn").mCustomScrollbar("scrollTo","top",{ //"scrollTo"함수 사용, "위치"
			scrollInertia:0 // 이동하는 스크롤 시간
		});
	});
}

function examplePopShow(){
	videoPause();
	$("#examplePopCtn").css('pointer-events', 'auto');
	$("#examplePopCtn").css("opacity", "1");
}

function examplePopHide(){
	$("#examplePopCtn").css('pointer-events', 'none');
	gsap.to($("#examplePopCtn"), 0.5, {
		opacity: 0,
		onComplete: function () {
			//$("#examplePopCtn").hide();
		}
	})
}
