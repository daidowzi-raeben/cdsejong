var learningL_arr = [];
var learningR_arr = [];

var learningDataArr = [];

var learning_title_Tl = gsap.timeline({
	paused: true
});
var learning_left_Tl = gsap.timeline({
	paused: true
});
var learning_right_Tl = gsap.timeline({
	paused: true
});


window.onload = function () {
	pageCompCheck = true;
	
	$("#fullScreenBtn").css("opacity", "0.5");
	$("#fullScreenBtn").prop('disabled', true);
	$("#fullScreenBtn").css('pointer-events', 'none');
	$("#fullScreenBtn").attr("tabindex", -1);

	learningDataArr = learningData[0];

	var learningDiv = 
		'<div id="learning_title"></div>'+
		'<div id="learning_L"></div>'+
		'<div id="learning_R"></div>'+
		'<div id="learningCtn"></div>'

	$("#loadCtn").append(learningDiv);	
	
	$("#video").on('timeupdate', function() {
		var time = $("#video")[0].currentTime;
		
		
		if(time > 3){
			if( $("#learning_L").css('display') == "none" ){
				learning_left_Tl.restart(0);
			}			
		}else{
			learning_left_Tl.pause(0);
		}

		if(time > 5){
			if( $("#learning_R").css('display') == "none" ){
				learning_right_Tl.restart(0);
			}			
		}else{
			learning_right_Tl.pause(0);
		}
	
		/*
		/// 순차적 모션
		if(time > 0.5 && time < 9.4){
			if( $("#learning_L").css('display') == "none" ){
				learning_left_Tl.restart(0);
			}			
		}else{
			learning_left_Tl.pause(0);
		}

		if(time > 10){
			if( $("#learning_R").css('display') == "none" ){
				learning_right_Tl.restart(0);
			}			
		}else{
			learning_right_Tl.pause(0);
		}
		*/		
		


		/*
		if(time > 1){
			if( $("#learning_title").css('display') == "none" ){
				learning_title_Tl.restart(0);
			}			
		}else{
			learning_title_Tl.pause(0);
		}

		if(time > 2 && time < 5){
			if( $("#learning_L").css('display') == "none" ){
				learning_left_Tl.restart(0);
			}			
		}else{
			learning_left_Tl.pause(0);
		}

		if(time > 5){
			if( $("#learning_R").css('display') == "none" ){
				learning_right_Tl.restart(0);
			}			
		}else{
			learning_right_Tl.pause(0);
		}
		
		*/

	});
		
	
	$("#learning_title").hide();
	$("#learning_title").css('position','absolute');
	$("#learning_title").css('left','40px');
	$("#learning_title").css('top','40px');
	$("#learning_title").css('width', "234px");
	$("#learning_title").css('height', "24px");
	//$("#learning_title").css('background', 'url(../contents/images/learning_title.png) no-repeat 0px 0px');
		
	
	$("#learning_L").hide();
	$("#learning_L").css('position','absolute');
	$("#learning_L").css('left','264px');
	//$("#learning_L").css('top', learningDataArr.leftImg_sy);
	$("#learning_L").css('width', "200px");
	$("#learning_L").css('height', "47px");
	//$("#learning_L").css('background', 'url(../contents/images/learning_L.png) no-repeat 0px 0px');
	
	$("#learning_R").hide();
	$("#learning_R").css('position','absolute');
	$("#learning_R").css('left','264px');
	//$("#learning_R").css('top', learningDataArr.rightImg_sy);
	$("#learning_R").css('width', "200px");
	$("#learning_R").css('height', "46px");
	//$("#learning_R").css('background', 'url(../contents/images/learning_R.png) no-repeat 0px 0px');
	
	
	$("#learningCtn").css('position','absolute');
	

	var textColor = "#282828";
	
	
	// 학습내용
	for(var i=1; i<=learningDataArr.contents_1.length; i++){

		var str = learningDataArr.contents_1[i-1];

		var tempHtml = '<div id="learning_L_'+i+'"> '
		tempHtml += '<div id="bogiIcon"></div>'
		tempHtml += '<div id="txt"></div> </div>'
		$('#learningCtn').append(tempHtml);
		
		$("#learning_L_"+i).css('position', 'absolute');
		$("#learning_L_"+i).css("display", 'block');
		$("#learning_L_"+i).css("left", "64px");
		$("#learning_L_"+i).css("top", learningDataArr.leftStartY+"px");
		learningL_arr.push($("#learning_L_"+i));

		var bgH;
		var iconW = 38;
		var iconH = 37;

		var nodes=$("#learning_L_"+i).children();
		
		nodes.each(function(){
			//console.log($(this).attr('id'));
			
			var nodeID = $(this).attr('id');
			
			switch(nodeID){
				case "bogiIcon":
					$(this).css("position", 'absolute');
					$(this).css("width", iconW+'px');
					$(this).css("height", iconH+'px');
					$(this).css('margin-top', '10px');
					$(this).css('background', 'url(../common/contents/images/learning_dot.png) no-repeat 0px 0px');
					//$(this).css('background', 'url(../contents/images/learning_R_dot.png) no-repeat 0px 0px');
					
					
					//$(this).css('background-color', '#1d42b9');
					//$(this).css('border-radius', '5px');
					
					$(this).css('font-size', '23px');
					$(this).css('font-family', 'GmarketSansBold');
					$(this).css('color', "#ffffff");
					$(this).css('text-align', 'center');
					$(this).css('line-height', '40px');
					$(this).html(i);
					
					//$(this).css('border', '1px solid black');
					break;
				
				case "txt":
					$(this).css("position", 'absolute');
					$(this).css('transform', 'scale('+0.9+','+1+')');
					$(this).css('transform-origin', '0 0');
					$(this).css('margin-left', '44px');
					$(this).css('margin-top', '10px');
					//$(this).css('height', '22px');
					$(this).css('width', '700px');
					$(this).css('word-break', 'break-all');
					$(this).css('font-size', '28px');
					$(this).css('font-family', 'SCDream5');
					$(this).css('line-height', '34px');
					
					$(this).css('color', textColor);
					//$(this).css('border', '1px solid black');
					$(this).html(str);
					//console.log( $(this).height() );
					bgH = 28 * str.split("<br>").length;
					break;
			};
		});
		
		learningDataArr.leftStartY += bgH + learningDataArr.leftGap;

		$("#learning_L_"+i).hide();
	};

	
	// 학습목표
	for(var i=1; i<=learningDataArr.contents_2.length; i++){

		var str = learningDataArr.contents_2[i-1];

		var tempHtml = '<div id="learning_R_'+i+'"> '
		tempHtml += '<div id="bogiIcon_R"></div>'
		tempHtml += '<div id="txt_R"></div> </div>'
		$('#learningCtn').append(tempHtml);

		$("#learning_R_"+i).css('position', 'absolute');
		$("#learning_R_"+i).css("display", 'block');
		$("#learning_R_"+i).css("left", "642px");
		$("#learning_R_"+i).css("top", learningDataArr.rightStartY+"px");
		learningR_arr.push($("#learning_R_"+i));

		var bgH;
		var iconW = 38;
		var iconH = 37;

		var nodes=$("#learning_R_"+i).children();

		nodes.each(function(){
			//console.log($(this).attr('id'));
			
			var nodeID = $(this).attr('id');
			
			switch(nodeID){
				case "bogiIcon_R":
					$(this).css("position", 'absolute');
					$(this).css("width", iconW+'px');
					$(this).css("height", iconH+'px');
					$(this).css('margin-top', '10px');
					$(this).css('background', 'url(../common/contents/images/learning_dot.png) no-repeat 0px 0px');
					//$(this).css('background', 'url(../contents/images/learning_R_dot.png) no-repeat 0px 0px');
					
					
					//$(this).css('background-color', '#1d42b9');
					//$(this).css('border-radius', '5px');
					
					$(this).css('font-size', '23px');
					$(this).css('font-family', 'GmarketSansBold');
					$(this).css('color', "#ffffff");
					$(this).css('text-align', 'center');
					$(this).css('line-height', '40px');
					$(this).html(i);
					
					//$(this).css('border', '1px solid black');
					break;
				
				case "txt_R":
					$(this).css("position", 'absolute');
					$(this).css('transform', 'scale('+0.9+','+1+')');
					$(this).css('transform-origin', '0 0');
					$(this).css('margin-left', '44px');
					$(this).css('margin-top', '10px');
					//$(this).css('height', '22px');
					$(this).css('width', '650px');
					$(this).css('word-break', 'break-all');
					$(this).css('font-size', '28px');
					$(this).css('font-family', 'SCDream5');
					$(this).css('line-height', '34px');
					
					$(this).css('color', textColor);
					//$(this).css('border', '1px solid black');
					$(this).html(str);
					//console.log( $(this).height() );
					bgH = 28 * str.split("<br>").length;
					break;
			};
		});

		learningDataArr.rightStartY += bgH + learningDataArr.rightGap;

		$("#learning_R_"+i).hide();
	};
	
	learningMotionInit();
	
};

function learningMotionInit(){
	
	var title = document.getElementById("learning_title"),
		learning_L = document.getElementById("learning_L"),
		learning_R = document.getElementById("learning_R")

	
	learning_title_Tl.fromTo(title, 1, {display: "none", x:-20, opacity:0}, {
		display: "block",
		opacity: 1,
		x:0,
		ease: "elastic.out(1, 0.7)"
	});
	
	learning_left_Tl.fromTo(learning_L, 1, {display: "none", y:20, opacity:0}, {
		display: "block",
		opacity: 1,
		y:0,
		ease: "elastic.out(1, 0.7)",
	})
	.fromTo(learningL_arr, 1, {display: "none", x:-20, opacity:0}, {
		display: "block",
		opacity: 1,
		x:0,
		stagger: 0.1,
		ease: "elastic.out(1, 0.7)",
	}, 0.2);
	
	learning_right_Tl.fromTo(learning_R, 1, {display: "none", y:20, opacity:0}, {
		display: "block",
		opacity: 1,
		y:0,
		ease: "elastic.out(1, 0.7)",
	})
	.fromTo(learningR_arr, 1, {display: "none", x:-20, opacity:0}, {
		display: "block",
		opacity: 1,
		x:0,
		stagger: 0.1,
		ease: "elastic.out(1, 0.7)",
	}, 0.2);
}