
var contentsPopUpBtnArr = [];

window.onload = function () {
	if(chapterNames[page-1].popup){
		
		pageCompCheck = false;

		contentsPopUpInit();
		
		$("#video").on('timeupdate', function() {
			//$("#video").prop('muted', false);
			var currentPos = $(this)[0].currentTime; //Get currenttime
			var maxduration = $(this)[0].duration; //Get video duration
			var percentage = 100 * currentPos / maxduration; //in %
			if(!currentPos) currentPos = 0;
			if(!maxduration) maxduration = 0;
			//console.log(currentPos+" / "+maxduration+" / "+percentage);
			if(percentage < 100){
				contentsPopUpBtnShow(false);
			}
		});
		
		$("#video").on('ended', function() {
			contentsPopUpBtnShow(true);
		});
	}
	
};

function contentsPopUpBtnShow(param){
	//console.log(contentsPopUpBtnArr);
	for(var i=1; i<=contentsPopUpBtnArr.length; i++){
		if(param){
			contentsPopUpBtnArr[i-1].show();
		}else{
			contentsPopUpBtnArr[i-1].hide();
		}
	}
}

function contentsPopUpInit(){

	contentsPopUpBtnArr = [];

	var arrIndex; // 배열 넘버
	var btn_totalNum;
	var arr = contentsPopUpData;
	
	if(arr){
		for(var i=1; i<=arr.length; i++){
			if(arr[i-1].page == parseFloat(page)){
				btn_totalNum = arr[i-1].btnNum;
				arrIndex = i-1;
			};
		};
	}

	if(arrIndex >= 0){

		for(var i=1; i<=btn_totalNum; i++){
			if(arr[arrIndex].btnName[i-1]){
				// 텍스트 버튼
				$("#loadCtn").append('<div id="popBtn_'+i+'"><div class="popBtnLeft"></div><div class="popBtnMiddle"></div><div class="popBtnRight"></div></div>');
				contentsPopUpBtnArr.push($("#popBtn_"+i));
				
				$("#popBtn_"+i).attr('value', i);
				$("#popBtn_"+i).attr('posX', arr[arrIndex].x[i-1]);
				$("#popBtn_"+i).attr('posY', arr[arrIndex].y[i-1]);
				$("#popBtn_"+i).css('display', 'none');
				$("#popBtn_"+i).css('position', 'absolute');
				$("#popBtn_"+i).css('left', arr[arrIndex].x[i-1]+"px");
				$("#popBtn_"+i).css('top', arr[arrIndex].y[i-1]+"px");
				$("#popBtn_"+i).css('cursor', 'pointer');

				$("#popBtn_"+i).children('.popBtnMiddle').css('width', arr[arrIndex].w[i-1]+"px");
				$("#popBtn_"+i).children('.popBtnMiddle').css('height', arr[arrIndex].h[i-1]+"px");
				
				if(arr[arrIndex].type == "toggle"){
					if(video_deep){
						$("#popBtn_"+i).children('.popBtnMiddle').html(arr[arrIndex].btnName[i-1][0]);
					}else{
						$("#popBtn_"+i).children('.popBtnMiddle').html(arr[arrIndex].btnName[i-1][1]);
					}
					pageCompCheck = true;
				}else{
					$("#popBtn_"+i).children('.popBtnMiddle').html(arr[arrIndex].btnName[i-1]);
				}
				
				//console.log("arr[arrIndex].btnName[i-1] :"+arr[arrIndex].btnName[i-1]);
				
				var rx = 40+arr[arrIndex].w[i-1];
				$("#popBtn_"+i).children('.popBtnRight').css('left', rx+"px");
			}else{
				// 이미지 버튼
				$("#loadCtn").append('<div id="popBtn_'+i+'"><div class="popBtnImg"></div></div>');
				contentsPopUpBtnArr.push($("#popBtn_"+i));
				
				$("#popBtn_"+i).attr('value', i);
				$("#popBtn_"+i).attr('posX', arr[arrIndex].x[i-1]);
				$("#popBtn_"+i).attr('posY', arr[arrIndex].y[i-1]);
				$("#popBtn_"+i).css('display', 'none');
				$("#popBtn_"+i).css('position', 'absolute');
				$("#popBtn_"+i).css('left', arr[arrIndex].x[i-1]+"px");
				$("#popBtn_"+i).css('top', arr[arrIndex].y[i-1]+"px");
				$("#popBtn_"+i).css('cursor', 'pointer');
				
				$("#popBtn_"+i).children('.popBtnImg').css('width', arr[arrIndex].w[i-1]+"px");
				$("#popBtn_"+i).children('.popBtnImg').css('height', arr[arrIndex].h[i-1]+"px");

				//$("#popBtn_"+i).children('.popBtnImg').css('background', 'url(../img/popup/'+arr[arrIndex].btnImg[i-1]+'.png) no-repeat 0px 0px');
				//$("#popBtn_"+i).css('background', 'url(../img/popup/'+arr[arrIndex].btnImg[i-1]+'.png) no-repeat 0px 0px');

				//$("#popBtn_"+i).css('border', "1px solid black");
				
			}
						


			// mouse event
			$("#popBtn_"+i).on('mouseover', function(e) {
				var num = $(this).attr('value');
				var posY = -arr[arrIndex].h[num-1];
				
				if(arr[arrIndex].btnName[num-1]){
					$(this).children('.popBtnLeft').css("background-position-y", posY+"px");
					$(this).children('.popBtnMiddle').css("background-position-y", posY+"px");
					$(this).children('.popBtnRight').css("background-position-y", posY+"px");
				}else{
					$(this).children('.popBtnImg').css("background-position-y", posY+"px");
				}
				
			});

			$("#popBtn_"+i).on('mouseout', function(e) {
				var num = $(this).attr('value');

				if(arr[arrIndex].btnName[num-1]){
					$(this).children('.popBtnLeft').css("background-position-y", "0px");
					$(this).children('.popBtnMiddle').css("background-position-y", "0px");
					$(this).children('.popBtnRight').css("background-position-y", "0px");
				}else{
					$(this).children('.popBtnImg').css("background-position-y", "0px");
				}
				
			});

			$("#popBtn_"+i).on('click', function(e) {
				var num = $(this).attr('value');
				if(arr[arrIndex].titleName){
					$("#contentsPopUp_title").html(arr[arrIndex].titleName[num-1]);
				}else{
					$("#contentsPopUp_title").html(arr[arrIndex].btnName[num-1]);
				}				
				
				//console.log( arr[arrIndex].type[num-1] )				
				
				if(arr[arrIndex].type[num-1] == "popup"){
					$("#contentsPopUp_Img").attr('src', 'img/contentsPopUp_'+chasi+'_'+itostr(page)+'_'+itostr(num)+'.png');

					setTimeout(function() {
						$("#contentsPopUp").show();									
					}, 50);
				}else if(arr[arrIndex].type[num-1] == "video"){
					//console.log(arr[arrIndex].url[num-1]);
					var url = vodpath+"/"+itostr(chasi)+"/"+arr[arrIndex].url[num-1]+".mp4";
					popupVideoStart(url);
				}else if(arr[arrIndex].type[num-1] == "toggle"){
					$(this).hide();

					video_deep = !video_deep;
					if(video_deep){
						$("#video").attr("src", vodpath+"/"+itostr(chasi)+"/"+chapterNames[page-1].vod+"_deep.mp4" );
						$(this).children('.popBtnMiddle').html(arr[arrIndex].btnName[num-1][0]);
					}else{
						$("#video").attr("src", vodpath+"/"+itostr(chasi)+"/"+chapterNames[page-1].vod+".mp4" );
						$(this).children('.popBtnMiddle').html(arr[arrIndex].btnName[num-1][1]);
					}
					
				}
				
				
			});		
		}
		
		// 레이어 팝업
		$("#loadCtn").append('<div id="contentsPopUp"><div id="contentsPopUp_title"></div><div id="contentsPopUp_closeBtn"></div><div id="contentsPopUp_Ctn"> <img id="contentsPopUp_Img"></img></div></div>');
		//$("#contentsPopUp").attr("src", "../common/contents/images/summaryPop_"+chasi+".png");
		$("#contentsPopUp").css('display', 'none');
		$("#contentsPopUp").css('position', 'absolute');
		$("#contentsPopUp").css('left', "0px");
		$("#contentsPopUp").css('top', "0px");
		$("#contentsPopUp").css('width', "1100px");
		$("#contentsPopUp").css('height', "680px");
		$("#contentsPopUp").css('background', 'url(../img/popup/bg.png) no-repeat 0px 0px');
		//$("#contentsPopUp").css('border', "1px solid red");

		$("#contentsPopUp_Ctn").css('position', 'absolute');
		$("#contentsPopUp_Ctn").css('left', "80px");
		$("#contentsPopUp_Ctn").css('top', "150px");
		$("#contentsPopUp_Ctn").css('width', "960px");
		$("#contentsPopUp_Ctn").css('height', "490px");
		$("#contentsPopUp_Ctn").css('overflow-x', "hidden");
		$("#contentsPopUp_Ctn").css('overflow-y', "auto");
		//$("#contentsPopUp_Ctn").css('border', "1px solid red");

		if(!mobileCheck){
			$("#contentsPopUp_Ctn").mCustomScrollbar({theme:"dark-3"});
		}

		$("#contentsPopUp_title").css('position', 'absolute');
		$("#contentsPopUp_title").css('left', "73px");
		$("#contentsPopUp_title").css('top', "95px");
		$("#contentsPopUp_title").css('width', "950px");
		$("#contentsPopUp_title").css('height', "46px");
		//$("#contentsPopUp_title").css('border', "1px solid red");
		$("#contentsPopUp_title").css('color', "#ffffff");
		$("#contentsPopUp_title").css('font-size', '18pt');
		$("#contentsPopUp_title").css('font-family', 'SCDream6');
		$("#contentsPopUp_title").css('line-height', '44px');
		

		$("#contentsPopUp_closeBtn").css('cursor', 'pointer');
		$("#contentsPopUp_closeBtn").css('position', 'absolute');
		$("#contentsPopUp_closeBtn").css('left', "1016px");
		$("#contentsPopUp_closeBtn").css('top', "103px");
		$("#contentsPopUp_closeBtn").css('width', "30px");
		$("#contentsPopUp_closeBtn").css('height', "30px");
		$("#contentsPopUp_closeBtn").css('background', 'url(../img/popup/closeBtn.png) no-repeat 0px 0px');
		
		$("#contentsPopUp_closeBtn").on('mouseover', function(e) {
			$(this).css("background-position-y", "-30px");

			gsap.to($(this), 0.5, {
				rotation: 180
			}, 0.3)
		});

		$("#contentsPopUp_closeBtn").on('mouseout', function(e) {
			$(this).css("background-position-y", "0px");

			gsap.to($(this), 0.5, {
				rotation: 0
			}, 0.3)
		});

		$("#contentsPopUp_closeBtn").on('click', function(e) {
			$("#contentsPopUp_Img").attr('src', '');
			$("#contentsPopUp").scrollTop();
			$("#contentsPopUp").hide();
		});
	}
}


// 풀스크린 좌표 값 설정
// 영상 비율에 따라서 사이드 여백값이 생기므로 팝업버튼 위치 값 설정해주기.
function popBtnMoveCall(param){
	var width = $(window).width();
	var height = $(window).height();
	
	var sw = width / contents_width;
	var sh = height / contents_height;
	var scaleValue = (sw < sh) ? sw : sh;
	
	var posX = (width - contents_width * scaleValue) / 2;
	var posY = (height - contents_height * scaleValue) / 2;
	
	if(param){	
		$('#contentsPopUp').css('transform', 'scale(' + scaleValue + ')');
		$('#contentsPopUp').css('msTransform', 'scale(' + scaleValue + ')');
		$('#contentsPopUp').css('-webkit-transform', 'scale(' + scaleValue + ')');
		$('#contentsPopUp').css('-moz-transform', 'scale(' + scaleValue + ')');
		$('#contentsPopUp').css('-o-transform', 'scale(' + scaleValue + ')');
		
		$('#contentsPopUp').css('transform-origin', '0 0');
		$('#contentsPopUp').css('msTransform-origin', '0 0');
		$('#contentsPopUp').css('-webkit-transform-origin', '0 0');
		$('#contentsPopUp').css('-moz-transform-origin', '0 0');
		$('#contentsPopUp').css('-o-transform-origin', '0 0');

		//$('#contentsPopUp').css({left: posX, top: posY});
		
		$("#loadCtn").css('left', posX);
		$("#loadCtn").css('top', posY);

		for(var i=1; i<=contentsPopUpBtnArr.length; i++){
			contentsPopUpBtnArr[i-1].css('transform', 'scale(' + scaleValue + ')');
			contentsPopUpBtnArr[i-1].css('msTransform', 'scale(' + scaleValue + ')');
			contentsPopUpBtnArr[i-1].css('-webkit-transform', 'scale(' + scaleValue + ')');
			contentsPopUpBtnArr[i-1].css('-moz-transform', 'scale(' + scaleValue + ')');
			contentsPopUpBtnArr[i-1].css('-o-transform', 'scale(' + scaleValue + ')');

			var _x = parseFloat(contentsPopUpBtnArr[i-1].attr('posX'));
			var _y = parseFloat(contentsPopUpBtnArr[i-1].attr('posY'));

			var moveX = _x*scaleValue;
			var moveY = _y*scaleValue;
			contentsPopUpBtnArr[i-1].css({top: moveY, left: moveX});			
		}

	}else{
		//$("#loadCtn").css('width', contents_width);
		//$("#loadCtn").css('height', contents_height);

		$('#contentsPopUp').css('transform', 'scale(' + 1 + ')');
		$('#contentsPopUp').css('msTransform', 'scale(' + 1 + ')');
		$('#contentsPopUp').css('-webkit-transform', 'scale(' + 1 + ')');
		$('#contentsPopUp').css('-moz-transform', 'scale(' + 1 + ')');
		$('#contentsPopUp').css('-o-transform', 'scale(' + 1 + ')');

		$('#contentsPopUp').css({left: 0, top: 0});
		
		$("#loadCtn").css('left', 0);
		$("#loadCtn").css('top', 0);

		for(var i=1; i<=contentsPopUpBtnArr.length; i++){
			contentsPopUpBtnArr[i-1].css('transform', 'scale(' + 1 + ')');
			contentsPopUpBtnArr[i-1].css('msTransform', 'scale(' + 1 + ')');
			contentsPopUpBtnArr[i-1].css('-webkit-transform', 'scale(' + 1 + ')');
			contentsPopUpBtnArr[i-1].css('-moz-transform', 'scale(' + 1 + ')');
			contentsPopUpBtnArr[i-1].css('-o-transform', 'scale(' + 1 + ')');

			var _x = parseFloat(contentsPopUpBtnArr[i-1].attr('posX'));
			var _y = parseFloat(contentsPopUpBtnArr[i-1].attr('posY'));
			contentsPopUpBtnArr[i-1].css({left: _x, top: _y});
		}
	}
	

}