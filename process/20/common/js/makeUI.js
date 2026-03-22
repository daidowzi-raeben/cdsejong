var focusObj;

function makeUI(){
	$(".control-slider").css('display','block');
	$(".vol_control-slider").css('display','block');

	$("#sliderArea").attr('posX', $("#sliderArea").offset().left);
	$("#sliderArea").attr('orgW', $("#sliderArea").width());

	$(".control-slider").attr('posX', $(".control-slider").offset().left);
	$(".control-slider").attr('orgW', $(".control-slider").width());
	
	$(".vol_control-slider").attr('posX', $(".vol_control-slider").offset().left);
	
	$("#popupVideoCtn").css('display','none');
	$("#popupVideoCtn").css('position','absolute');
	$("#popupVideoCtn").css("left", 0);
	$("#popupVideoCtn").css("top", 0);
	$("#popupVideoCtn").css('width', '1280px');
	$("#popupVideoCtn").css('height', '750px');
	//$("#popupVideoCtn").css('border','1px solid red');	
	$("#popupVideoCtn").css('background-color', '#000000');

	//$("#popupVideo_closeBG").css('display', 'none');
	$("#popupVideo_closeBG").css('position', 'absolute');
	$("#popupVideo_closeBG").css({left: 931, top: 25, width:132, height:31});
	$("#popupVideo_closeBG").css('background-color', '#cb5124');
	$("#popupVideo_closeBG").css('border-radius', '30px');
	//$("#popupVideo_closeBG").css('background', 'url(../img/popupVideo_closeBG.png) no-repeat 0px 0px');	
	$("#popupVideo_closeBG").css('color', '#ffffff');
	$("#popupVideo_closeBG").css('font-family', 'GmarketSansMedium');
	$("#popupVideo_closeBG").css('font-size', '19px');
	$("#popupVideo_closeBG").css('text-align', 'center');
	$("#popupVideo_closeBG").css('line-height', '34px');
	
	
	$("#popupVideo_closeBtn").css('cursor', 'pointer');
	$("#popupVideo_closeBtn").css('position', 'absolute');
	$("#popupVideo_closeBtn").css({left: 1054, top: 8, width:34, height:34});
	$("#popupVideo_closeBtn").css('background', 'url(../img/popupVideo_closeBtn.png) no-repeat 0px 0px');
		
	
	$("#mNextBtn").hide();
	$("#mNextBtn").css('position', 'absolute');
	$("#mNextBtn").css({left: 970, top: 275, width:130, height:130});
	$("#mNextBtn").css('background', 'url(../img/mobile_pageBtn.png) no-repeat 0px 0px');
	
	
	$("#mPrevBtn").hide();
	$("#mPrevBtn").css('position', 'absolute');
	$("#mPrevBtn").css({left: 0, top: 275, width:130, height:130});
	$("#mPrevBtn").css('background', 'url(../img/mobile_pageBtn.png) no-repeat -130px 0px');
	
	/*
	$("#nextPop").css('cursor', 'pointer');
	$("#nextPop").css('transform', 'rotate(-11deg)');
	$("#nextPop").css('-webkit-transform', 'rotate(-11deg');
	$("#nextPop").append('<div id="nextPop_bg"></div> <div id="nextPop_topTxt"></div> <div id="nextPop_txt"></div>');
	
	$("#nextPop_bg").css('position', 'absolute');
	$("#nextPop_bg").css({left: 0, top: 28, width:160, height:38});
	$("#nextPop_bg").css('background', 'url(../img/nextPop.png) no-repeat');
	$("#nextPop_bg").css('background-size', 'cover');

	$("#nextPop_txt").css('position', 'absolute');
	$("#nextPop_txt").css({left: 28, top: 34});
	$("#nextPop_txt").css('font-size','16px');
	$("#nextPop_txt").css('color', "#ffffff");
	$("#nextPop_txt").css("font-family", "SCDream4");
	$("#nextPop_txt").css("letter-spacing", "-1px");
	$("#nextPop_txt").css("text-shadow", "2px 2px 0px #151d44");

	$("#nextPop_topTxt").css('position', 'absolute');
	$("#nextPop_topTxt").css({left: 20, top: 0});
	$("#nextPop_topTxt").css('font-size','35px');
	$("#nextPop_topTxt").css('color', "#f6d663");
	$("#nextPop_topTxt").css("font-family", "ygj");
	//$("#nextPop_topTxt").css("letter-spacing", "-1px");
	$("#nextPop_topTxt").css("text-shadow", "rgb(51, 66, 158) 4px 0px 0px, rgb(51, 66, 158) 3.87565px 0.989616px 0px, rgb(51, 66, 158) 3.51033px 1.9177px 0px, rgb(51, 66, 158) 2.92676px 2.72656px 0px, rgb(51, 66, 158) 2.16121px 3.36588px 0px, rgb(51, 66, 158) 1.26129px 3.79594px 0px, rgb(51, 66, 158) 0.282949px 3.98998px 0px, rgb(51, 66, 158) -0.712984px 3.93594px 0px, rgb(51, 66, 158) -1.66459px 3.63719px 0px, rgb(51, 66, 158) -2.51269px 3.11229px 0px, rgb(51, 66, 158) -3.20457px 2.39389px 0px, rgb(51, 66, 158) -3.69721px 1.52664px 0px, rgb(51, 66, 158) -3.95997px 0.56448px 0px, rgb(51, 66, 158) -3.97652px -0.432781px 0px, rgb(51, 66, 158) -3.74583px -1.40313px 0px, rgb(51, 66, 158) -3.28224px -2.28625px 0px, rgb(51, 66, 158) -2.61457px -3.02721px 0px, rgb(51, 66, 158) -1.78435px -3.57996px 0px, rgb(51, 66, 158) -0.843183px -3.91012px 0px, rgb(51, 66, 158) 0.150409px -3.99717px 0px, rgb(51, 66, 158) 1.13465px -3.8357px 0px, rgb(51, 66, 158) 2.04834px -3.43574px 0px, rgb(51, 66, 158) 2.83468px -2.82216px 0px, rgb(51, 66, 158) 3.44477px -2.03312px 0px, rgb(51, 66, 158) 3.84068px -1.11766px 0px, rgb(51, 66, 158) 3.9978px -0.132717px 0px");
	*/

	$("#loadCtn").css('position', "absolute");
	$("#loadCtn").css({left: 0, top: 0, width: contents_width, height: contents_height});
	//$("#loadCtn").css('border', "1px solid red");
	
	$( "#scriptCtn" ).show();

	//$(".topMenu").css('display', "none");
	$(".topMenu").css('position', "absolute");
	$(".topMenu").css('width', contents_width);
	//$(".topMenu").css('border', "1px solid red");

	$("#loadingPop").css('position', "absolute");
	$("#loadingPop").css({left: 0, top: 0, width: contents_width, height: contents_height});	
	$("#loadingPop").css('background-color', '#ffffff');
	
	$("#loadingImg").css('position', "absolute");
	$("#loadingImg").css('width', "216px");
	$("#loadingImg").css('height', "216px");
	$("#loadingImg").css("left", (contents_width/2)-($("#loadingImg").width()/2)+"px");
	$("#loadingImg").css("top", (contents_height/2)-($("#loadingImg").height()/2)+"px");
	$("#loadingImg").css('background-image', 'url(../img/loading.gif)');

	//$("#lec").css('display', "none");
	$("#lec").css('position', "absolute");
	$("#lec").css({left: 10, top: 10});
	
	$("#lec").css('font-size','25px');
	$("#lec").css('color', "#001398");
	$("#lec").css("font-family", "SB_Aggro_B");
	
	$("#lec").css('transform', 'scale('+0.95+','+1+')');
	$("#lec").css('transform-origin', '0 0');

	$("#lec").html(chasiTextArr[parseFloat(chasi)-1]);

	//$("#lec").css('border', "1px solid black");
	//$("#lec").css('background', 'url(../img/lec.png) no-repeat 0px 0px');


	////////////// 상단 메뉴 ////////////////////////////////////////
		
	$("#chasi_titleBG").css('position', "absolute");
	$("#chasi_titleBG").css({left: 0, top: 43});

	$("#chasi_titleBG").css('font-size','18px');
	$("#chasi_titleBG").css('color', "#00d7fb");
	$("#chasi_titleBG").css("font-family", "GmarketSansBold");
	
	$("#chasi_titleBG").css('padding', '7px 14px 5px 14px');
	$("#chasi_titleBG").css('background-color', '#0036ff');	
	
	var titleBG_W;

	for(var i=1; i<=subData.length; i++){
		for(var j=1; j<=subData[i-1].length; j++){			
			if(page == subData[i-1][j-1].page){
				//console.log(i+" / "+j);		
				$("#chasi_titleBG").html("+ "+MenuData[i-1].name);
				if(i == 1){
					titleBG_W = 150;
				}

				if(i == 3){
					titleBG_W = 165;
				}
			}
		}		
	}

	//$("#chasi_titleBG").css('background', 'url(../img/topMenu/title_bg.png) no-repeat 0px 0px');

	/*
	$("#chasi_titleBG").append("<div id='chasi_title_obj_1'></div><div id='chasi_title_obj_2'></div>");
	if(chapterNames[page-1].vod == "think"){
		$("#chasi_titleBG").css({left: 12, top: 20, width: 178, height: 26});
		
		$("#chasi_title_obj_1").css('position', "absolute");
		$("#chasi_title_obj_1").css({left: 17, top: 0, width: 161, height: 26});
		$("#chasi_title_obj_1").css("background-color", "#036df3");
		$("#chasi_title_obj_1").css('border-radius', "8px");		

		$("#chasi_title_obj_2").css('position', "absolute");
		$("#chasi_title_obj_2").css({left: 0, top: 0, width: 26, height: 26});
		$("#chasi_title_obj_2").css("background-color", "#7fe7e7");
		$("#chasi_title_obj_2").css('border-radius', "13px");
		$("#chasi_title_obj_2").css('mix-blend-mode', "multiply");

		//$("#chasi_titleBG").css('background', 'url(../img/topMenu/title_bg2.png) no-repeat 0px 0px');
	}else{
		$("#chasi_titleBG").css({left: 12, top: 20, width: 157, height: 26});
				
		$("#chasi_title_obj_1").css('position', "absolute");
		$("#chasi_title_obj_1").css({left: 17, top: 0, width: 140, height: 26});
		$("#chasi_title_obj_1").css("background-color", "#036df3");
		$("#chasi_title_obj_1").css('border-radius', "8px");		

		$("#chasi_title_obj_2").css('position', "absolute");
		$("#chasi_title_obj_2").css({left: 0, top: 0, width: 26, height: 26});
		$("#chasi_title_obj_2").css("background-color", "#7fe7e7");
		$("#chasi_title_obj_2").css('border-radius', "13px");
		$("#chasi_title_obj_2").css('mix-blend-mode', "multiply");
		
		//$("#chasi_titleBG").css('background', 'url(../img/topMenu/title_bg.png) no-repeat 0px 0px');
	}
	*/

	//$("#chasi_titleBG").css('mix-blend-mode', "multiply");

	//$("#chasi_titleBG").css('background-color', "#786258");
	//$("#chasi_titleBG").css('border-radius', "10px");	

	$("#chasi_titleText").css('position', "absolute");
	$("#chasi_titleText").css({left: titleBG_W, top: 43});
	//$("#chasi_titleText").css('text-align','right');
	$("#chasi_titleText").css('font-size','18px');
	$("#chasi_titleText").css('color', "#ffffff");
	$("#chasi_titleText").css("font-family", "GmarketSansMedium");
	//$("#chasi_titleText").css("letter-spacing", "-0.5px");
	//$("#chasi_titleText").css('line-height', "24px");

	$("#chasi_titleText").css('transform', 'scale('+0.95+','+1+')');
	$("#chasi_titleText").css('transform-origin', '0 0');
	
	$("#chasi_titleText").css('padding', '8px 24px 4px 6px');
	$("#chasi_titleText").css('background-color', '#0036ff');
	$("#chasi_titleText").css('border-radius', '0px 16px 16px 0px');
	
	/*
	var storke = 
		"rgb(51, 66, 158) 4px 0px 0px,"+
		"rgb(51, 66, 158) 3.87565px 0.989616px 0px,"+
		"rgb(51, 66, 158) 3.51033px 1.9177px 0px,"+
		"rgb(51, 66, 158) 2.92676px 2.72656px 0px,"+
		"rgb(51, 66, 158) 2.16121px 3.36588px 0px,"+
		"rgb(51, 66, 158) 1.26129px 3.79594px 0px,"+
		"rgb(51, 66, 158) 0.282949px 3.98998px 0px,"+
		"rgb(51, 66, 158) -0.712984px 3.93594px 0px,"+
		"rgb(51, 66, 158) -1.66459px 3.63719px 0px,"+
		"rgb(51, 66, 158) -2.51269px 3.11229px 0px,"+
		"rgb(51, 66, 158) -3.20457px 2.39389px 0px,"+
		"rgb(51, 66, 158) -3.69721px 1.52664px 0px,"+
		"rgb(51, 66, 158) -3.95997px 0.56448px 0px,"+
		"rgb(51, 66, 158) -3.97652px -0.432781px 0px,"+
		"rgb(51, 66, 158) -3.74583px -1.40313px 0px,"+
		"rgb(51, 66, 158) -3.28224px -2.28625px 0px,"+
		"rgb(51, 66, 158) -2.61457px -3.02721px 0px,"+
		"rgb(51, 66, 158) -1.78435px -3.57996px 0px,"+
		"rgb(51, 66, 158) -0.843183px -3.91012px 0px,"+
		"rgb(51, 66, 158) 0.150409px -3.99717px 0px,"+
		"rgb(51, 66, 158) 1.13465px -3.8357px 0px,"+
		"rgb(51, 66, 158) 2.04834px -3.43574px 0px,"+
		"rgb(51, 66, 158) 2.83468px -2.82216px 0px,"+
		"rgb(51, 66, 158) 3.44477px -2.03312px 0px,"+
		"rgb(51, 66, 158) 3.84068px -1.11766px 0px,"+
		"rgb(51, 66, 158) 3.9978px -0.132717px 0px";
	$("#chasi_titleText").css("text-shadow", storke);
	*/
	
	
	//$("#chasi_titleBG").hide();
	//$("#chasi_titleText").hide();

	var titleIndex = 0;
	var titleStr = "";
	for(var i=1; i<=MenuData.length; i++){
		var len = subData[i-1].length
		for(var j=1; j<=len; j++){
			titleIndex++;
			if(titleIndex == page){				
				titleStr = subData[i-1][j-1].name.replace(/(<br>|<br\/>|<br \/>)/g, '');
				
				/*
				//console.log("subData[i-1][j-1].name :"+(i-1)+" / "+(j-1)+" == "+subData[i-1][j-1].name);
				if(i == 2 || page == 2 || page == 3){ 
					// 본학습에서 상단 타이틀 이미지 숨기기.
					$("#chasi_titleBG").hide();
					$("#chasi_titleText").hide();
					//console.log(titleIndex+" / "+page);
				}
				*/
				if(i == 3|| j == 1){
					//$("#chasi_titleBG").show();
					//$("#chasi_titleText").show();
				}
				break;
			}
		}
	}
	$("#chasi_titleText").html(titleStr);
	
	/*
	var title_w = 54 + $("#chasi_titleText")[0].getBoundingClientRect().width;
	
	var dotHtml = 
		"<div style='position:absolute; left:0px; top:0px; width:"+title_w+"px; height:24px; background-color: #000; transform-origin: top left; transform: scale(0.95,1);'></div>"+
		//"<div style='position:absolute; left:0px; top:0px; width:"+title_w+"px; height:24px; background-color: #000;'></div>"+
		"<div style='position:absolute; width:29px; height:24px; background-color: #4608FF;'></div>"+
		"<div style='position:absolute; left:5px; top:5px; width:29px; height:24px; background: url(../img/title_icon.png) no-repeat 0px 0px;'></div>"
	*/
	

	//$("#chasi_titleText").css('border', "1px solid red");

	/*
	$("#toggleMenu").hide();
	$("#toggleMenu").css('position', "absolute");
	$("#toggleMenu").css({left: 1073, top: 12}); // 913
	
	$("#toggleMenu_bg").css('position', "absolute");
	//$("#toggleMenu_bg").css({left: 0, top: 0, width: 187, height: 29});
	$("#toggleMenu_bg").css({left: 0, top: 0, width: 119, height: 29});
	$("#toggleMenu_bg").css('background', 'url(../img/topMenu/toggleMenu_bg.png) no-repeat 0px 0px');
	
	$("#toggleMenuMask").css('position', "absolute");
	$("#toggleMenuMask").css({left: contents_width, top: 0, width: 119, height: 50});
	$("#toggleMenuMask").css('background-color', '#ffffff');
	

	$("#toggleMenu_closeBtn").css('position', "absolute");
	$("#toggleMenu_closeBtn").css({left: 6, top: 5, width: 20, height: 20});
	$("#toggleMenu_closeBtn").css('cursor', 'pointer');
	$("#toggleMenu_closeBtn").css('background', 'url(../img/topMenu/toggleMenu_closeBtn.png) no-repeat 0px 0px');
	//$("#toggleMenu_closeBtn").css('border', "1px solid red");

	$("#studyBtn").hide();
	$("#studyBtn").css('position', "absolute");
	$("#studyBtn").css({left: 29, top: 5, width: 20, height: 20});
	$("#studyBtn").css('cursor', 'pointer');
	$("#studyBtn").css('background', 'url(../img/topMenu/studyBtn.png) no-repeat 0px 0px');
	//$("#studyBtn").css('border', "1px solid red");

	$("#practiceVideoBtn").hide();
	$("#practiceVideoBtn").css('position', "absolute");
	$("#practiceVideoBtn").css({left: 62, top: 5, width: 20, height: 20});
	$("#practiceVideoBtn").css('cursor', 'pointer');
	$("#practiceVideoBtn").css('background', 'url(../img/topMenu/practiceVideoBtn.png) no-repeat 0px 0px');

	$("#bookmarkBtn").css('position', "absolute");
	//$("#bookmarkBtn").css({left: 95, top: 5, width: 20, height: 20});
	$("#bookmarkBtn").css({left: 29, top: 5, width: 20, height: 20});
	$("#bookmarkBtn").css('cursor', 'pointer');
	$("#bookmarkBtn").css('background', 'url(../img/topMenu/bookmarkBtn.png) no-repeat 0px 0px');
	
	$("#memoBtn").css('position', "absolute");
	$("#memoBtn").css('cursor', 'pointer');
	//$("#memoBtn").css({left: 130, top: 5, width: 20, height: 20});
	$("#memoBtn").css({left: 62, top: 5, width: 20, height: 20});
	$("#memoBtn").css('background', 'url(../img/topMenu/memoBtn.png) no-repeat 0px 0px');
	
	$("#questionBtn").css('position', "absolute");
	//$("#questionBtn").css({left: 162, top: 5, width: 20, height: 20});
	$("#questionBtn").css({left: 95, top: 5, width: 20, height: 20});
	$("#questionBtn").css('cursor', 'pointer');
	$("#questionBtn").css('background', 'url(../img/topMenu/questionBtn.png) no-repeat 0px 0px');
	//$("#questionBtn").css('border', "1px solid red");
	*/

	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	$("#discussBtn").css('display', "none");
	$("#discussBtn").css('position', "absolute");
	$("#discussBtn").css('cursor', 'pointer');
	$("#discussBtn").css({left: 92, top: 5, width: 30, height: 40});
	//$("#discussBtn").css('background', 'url(../img/discussBtn.png) no-repeat 0px 0px');

	$("#memoBtn").css('display', "none");
	$("#memoBtn").css('position', "absolute");
	$("#memoBtn").css('cursor', 'pointer');
	//$("#memoBtn").css({left: 130, top: 5, width: 20, height: 20});
	$("#memoBtn").css({left: 134, top: 5, width: 30, height: 40});
	//$("#memoBtn").css('background', 'url(../img/memoBtn.png) no-repeat 0px 0px');
	
	$("#questionBtn").css('display', "none");
	$("#questionBtn").css('position', "absolute");
	//$("#questionBtn").css({left: 162, top: 5, width: 20, height: 20});
	$("#questionBtn").css({left: 176, top: 5, width: 30, height: 40});
	$("#questionBtn").css('cursor', 'pointer');
	//$("#questionBtn").css('background', 'url(../img/questionBtn.png) no-repeat 0px 0px');
	//$("#questionBtn").css('border', "1px solid red");
	
	$("#learningBtn").css('display', "none");
	$("#learningBtn").css('position', "absolute");
	$("#learningBtn").css({left: 218, top: 5, width: 30, height: 40});
	$("#learningBtn").css('cursor', 'pointer');
	$("#learningBtn").css('background', 'url(../img/learningBtn.png) no-repeat 0px 0px');
	//$("#learningBtn").css('border', "1px solid red");
	
	$("#line_grup").css('display', "none");
	$("#line_grup").css('position', "absolute");
	$("#line_grup").append("<div id='bottomLine_1'></div><div id='bottomLine_2'></div><div id='bottomLine_3'></div>");
	
	$("#bottomLine_1").css('position', "absolute");
	$("#bottomLine_1").css({left: 127, top: 20, width: 1, height: 10});	
	$("#bottomLine_1").css('background-color','#ffffff');

	$("#bottomLine_2").css('position', "absolute");
	$("#bottomLine_2").css({left: 169, top: 20, width: 1, height: 10});	
	$("#bottomLine_2").css('background-color','#ffffff');

	$("#bottomLine_3").css('position', "absolute");
	$("#bottomLine_3").css({left: 211, top: 20, width: 1, height: 10});	
	$("#bottomLine_3").css('background-color','#ffffff');
	

	$("#messageBox_bg").css('position', "absolute");
	$("#messageBox_bg").css('width', contents_width);
	$("#messageBox_bg").css('height', contents_height);
	$("#messageBox_bg").css('background-color','#ffffff');
	//$("#messageBox_bg").css('background', 'url(../img/mPop.jpg) no-repeat 0px 0px');
	
	$("#confirmBtn").css('position', "absolute");
	$("#confirmBtn").css('width', contents_width);
	$("#confirmBtn").css('height', contents_height);
	$("#confirmBtn").css('background', 'url(../img/mPop.png) no-repeat 378px 240px');
	//$("#confirmBtn").css('border', "1px solid black");


	$("#Container").css('width', contents_width);
	$("#Container").css('height', contents_height);	
	
	$(".bottomMenu").css('position', "absolute");
	$(".bottomMenu").css('width', contents_width);
	$(".bottomMenu").css('height', 30);
	$(".bottomMenu").css("top", contents_height-30);
	//$(".bottomMenu").css('border', "1px solid red");
	$(".bottomMenu").css('background-color', '#2d2d2d');
	$(".bottomMenu").css("opacity", "1");
	//$(".bottomMenu").css("border-radius", "20px");
	//$(".bottomMenu").css("padding-right", "0px");
	//$(".bottomMenu").css('background', 'url(../img/bottomMenu_bg.png) no-repeat 0px 0px');
	
	//$("#bottomLine").css('position', "absolute");
	//$("#bottomLine").css({left: 54, top: 10, width: 1, height: 8});
	//$("#bottomLine").css('background-color', '#ffffff');

	$("#logo").css('position', "absolute");
	$("#logo").css('left', 20);
	$("#logo").css('top', 10);
	//$("#logo").attr("src", "../img/logo.png");
	

	// leftMenu ///////////////////
		
	$("#treeMenu").css('position', "absolute");
	$("#treeMenu").css({left: 0, top: 92, width: 254, height: 560});
	

	$("#menuCtn").css('position', "absolute");
	$("#menuCtn").css({left: 0, top: 0, width: 254, height: 560});
	$("#menuCtn").css('background-color', '#000000');
	$("#menuCtn").css('border-top-right-radius', '10px');
	$("#menuCtn").css('border-bottom-right-radius', '10px');
	$("#menuCtn").css('opacity', '0.85');
	//$("#menuCtn").css('background', 'url(../img/leftMenu/bg.png) no-repeat 0px 0px');
	

	$("#menuTapeBtn").css('display', "none");
	$("#menuTapeBtn").css('position', "absolute");
	$("#menuTapeBtn").css({left: 0, top: 0, width: 213, height: 28});
	//$("#menuTapeBtn").css('cursor', 'pointer');
	$("#menuTapeBtn").css('background', 'url(../img/leftMenu/tapBtn.png) no-repeat 0px -28px');
	//$("#menuTapeBtn").css('border', "1px solid red");	
	

	$("#bookMarkTapeBtn").css('display', "none");
	$("#bookMarkTapeBtn").css('position', "absolute");
	$("#bookMarkTapeBtn").css({left: 0, top: 0, width: 185, height: 28});
	//$("#bookMarkTapeBtn").css('cursor', 'pointer');
	$("#bookMarkTapeBtn").css('background', 'url(../img/leftMenu/tapBtn.png) no-repeat 0px 0px');
	//$("#bookMarkTapeBtn").css('border', "1px solid red");	
	

	$("#menuCloseBtn").css('position', "absolute");
	$("#menuCloseBtn").css({left: 218, top: 5, width: 31, height: 31});
	$("#menuCloseBtn").css('cursor', "pointer");
	$("#menuCloseBtn").css('background', 'url(../img/leftMenu/menuCloseBtn.png) no-repeat 0px 0px');
		
	
	

	
	$("#timeText").css('position', "absolute");
	$("#timeText").css({left: 320, top: 8, width: 120, height: 14});
	$("#timeText").css('text-align','center');
	$("#timeText").css('font-size','13px');
	$("#timeText").css('font-weight','bold');
	$("#timeText").css('font-family','돋움,Dotum');
	$("#timeText").css('color','#bbbbbb');
	$("#timeText").attr('posX', 320);

	$("#timeText").css('-ms-user-select','none');
	$("#timeText").css('-moz-user-select','none');
	$("#timeText").css('khtml-user-select','none');
	$("#timeText").css('-webkit-user-select','none');
	$("#timeText").css('user-select','none');
	$("#timeText").css('cursor', 'default');
	//$("#timeText").css('border', "1px solid red");
	
	$("#fullScreenBtn").css('display', "none");
	$("#fullScreenBtn").css('position', "absolute");
	$("#fullScreenBtn").css({left: 268, top: 0, width: 28, height: 30});
	$("#fullScreenBtn").css('cursor', 'pointer');
	$("#fullScreenBtn").css('background', 'url(../img/fullScreenBtn.png) no-repeat 0px 0px');
	$("#fullScreenBtn").attr('posX', 268);
	//$("#fullScreenBtn").css('border', "1px solid red");	
	
	$("#rateBtn").css('position', "absolute");
	$("#rateBtn").css({left: 964, top: 0, width: 40, height: 30});
	$("#rateBtn").css('cursor', 'pointer');
	$("#rateBtn").css('background', 'url(../img/rateBtn.png) no-repeat 0px 0px');
	$("#rateBtn").attr('posX', 964);
	//$("#rateBtn").css('color', '#ffffff');
	//$("#rateBtn").css('font-size', '9pt');
	//$("#rateBtn").css('font-family', 'SCDream5');
	//$("#rateBtn").css('line-height', '32px');
	//$("#rateBtn").css('text-indent', '10px');
	//$("#rateBtn").html('x1.0 배속');
	//$("#rateBtn").css('border', "1px solid red");
	
	$("#rate_popCtn").hide();
	$("#rate_popCtn").css('position', "absolute");
	$("#rate_popCtn").css({left: 960, top: -114, width: 50, height: 112});
	$("#rate_popCtn").css('background-color', '#2d2d2d');
	$("#rate_popCtn").attr('posX', 960);
	//$("#rate_popCtn").css('border', "1px solid red");

	for(var i=1; i<=4; i++){
		var rate_popBtn = "<div id='rate_popBtn_"+i+"'></div>"
		$("#rate_popCtn").append(rate_popBtn);
		var rate_popBtnPosY = (i-1)*28;
		
		$("#rate_popBtn_"+i).val(i);
		$("#rate_popBtn_"+i).css('position', "absolute");
		$("#rate_popBtn_"+i).css({left: 5, top: rate_popBtnPosY, width: 40, height: 28});
		$("#rate_popBtn_"+i).css('cursor', 'pointer');
		$("#rate_popBtn_"+i).css('background', 'url(../img/rate_popBtn.png) no-repeat 0px 0px');
		$("#rate_popBtn_"+i).css("background-position-y", -rate_popBtnPosY);

		if(!mobileCheck){
			$("#rate_popBtn_"+i).on('mouseover', function(e) {
				$(this).css("background-position-x", "-40px");
			});

			$("#rate_popBtn_"+i).on('mouseout', function(e) {
				$(this).css("background-position-x", "0px");
			});
		}
		
		$("#rate_popBtn_"+i).on('click', function(e) {		
			var num = $(this).val();
			var rateArr = [1, 1.2, 1.5, 2.0];

			if(controlMode == "audio"){
				audioRate(rateArr[num-1]);
			}else if(controlMode == "video"){
				videoRate(rateArr[num-1]);
			}

			$("#rateBtn").css("background-position-y", (num-1)*-30);
			$("#rate_popCtn").hide();
		});
	}
		


	$("#playBtn").css('position', "absolute");
	$("#playBtn").css({left: 160, top: 0, width: 28, height: 30});
	$("#playBtn").css('cursor', 'pointer');
	$("#playBtn").css('background', 'url(../img/playBtn.png) no-repeat 0px 0px');
	$("#playBtn").attr('posX', 160);
	//$("#playBtn").css('border', "1px solid black");
		

	$("#pauseBtn").css('position', "absolute");
	$("#pauseBtn").css({left: 160, top: 0, width: 28, height: 30});
	$("#pauseBtn").css('cursor', 'pointer');
	$("#pauseBtn").css('background', 'url(../img/pauseBtn.png) no-repeat 0px 0px');
	$("#pauseBtn").attr('posX', 160);
	//$("#pauseBtn").css('border', "1px solid black");
	

	$("#muteBtn").css('position', "absolute");
	$("#muteBtn").css({left: 1014, top: 0, width: 30, height: 30});
	$("#muteBtn").css('cursor', 'pointer');
	$("#muteBtn").css('background', 'url(../img/mute_btn.png) no-repeat 0px 0px');
	//$("#muteBtn").css('border', "1px solid red");
	$("#muteBtn").attr('posX', 1014);	
	
	var muteLine = "<div id='muteLine'><div>"
	$("#muteBtn").append(muteLine);
	
	$("#muteLine").css('display', "none");
	$("#muteLine").css('position', "absolute");
	$("#muteLine").css('top', 2);
	$("#muteLine").css('width', 28);
	$("#muteLine").css('height', 28);
	//$("#muteLine").css('border', "1px solid red");
	$("#muteLine").css('background', 'url(../img/muteLine.png) no-repeat 0px 0px');


	$("#reBtn").css('position', "absolute");
	$("#reBtn").css({left: 196, top: 0, width: 28, height: 30});
	$("#reBtn").css('cursor', 'pointer');
	$("#reBtn").css('background', 'url(../img/reBtn.png) no-repeat 0px 0px');
	$("#reBtn").attr('posX', 196);
	//$("#reBtn").css('border', "1px solid red");
	
	//$("#script_btn").hide();
	$("#script_btn").css('position', "absolute");
	$("#script_btn").css({left: 232, top: 0, width: 28, height: 30});
	$("#script_btn").css('cursor', 'pointer');
	$("#script_btn").css('background', 'url(../img/script_btn.png) no-repeat 0px 0px');
	

	$("#prevBtn").css('position', "absolute");
	$("#prevBtn").css({left: 1128, top: 0, width: 28, height: 30});
	$("#prevBtn").css('cursor', 'pointer');
	$("#prevBtn").css('background', 'url(../img/prev_btn.png) no-repeat 0px 0px');
	//$("#prevBtn").css('border', "1px solid red");
	
	

	$("#nextBtn").css('position', "absolute");
	$("#nextBtn").css({left: 1242, top: 0, width: 28, height: 30});
	$("#nextBtn").css('cursor', 'pointer');
	$("#nextBtn").css('background', 'url(../img/next_btn.png) no-repeat 0px 0px');
	//$("#nextBtn").css('border', "1px solid red");
	
	

	//pageGrup
	$("#pageText").css('pointer-events', "none");
	$("#pageText").css('position', "absolute");
	$("#pageText").css({left: 1140, top: 3, width: 110, height: 28});
	//$("#pageText").css('border', "1px solid red");
	
	$("#pageDot").css('position', "absolute");
	$("#pageDot").css({left: 56, top: 11, width: 5, height: 5});
	$("#pageDot").css('border-radius', '5px');
	$("#pageDot").css('background-color', '#bbbbbb');

	$("#cPage").css('position', "absolute");
	$("#cPage").css({left: 17, top: 0, width: 30, height: 23});
	$("#cPage").css('text-align','right');
	$("#cPage").css('font-size','18px');
	$("#cPage").css('color', "#00d7fb");
	$("#cPage").css("font-family", "SCDream3");
	$("#cPage").css("font-weight", "bold");
	$("#cPage").css('cursor', 'default');
	//$("#cPage").css('border', "1px solid red");
	
	
	$("#tPage").css('position', "absolute");
	$("#tPage").css({left: 70, top: 0, width: 30, height: 23});
	$("#tPage").css('text-align','left');
	$("#tPage").css('font-size','18px');
	$("#tPage").css('color','#bbbbbb');
	$("#tPage").css("font-family", "SCDream3");
	$("#tPage").css("font-weight", "bold");
	$("#tPage").css('cursor', 'default');
	//$("#tPage").css('border', "1px solid red");
	
		
	sliderStart(sliderMax);
	
	resizeViewport();
		
	uiMenuMouseEvent();
	make_toolTipFunc();
	make_layerPopUpFunc();

	focusInit();
	loadPage();

	//alert(deviceName);

	
};

function uiMenuMouseEvent(){	
	$("#popupVideo_closeBtn").click(function() {
		popupVideoClose();
	});
	
	$("#nextPop").click(function() {
		nextFunc();
	});

	$("#mNextBtn").click(function() {
		nextFunc();
	});
	$("#mPrevBtn").click(function() {
		prevFunc();
	});	
	
	/*
	$("#menuTapeBtn").on('click', function(e) {		
		e.preventDefault();
		$("#menuCtn").show();
		$("#bookMarkCtn").hide();
		
		$(this).hide();
		$("#bookMarkTapeBtn").show();
		//$("#menuTapeBtn").css("background-color", "#FFCC02");
		//$("#bookMarkTapeBtn").css("background-color", "#333333");
	});	
	//$("#menuTapeBtn").trigger('click');

	$("#bookMarkTapeBtn").on('click', function(e) {		
		e.preventDefault();
		$("#menuCtn").hide();
		$("#bookMarkCtn").show();
		
		$(this).hide();
		$("#menuTapeBtn").show();
		//$("#menuTapeBtn").css("background-color", "#333333");
		//$("#bookMarkTapeBtn").css("background-color", "#FFCC02");
	});
	*/
	
	$("#toggleMenu_closeBtn").val("off");
	$("#toggleMenu_closeBtn").on('click', function(e) {		
		e.preventDefault();
		var power = $(this).val();
		
		if(power == "off"){
			$("#toggleMenu_closeBtn").css("background-position-x", "-20px");
			gsap.to($("#toggleMenu"), 0.3, {
				//x: -160,
				x: -92,
				onComplete: function () {
					$("#toggleMenu_closeBtn").val("on");		
				}
			})
		}else{
			$("#toggleMenu_closeBtn").css("background-position-x", "0px");
			gsap.to($("#toggleMenu"), 0.3, {
				x: 0,
				onComplete: function () {
					$("#toggleMenu_closeBtn").val("off");
				}
			})
		}
		
	});
	
	$("#studyBtn").on('click', function(e) {		
		e.preventDefault();
		studyPopShow(); // 학습도우미
	});
	
	$("#practiceVideoBtn").on('click', function(e) {		
		e.preventDefault();
		//examplePopShow(); // 사례모음
		practicePopShow(); // 실습영상
	});
	
	$("#discussBtn").on('click', function(e) {		
		e.preventDefault();
		thinkPopUp();		
	});

	$("#memoBtn").on('click', function(e) {		
		e.preventDefault();
		memoPopUp();		
	});
	
	$("#questionBtn").on('click', function(e) {
		e.preventDefault();
		if($(this).val()) return;

		if( $("#questionPopCtn").css("display") == "block"){
			gsap.to($("#questionPopCtn"), 0, {
				display: "none",
				scale: 0,
				onComplete: function () {
					$("#questionBtn").val(false);
				}
			})
		}else{
			gsap.to($("#questionPopCtn"), 0.5, {
				display: "block",
				ease: "elastic.out(1, 0.7)",
				scale: 1,
				onStart: function () {
					$("#questionBtn").val(true);
				},
				onComplete: function () {
					$("#questionBtn").val(false);
				}
			})
		}
		
	});
	
	$("#learningBtn").on('click', function(e) {		
		e.preventDefault();
		if($(this).val()) return;

		if( $("#learningPopCtn").css("display") == "block"){
			videoPlay();
			gsap.to($("#learningPopCtn"), 0.5, {
				display: "none",
				opacity: 0,
				onComplete: function () {
					$("#learningPopCtn").val(false);
				}
			})
		}else{
			videoPause();
			gsap.to($("#learningPopCtn"), 0.5, {
				display: "block",
				opacity: 1,
				onStart: function () {
					$("#learningPopCtn").val(true);
				},
				onComplete: function () {
					$("#learningPopCtn").val(false);
				}
			})
		}

	});
	

	$("#playBtn").on('click', function(e) {
		e.preventDefault();
		
		switch(controlMode){
			case "video":
				videoPlay();
			break;

			case "audio":
				AudioPlay();
			break;
		}
		
	});
		
	$("#pauseBtn").on('click', function(e) {
		e.preventDefault();
		
		switch(controlMode){
			case "video":
				videoPause();
			break;

			case "audio":
				AudioPause();
			break;
		}
		
	});
	
	$("#reBtn").click(function(e) {
		e.preventDefault();

		switch(controlMode){
			case "video":
				videoReStart();
			break;

			case "audio":
				AudioReStart();
			break;
		}
		
	});

	$("#muteBtn").click(function(e) {
		e.preventDefault();
		switch(controlMode){
			case "video":
				volumeVideo();
			break;

			case "audio":
				volumeAudio();
			break;
		}
	});

	/*
	$("#downBtn").click(function(e) {
		e.preventDefault();		
		var downURL = "down/"+chasi+".zip";
		window.open(downURL, "_self");
	});
	*/
	
	/////////////////////////////////////////
	
	$("#script_btn").click(function() {
		scriptPower = !scriptPower;
		if(scriptPower){
			$("#scriptCtn").show();
			//$("#scriptCtn").animate({ "top": "-=72px" }, "fast" );
			$("#script_btn").css("background-position-y", "-30px");
			
			$("#scriptCtn").stop();
			$("#scriptCtn").css("opacity", "0");
			$("#scriptCtn").animate({
				opacity: "1",
				//top:"516px"
			  }, {
				duration: 300,
				specialEasing: {
				  opacity: "linear",
					top:"easeOutBounce"
				},
				complete: function() {
					
				}
			 });

		}else{			
			//$("#scriptCtn").animate({ "top": "+=72px" }, "fast" );
			$("#script_btn").css("background-position-y", "0px");

			$("#scriptCtn").stop();
			$("#scriptCtn").css("opacity", "1");
			$("#scriptCtn").animate({
				opacity: "0",
				//top:"600px"
			  }, {
				duration: 300,
				specialEasing: {
				  opacity: "linear",
					top:"easeOutBounce"
				},
				complete: function() {
					$( "#scriptCtn" ).hide();
				}
			 });
		}
	});
	
	$("#closeScript").click(function() {
		$( "#script_btn" ).click();
	});
	
	$("#nextBtn").click(function(e) {
		e.preventDefault();
		nextFunc();
	});
	
	$("#prevBtn").click(function(e) {
		e.preventDefault();
		prevFunc();
	});
	
	$("#fullScreenBtn").click(function(e) {
		e.preventDefault();
		openFullscreen();
	});

	$("#rateBtn").click(function(e) {
		e.preventDefault();
		if($("#rate_popCtn").css('display') == "none"){
			$("#rate_popCtn").show();
			if(!mobileCheck){
				$(this).children(".toolTipText").hide();
				$(this).children(".triangleBottom").hide();
			}
		}else{
			$("#rate_popCtn").hide();
			if(!mobileCheck){
				$(this).children(".toolTipText").show();
				$(this).children(".triangleBottom").show();
			}
		}	
	});

	$("#confirmBtn").click(function(e) {
		e.preventDefault();
		$("#messageBox").hide();
		//bgmCall("");
		/*if(chapterNames[page-1].type == "sound"){
			AudioPlay();
		}else{
			videoPlay();
		}*/
		//loadPage();
		
		switch(controlMode){
			case "video":
				videoPlay();
			break;

			case "audio":
				AudioPlay();
			break;
		}
		if(chapterNames[page-1].bgm){
			bgmPlay();
		}
	});
	
	$("#bookmarkBtn").click(function(e) {
		bookmarkSaveFunc();
	});


	///////////////////////////// mouse over Event //////////////////////
	if(!mobileCheck){
		/*
		$("#menuTapeBtn").on('mouseover', function(e) {
			$(this).css("background-position-x", "-213px");
		});

		$("#menuTapeBtn").on('mouseout', function(e) {
			$(this).css("background-position-x", "0px");
		});

		$("#bookMarkTapeBtn").on('mouseover', function(e) {
			$(this).css("background-position-x", "-213px");
		});

		$("#bookMarkTapeBtn").on('mouseout', function(e) {
			$(this).css("background-position-x", "0px");
		});

		*/
		
		$("#popupVideo_closeBtn").on('mouseover', function(e) {
			//$(this).css("background-position-y", "-34px");
			gsap.to($(this), 0.5, {
				rotation: 180
			}, 0.3)
		});

		$("#popupVideo_closeBtn").on('mouseout', function(e) {
			//$(this).css("background-position-y", "0px");
			gsap.to($(this), 0.5, {
				rotation: 0
			}, 0.3)
		});
		
		$("#toggleMenu_closeBtn").on('mouseover', function(e) {
			$(this).css("background-position-y", "-20px");
		});

		$("#toggleMenu_closeBtn").on('mouseout', function(e) {
			$(this).css("background-position-y", "0px");
		});

		

		$("#studyBtn").on('mouseover', function(e) {
			$(this).css("background-position-y", "-20px");
			$(this).children(".toolTipText").show();
			$(this).children(".triangleTop").show();
		});

		$("#studyBtn").on('mouseout', function(e) {
			$(this).css("background-position-y", "0px");
			$(this).children(".toolTipText").hide();
			$(this).children(".triangleTop").hide();
		});
		
		$("#practiceVideoBtn").on('mouseover', function(e) {
			$(this).css("background-position-y", "-20px");
			$(this).children(".toolTipText").show();
			$(this).children(".triangleTop").show();
		});

		$("#practiceVideoBtn").on('mouseout', function(e) {
			$(this).css("background-position-y", "0px");
			$(this).children(".toolTipText").hide();
			$(this).children(".triangleTop").hide();
		});
		
		$("#bookmarkBtn").on('mouseover', function(e) {
			$(this).css("background-position-y", "-20px");
			$(this).children(".toolTipText").show();
			$(this).children(".triangleTop").show();
		});

		$("#bookmarkBtn").on('mouseout', function(e) {
			$(this).children(".toolTipText").hide();
			$(this).children(".triangleTop").hide();
			if(bookMarkData.length >= 1){
				var chk = false;
				for(var i=1; i<=bookMarkData.length; i++){
					if(page == bookMarkData[i-1]){
						chk = true;
						break;
					}
				}

				if(chk){
					$(this).css("background-position-y", "-32px");
				}else{
					$(this).css("background-position-y", "0px");
				}
			}else{
				$(this).css("background-position-y", "0px");
			}
		});
		
		$("#discussBtn").on('mouseover', function(e) {
			$(this).css("background-position-y", "-40px");
			$(this).children(".toolTipText").show();
			$(this).children(".triangleBottom").show();
		});

		$("#discussBtn").on('mouseout', function(e) {
			$(this).children(".toolTipText").hide();
			$(this).children(".triangleBottom").hide();

			if( $("#questionPopCtn").css("display") == "block"){
				$(this).css("background-position-y", "-40px");
			}else{
				$(this).css("background-position-y", "0px");
			}
			
		});

		$("#memoBtn").on('mouseover', function(e) {
			$(this).css("background-position-y", "-40px");
			$(this).children(".toolTipText").show();
			$(this).children(".triangleBottom").show();
		});

		$("#memoBtn").on('mouseout', function(e) {
			$(this).css("background-position-y", "0px");
			$(this).children(".toolTipText").hide();
			$(this).children(".triangleBottom").hide();
		});
		
		$("#questionBtn").on('mouseover', function(e) {
			$(this).css("background-position-y", "-40px");
			$(this).children(".toolTipText").show();
			$(this).children(".triangleBottom").show();
		});

		$("#questionBtn").on('mouseout', function(e) {
			$(this).children(".toolTipText").hide();
			$(this).children(".triangleBottom").hide();

			if( $("#questionPopCtn").css("display") == "block"){
				$(this).css("background-position-y", "-40px");
			}else{
				$(this).css("background-position-y", "0px");
			}
			
		});
		
		$("#learningBtn").on('mouseover', function(e) {
			$(this).css("background-position-y", "-40px");
			$(this).children(".toolTipText").show();
			$(this).children(".triangleBottom").show();
		});

		$("#learningBtn").on('mouseout', function(e) {
			$(this).children(".toolTipText").hide();
			$(this).children(".triangleBottom").hide();

			if( $("#questionPopCtn").css("display") == "block"){
				$(this).css("background-position-y", "-40px");
			}else{
				$(this).css("background-position-y", "0px");
			}
			
		});
		
		

		$("#playBtn").on('mouseover', function(e) {
			$(this).css("background-position-y", "-30px");
			$(this).children(".toolTipText").show();
			$(this).children(".triangleBottom").show();
		});

		$("#playBtn").on('mouseout', function(e) {
			$(this).css("background-position-y", "0px");
			$(this).children(".toolTipText").hide();
			$(this).children(".triangleBottom").hide();
		});
		
		$("#pauseBtn").on('mouseover', function(e) {
			$(this).css("background-position-y", "-30px");
			$(this).children(".toolTipText").show();
			$(this).children(".triangleBottom").show();
		});
		$("#pauseBtn").on('mouseout', function(e) {
			$(this).css("background-position-y", "0px");
			$(this).children(".toolTipText").hide();
			$(this).children(".triangleBottom").hide();
		});

		$("#reBtn").mouseover(function(e) {		
			$(this).css("background-position-y", "-30px");
			$(this).children(".toolTipText").show();
			$(this).children(".triangleBottom").show();
		});
		$("#reBtn").mouseout(function(e) {
			$(this).css("background-position-y", "0px");
			$(this).children(".toolTipText").hide();
			$(this).children(".triangleBottom").hide();
		});

		$("#muteBtn").mouseover(function(e) {		
			$(this).css("background-position-y", "-30px");
			$(this).children(".toolTipText").show();
			$(this).children(".triangleBottom").show();
		});
		$("#muteBtn").mouseout(function(e) {
			$(this).css("background-position-y", "0px");
			$(this).children(".toolTipText").hide();
			$(this).children(".triangleBottom").hide();
		});
		
		$("#script_btn").mouseover(function() {
			if(!scriptPower){
				$("#script_btn").css("background-position-y", "-30px");
			}
			$(this).children(".toolTipText").show();
			$(this).children(".triangleBottom").show();
		});

		$("#script_btn").mouseout(function() {
			if(!scriptPower){
				$("#script_btn").css("background-position-y", "0px");
			}
			$(this).children(".toolTipText").hide();
			$(this).children(".triangleBottom").hide();
		});

		$("#closeScript").mouseover(function(e) {		
			$(this).css("background-position-y", "-28px");
			gsap.to($(this), 0.5, {
				rotation: 180
			}, 0.3)
		});
		$("#closeScript").mouseout(function(e) {
			$(this).css("background-position-y", "0px");
			gsap.to($(this), 0.5, {
				rotation: 0
			}, 0.3)
		});

		$("#nextBtn").mouseover(function() {
			$(this).css("background-position-y", "-30px");
			$(this).children(".toolTipText").show();
			$(this).children(".triangleBottom").show();
		});
		
		$("#nextBtn").mouseout(function() {
			$(this).css("background-position-y", "0px");
			$(this).children(".toolTipText").hide();
			$(this).children(".triangleBottom").hide();
		});

		$("#prevBtn").mouseover(function() {
			$(this).css("background-position-y", "-30px");
			$(this).children(".toolTipText").show();
			$(this).children(".triangleBottom").show();
		});
		
		$("#prevBtn").mouseout(function() {
			$(this).css("background-position-y", "0px");
			$(this).children(".toolTipText").hide();
			$(this).children(".triangleBottom").hide();
		});

		$("#fullScreenBtn").mouseover(function() {
			$(this).css("background-position-y", "-30px");
			$(this).children(".toolTipText").show();
			$(this).children(".triangleBottom").show();
		});
		
		$("#fullScreenBtn").mouseout(function() {
			$(this).css("background-position-y", "0px");
			$(this).children(".toolTipText").hide();
			$(this).children(".triangleBottom").hide();
		});
		
		$("#rateBtn").mouseover(function() {
			$(this).css("background-position-x", "-40px");
			if($("#rate_popCtn").css("display") == "none"){
				$(this).children(".toolTipText").show();
				$(this).children(".triangleBottom").show();
			}
		});
		
		$("#rateBtn").mouseout(function() {
			$(this).css("background-position-x", "0px");
			$(this).children(".toolTipText").hide();
			$(this).children(".triangleBottom").hide();
		});

		
	};
}


////// toolTip
function make_toolTipFunc(){
	$("#indexBtn").append('<div class="triangleBottom"></div> <div class="toolTipText"></div>');
	$("#indexBtn").children(".triangleBottom").css('margin-top', '-12px');
	$("#indexBtn").children(".triangleBottom").css('margin-left', '33px');	
	$("#indexBtn").children(".toolTipText").css({left: 8, top: -40, width:40});
	$("#indexBtn").children(".toolTipText").css("text-align", "center");
	$("#indexBtn").children(".toolTipText").html("차례");

	$("#playBtn").append('<div class="triangleBottom"></div> <div class="toolTipText"></div>');
	$("#playBtn").children(".triangleBottom").css('margin-top', '-12px');
	$("#playBtn").children(".triangleBottom").css('margin-left', '8px');
	$("#playBtn").children(".toolTipText").css({left: -17, top: -40, width:40});
	$("#playBtn").children(".toolTipText").css("text-align", "center");
	$("#playBtn").children(".toolTipText").html("재생");
	//$("#playBtn").children(".toolTipText").css('border', "1px solid red");
	
	$("#pauseBtn").append('<div class="triangleBottom"></div> <div class="toolTipText"></div>');
	$("#pauseBtn").children(".triangleBottom").css('margin-top', '-12px');
	$("#pauseBtn").children(".triangleBottom").css('margin-left', '8px');
	$("#pauseBtn").children(".toolTipText").css({left: -17, top: -40, width:40});
	$("#pauseBtn").children(".toolTipText").css("text-align", "center");
	$("#pauseBtn").children(".toolTipText").html("멈춤");
	//$("#pauseBtn").children(".toolTipText").css('border', "1px solid red");
	

	$("#reBtn").append('<div class="triangleBottom"></div> <div class="toolTipText"></div>');
	$("#reBtn").children(".triangleBottom").css('margin-top', '-12px');
	$("#reBtn").children(".triangleBottom").css('margin-left', '8px');
	$("#reBtn").children(".toolTipText").css({left: -30, top: -40, width:70});
	$("#reBtn").children(".toolTipText").css("text-align", "center");
	$("#reBtn").children(".toolTipText").html("다시보기");
	//$("#reBtn").children(".toolTipText").css('border', "1px solid red");
	
	$("#script_btn").append('<div class="triangleBottom"></div> <div class="toolTipText"></div>');
	$("#script_btn").children(".triangleBottom").css('margin-top', '-12px');
	$("#script_btn").children(".triangleBottom").css('margin-left', '8px');
	$("#script_btn").children(".toolTipText").css({left: -30, top: -40, width:70});
	$("#script_btn").children(".toolTipText").css("text-align", "center");
	$("#script_btn").children(".toolTipText").html("자막보기");
	//$("#script_btn").children(".toolTipText").css('border', "1px solid red");

	$("#fullScreenBtn").append('<div class="triangleBottom"></div> <div class="toolTipText"></div>');
	$("#fullScreenBtn").children(".triangleBottom").css('margin-top', '-12px');
	$("#fullScreenBtn").children(".triangleBottom").css('margin-left', '8px');
	$("#fullScreenBtn").children(".toolTipText").css({left: -30, top: -40, width:70});
	$("#fullScreenBtn").children(".toolTipText").css("text-align", "center");
	$("#fullScreenBtn").children(".toolTipText").html("전체화면");
	//$("#fullScreenBtn").children(".toolTipText").css('border', "1px solid red");
	
	$("#studyBtn").append('<div class="triangleTop"></div> <div class="toolTipText"></div>');
	$("#studyBtn").children(".triangleTop").css('margin-top', '28px');
	$("#studyBtn").children(".triangleTop").css('margin-left', '6px');
	$("#studyBtn").children(".toolTipText").css({left: -17, top: 40, width:90});
	$("#studyBtn").children(".toolTipText").css("text-align", "center");
	$("#studyBtn").children(".toolTipText").html("학습 도우미");

	$("#practiceVideoBtn").append('<div class="triangleTop"></div> <div class="toolTipText"></div>');
	$("#practiceVideoBtn").children(".triangleTop").css('margin-top', '28px');
	$("#practiceVideoBtn").children(".triangleTop").css('margin-left', '6px');
	$("#practiceVideoBtn").children(".toolTipText").css({left: -30, top: 40, width:70});
	$("#practiceVideoBtn").children(".toolTipText").css("text-align", "center");
	$("#practiceVideoBtn").children(".toolTipText").html("실습 영상");
	
	$("#bookmarkBtn").append('<div class="triangleTop"></div> <div class="toolTipText"></div>');
	$("#bookmarkBtn").children(".triangleTop").css('margin-top', '28px');
	$("#bookmarkBtn").children(".triangleTop").css('margin-left', '6px');
	$("#bookmarkBtn").children(".toolTipText").css({left: -30, top: 40, width:70});
	$("#bookmarkBtn").children(".toolTipText").css("text-align", "center");
	$("#bookmarkBtn").children(".toolTipText").html("즐겨찾기");

	$("#discussBtn").append('<div class="triangleBottom"></div> <div class="toolTipText"></div>');
	$("#discussBtn").children(".triangleBottom").css('margin-top', '-12px');
	$("#discussBtn").children(".triangleBottom").css('margin-left', '8px');
	$("#discussBtn").children(".toolTipText").css({left: -30, top: -40, width:70});
	$("#discussBtn").children(".toolTipText").css("text-align", "center");
	$("#discussBtn").children(".toolTipText").html("토론하기");

	$("#memoBtn").append('<div class="triangleBottom"></div> <div class="toolTipText"></div>');
	$("#memoBtn").children(".triangleBottom").css('margin-top', '-12px');
	$("#memoBtn").children(".triangleBottom").css('margin-left', '10px');
	$("#memoBtn").children(".toolTipText").css({left: -12, top: -40, width:40});
	$("#memoBtn").children(".toolTipText").css("text-align", "center");
	$("#memoBtn").children(".toolTipText").html("메모");

	$("#questionBtn").append('<div class="triangleBottom"></div> <div class="toolTipText"></div>');
	$("#questionBtn").children(".triangleBottom").css('margin-top', '-12px');
	$("#questionBtn").children(".triangleBottom").css('margin-left', '8px');
	$("#questionBtn").children(".toolTipText").css({left: -30, top: -40, width:70});
	$("#questionBtn").children(".toolTipText").css("text-align", "center");
	$("#questionBtn").children(".toolTipText").html("질문하기");
	

	$("#learningBtn").append('<div class="triangleBottom"></div> <div class="toolTipText"></div>');
	$("#learningBtn").children(".triangleBottom").css('margin-top', '-12px');
	$("#learningBtn").children(".triangleBottom").css('margin-left', '8px');
	$("#learningBtn").children(".toolTipText").css({left: -30, top: -40, width:70});
	$("#learningBtn").children(".toolTipText").css("text-align", "center");
	$("#learningBtn").children(".toolTipText").html("러닝맵");

	
	

	$("#muteBtn").append('<div class="triangleBottom"></div> <div class="toolTipText"></div>');
	$("#muteBtn").children(".triangleBottom").css('margin-top', '-12px');
	$("#muteBtn").children(".triangleBottom").css('margin-left', '8px');	
	$("#muteBtn").children(".toolTipText").css({left: -30, top: -40, width:70});
	$("#muteBtn").children(".toolTipText").css("text-align", "center");
	$("#muteBtn").children(".toolTipText").html("음소거");
	//$("#muteBtn").children(".toolTipText").css('border', "1px solid red");

	$("#prevBtn").append('<div class="triangleBottom"></div> <div class="toolTipText"></div>');
	$("#prevBtn").children(".triangleBottom").css('margin-top', '-12px');
	$("#prevBtn").children(".triangleBottom").css('margin-left', '8px');
	$("#prevBtn").children(".toolTipText").css({left: -10, top: -40, width:90});
	$("#prevBtn").children(".toolTipText").css("text-align", "center");
	$("#prevBtn").children(".toolTipText").html("이전 페이지");
	//$("#prevBtn").children(".toolTipText").css('border', "1px solid red");

	$("#nextBtn").append('<div class="triangleBottom"></div> <div class="toolTipText"></div>');
	$("#nextBtn").children(".triangleBottom").css('margin-top', '-12px');
	$("#nextBtn").children(".triangleBottom").css('margin-left', '8px');	
	$("#nextBtn").children(".toolTipText").css({left: -80, top: -40, width:90});
	$("#nextBtn").children(".toolTipText").css("text-align", "center");
	$("#nextBtn").children(".toolTipText").html("다음 페이지");
	//$("#nextBtn").children(".toolTipText").css('border', "1px solid red");

	$("#rateBtn").append('<div class="triangleBottom"></div> <div class="toolTipText"></div>');
	$("#rateBtn").children(".triangleBottom").css('margin-top', '-12px');
	$("#rateBtn").children(".triangleBottom").css('margin-left', '15px');
	$("#rateBtn").children(".toolTipText").css({left: -10, top: -40, width:40});
	$("#rateBtn").children(".toolTipText").css("text-align", "center");
	$("#rateBtn").children(".toolTipText").html("배속");
}

///// tap focus
function focusInit(){
	$("#Container").focus();

	var focusArr = ["indexBtn", "discussBtn", "questionBtn", "learningBtn", "memoBtn", "playBtn", "pauseBtn", "reBtn", "script_btn", "fullScreenBtn", "muteBtn", "rateBtn", "prevBtn", "nextBtn", "menuCloseBtn"];
	
	for(var i=1; i<=focusArr.length; i++){
		$("#"+focusArr[i-1]).attr("tabindex", 0);
		
		$("#"+focusArr[i-1]).focus(function() { 
			focusObj = $(this);
		});
		
		$("#"+focusArr[i-1]).focusout(function() {
			focusObj = null;
		});
	};
	
	for(var i=1; i<=MenuData.length; i++){
		$("#menu_"+i).attr("tabindex", 0);
		$("#menu_"+i).focus(function() { focusObj = $(this); });
		$("#menu_"+i).focusout(function() { focusObj = null; });

		for(var j=1; j<=subData[i-1].length; j++){
			$("#sub_"+i+"_"+j).attr("tabindex", 0);
			$("#sub_"+i+"_"+j).focus(function() { focusObj = $(this); });
			$("#sub_"+i+"_"+j).focusout(function() { focusObj = null; });
		};	
	}
};


// 질문하기
function make_layerPopUpFunc(){	
	$(".bottomMenu").append('<div id="questionPopCtn"> <div id="questionPopBg"></div> <textarea id="questionTextarea"></textarea> <div id="questionPop_closeBtn"></div> <div id="questionPop_saveBtn"></div> </div>');
	
	$("#questionPopCtn").css('display', "none");
	$("#questionPopCtn").css('position', "absolute");
	$("#questionPopCtn").css({left: 415, top: -560});
	$("#questionPopCtn").css('transform', 'scale(0)');
	$("#questionPopCtn").css('transform-origin', '0px 550px');
	
	$("#questionPopBg").css('position', "absolute");
	$("#questionPopBg").css({left: 0, top: 0, width: 450, height: 550});
	$("#questionPopBg").css('pointer-events', 'none');
	$("#questionPopBg").css('background', 'url(../img/questionPop/bg.png) no-repeat 0px 0px');

	$("#questionPop_closeBtn").css('cursor', "pointer");
	$("#questionPop_closeBtn").css('position', "absolute");
	$("#questionPop_closeBtn").css({left: 406, top: 10, width: 34, height: 34});
	$("#questionPop_closeBtn").css('background', 'url(../img/questionPop/closeBtn.png) no-repeat 0px 0px');
	
	$("#questionPop_saveBtn").css('cursor', "pointer");
	$("#questionPop_saveBtn").css('position', "absolute");
	$("#questionPop_saveBtn").css({left: 150, top: 502, width: 150, height: 40});
	$("#questionPop_saveBtn").css('background', 'url(../img/questionPop/saveBtn.png) no-repeat 0px 0px');
	
	var str = "질문을 입력 하세요.";
	$("#questionTextarea").css('position', "absolute");
	$("#questionTextarea").css({left: 10, top: 180, width: 424, height: 300});
	$("#questionTextarea").css('overflow-x', "hidden");
	$("#questionTextarea").css('overflow-y', "auto");
	$("#questionTextarea").css('font-family', "SCDream5");
	$("#questionTextarea").css('color', "#424242");
	$("#questionTextarea").css('font-size', "14pt");
	$("#questionTextarea").css('border', "none");
	$("#questionTextarea").css('outline', "none");
	$("#questionTextarea").css('background-color', "transparent");
	$("#questionTextarea").css('resize', "none");
		
	$("#questionTextarea").val(str);
	
	$("#questionPop_closeBtn").mouseover(function(e) {
		//$(this).css("background-position-y", "-33px");
		gsap.to($(this), 0.5, {
			rotation: 180
		}, 0.3)
	});
	$("#questionPop_closeBtn").mouseout(function(e) {
		//$(this).css("background-position-y", "0px");
		gsap.to($(this), 0.5, {
			rotation: 0
		}, 0.3)
	});
	
	$("#questionPop_closeBtn").click(function() {
		$("#questionBtn").click();
		$("#questionBtn").css("background-position-y", "0px");
	});

	$("#questionPop_saveBtn").mouseover(function(e) {
		$(this).css("background-position-y", "-40px");
	});
	$("#questionPop_saveBtn").mouseout(function(e) {
		$(this).css("background-position-y", "0px");
	});
	
	$("#questionPop_saveBtn").click(function() {
		if($("#questionTextarea").val() == str || $("#questionTextarea").val() == ""){
			alert("질문을 입력해 주세요.");
		}else{
			questionSaveFunc($("#questionTextarea").val());
		}
	});
	
	
	$("#questionTextarea").focus(function(){
		TextFocusCheck = true;
		//console.log('포커스를 얻었습니다.');
		if($(this).val() == str){
			$(this).val("");
		}
	});
	$("#questionTextarea").blur(function(){
		TextFocusCheck = false;
		if($(this).val() == ""){
			$(this).val(str);
		}
		//console.log('포커스를 벗어났습니다. .');
	});
}


function learningPopCtn(){
	$("#learningPopCtn").css('display', 'none');
	$("#learningPopCtn").css("opacity", "0");
	//$("#learningPopCtn").css('pointer-events', 'none');
	$("#learningPopCtn").css('position', 'absolute');
	$("#learningPopCtn").css({left: 0, top: 0, width:1280, height:770});
	$("#learningPopCtn").css('background', 'url(../img/learningPop/bg.png) no-repeat 0px 0px');
	
	
	var htmlStr = 
		'<div id="learning_imgCtn"> <div id="learning_img"></div> </div>'+
		'<div id="learning_closeBtn"></div>';
	
	$("#learningPopCtn").append(htmlStr);

	$("#learning_imgCtn").css('position', 'absolute');
	$("#learning_imgCtn").css({left: 52, top: 128, width:1186, height:580});
	//$("#learning_imgCtn").css('border', "1px solid red");
	$("#learning_imgCtn").css('overflow-y', "auto");

	//$("#learning_img").css('position', 'absolute');
	$("#learning_img").css({left: 0, top: 0, width:1161, height:1770});
	$("#learning_img").css('background', 'url(../img/learningPop/learning.png) no-repeat 0px 0px');
	
	$("#learning_imgCtn").mCustomScrollbar(
		{
			scrollInertia: 1500,
			scrollEasing: "easeOut",
			theme:"light-1"
			//theme:"dark-3"
		}
	);
	
	$("#learning_closeBtn").css('cursor', 'pointer');
	$("#learning_closeBtn").css('position', 'absolute');
	$("#learning_closeBtn").css({left: 1220, top: 16, width:40, height:40});
	$("#learning_closeBtn").css('background', 'url(../img/learningPop/closeBtn.png) no-repeat 0px 0px');

	$("#learning_closeBtn").mouseover(function(e) {		
		$(this).css("background-position-y", "-40px");
		gsap.to($(this), 0.5, {
			rotation: 180
		}, 0.3)
	});
	$("#learning_closeBtn").mouseout(function(e) {
		$(this).css("background-position-y", "0px");
		gsap.to($(this), 0.5, {
			rotation: 0
		}, 0.3)
	});
	
	$("#learning_closeBtn").click(function() {
		videoPlay();
		gsap.to($("#learningPopCtn"), 0.5, {
			display: "none",
			opacity: 0,
			onComplete: function () {
				$("#learningPopCtn").val(false);
			}
		})
	});
	
}