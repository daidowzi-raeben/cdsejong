var menuOpen_Check = false;
var open_PosX = 0;
var close_PosX;

var menu_fullscreenStartX = 0;

var menu_oldObj;
var sub_oldObj;

var sub_bgOverColor = "";

function leftMenuInit(){
	var tempPage = 0;
	for(var i=0; i<subData.length; i++){
		for(var j=0; j<subData[i].length; j++){
			tempPage++;
			subData[i][j].page = tempPage;
			//console.log("tempPage :"+tempPage+"=="+i+" / "+j);
		}
	}
	makeLeftMenu();
}

function makeLeftMenu(){
	//<div style="position:absolute; left:0px; top:0px">
	var menuHtml = '';
	var lineNum;

	for(var i=1; i<=MenuData.length; i++){
		//menuHtml += '<div class="depths1" id="menu_'+i+'" onClick="mouseClick(this)" onmouseover="menuOver(this)" onmouseout="menuOut(this)" style="color: '+menu_Color+'; top:'+leftMenu_StartY+'px; text-shadow: 1px 1px 0.1em rgba(0,0,0, 0.75);">'+MenuData[i-1].name+'</div>'
		menuHtml += ' <div class="depths1" id="menu_'+i+'" onClick="mouseClick(this)" onmouseover="menuOver(this)" onmouseout="menuOut(this)" style="position:absolute; color: '+menu_Color+'; top:'+leftMenu_StartY+'px; "><div class="depths1_icon"></div>'+MenuData[i-1].name+'</div>'
		//<img src="../img/leftMenu/dot.png" style="position:absolute"></img>
		lineNum = MenuData[i-1].name.split("<br>").length;
		leftMenu_StartY += (16*lineNum) + leftMenu_mainGap;
		
		for(var j=1; j<=subData[i-1].length; j++){
			menuDataArr.push('sub_'+i+'_'+j);
			if(!subData[i-1][j-1].hidden){
				
				//menuHtml += '<div class="depths2" id="sub_'+i+'_'+j+'" onClick="mouseClick(this)" onmouseover="menuOver(this)" onmouseout="menuOut(this)" value="'+subData[i-1][j-1].page+'" style="position:absolute; top:'+leftMenu_StartY+'px; color:'+sub_Color+'">'+subData[i-1][j-1].name+'</div>'
				/*
				if(i == 2){ // 가운데점 2뎁스만 적용.
					menuHtml += 
						'<div id="sub_'+i+'_'+j+'" onClick="mouseClick(this)" onmouseover="menuOver(this)" onmouseout="menuOut(this)" value="'+subData[i-1][j-1].page+'" style="position:absolute; top:'+leftMenu_StartY+'px; color:'+sub_Color+'">'+
							'<div class="depths2_icon"></div>'+
							'<div class="depths2">'+subData[i-1][j-1].name+'</div>'+
						'</div>'
				}else{
					menuHtml += 
						'<div id="sub_'+i+'_'+j+'" onClick="mouseClick(this)" onmouseover="menuOver(this)" onmouseout="menuOut(this)" value="'+subData[i-1][j-1].page+'" style="position:absolute; top:'+leftMenu_StartY+'px; color:'+sub_Color+'">'+
							'<div class="depths2">'+subData[i-1][j-1].name+'</div>'+
						'</div>'
				}
				*/
				
				menuHtml += 
					'<div id="sub_'+i+'_'+j+'" onClick="mouseClick(this)" onmouseover="menuOver(this)" onmouseout="menuOut(this)" value="'+subData[i-1][j-1].page+'" style="position:absolute; top:'+leftMenu_StartY+'px; color:'+sub_Color+'">'+
						'<div class="depths2_icon"></div>'+
						'<div class="depths2">'+subData[i-1][j-1].name+'</div>'+
					'</div>'

				var lineNum = subData[i-1][j-1].name.split("<br>").length;
								
				if(subData[i-1][j-1].name != ""){
					leftMenu_StartY += (16*lineNum) + leftMenu_subGap;
				}

				//leftMenu_StartY += leftMenu_subGap;
				
				

				if(j == subData[i-1].length){
					leftMenu_StartY +=leftMenu_bottomGap;
					//leftMenu_StartY += leftMenu_mainGap - leftMenu_subGap;
					
					/*if(i < MenuData.length){
						menuHtml += '<div class="leftMenu_underLine" style="top:'+leftMenu_StartY+'px;"></div>'
						leftMenu_StartY += leftMenu_mainGap; // 라인갭 형성을 위해 한번더 적용.
					}*/
				}
				
			}else{
				if(j == subData[i-1].length){
					leftMenu_StartY += 10;
				}
			}
		};	
	}
	
	menuHtml += '</div>'
	
	var menuW = $('#treeMenu').width();
	close_PosX = -(menuW);

	$('#menuCtn').append(menuHtml);
	
	//$('#menuMask').hide();
	$('#menuMask').css('position', 'absolute');
	$('#menuMask').css('left', "-100px");
	$('#menuMask').css('top', "0px");
	$('#menuMask').css('width', (menuW+100)+"px");
	$('#menuMask').css('height', contents_height+"px");
	// $('#menuMask').css('background-color', "#ffffff");
	//$('#menuMask').css('border', "1px solid red");
	
	if(!mobileCheck){
		$("#indexBtn").on('mouseover', function(e) {
			$(this).css("background-position-y", "-30px");
			$(this).children(".toolTipText").show();
			$(this).children(".triangleBottom").show();
		});

		$("#indexBtn").on('mouseout', function(e) {
			if(menuOpen_Check){
				$(this).css("background-position-y", "0px");
			}else{
				$(this).css("background-position-y", "-30px");
			}
			
			$(this).children(".toolTipText").hide();
			$(this).children(".triangleBottom").hide();
		});

		$("#menuCloseBtn").on('mouseover', function(e) {
			$(this).css("background-position-y", "-31px");

			gsap.to($(this), 0.5, {
				rotation: 180
			}, 0.3)
		});

		$("#menuCloseBtn").on('mouseout', function(e) {
			$(this).css("background-position-y", "0px");

			gsap.to($(this), 0.5, {
				rotation: 0
			}, 0.3)
		});
	}

	$("#indexBtn").click(function(){
		moveMenu(true);
	});

	$("#menuCloseBtn").click(function(){
		menuOpen_Check = false;
		moveMenu(true);
		$("#indexBtn").css('background-position', "0px 0px");
	});	

	moveMenu(false);

	//menuDisabled(null);
	
}

function menuShowHide(type){
	for(var i=1; i<=MenuData.length; i++){
		var menu = $("#menu_"+i);
		if(type){
			menu.show();
		}else{
			menu.hide();
		}
		for(var j=1; j<=subData[i-1].length; j++){
			var sub = $("#sub_"+i+"_"+j);
			if(type){
				sub.show();
			}else{
				sub.hide();
			}
		}
	}
}

function mouseClick(el){
	var page;
	var id = $(el).attr('id');
	
	var strArray = id.split("_");

	//console.log(id+" / "+strArray[0]);
	
	switch(strArray[0]){
		case "menu":
				
			if(menu_oldObj && menu_oldObj.attr('id') !=$("#"+id).attr('id')){
				menu_oldObj.css('background-position','0px 0px');
				menu_oldObj.css('color', menu_Color);
				menu_oldObj.children(".depths1_icon").css("background-position-y", "0px");

				sub_oldObj.css('color', sub_Color);
				sub_oldObj.children(".depths2_icon").css("background-position-y", "0px");
			}
			
			$("#sub_"+id.split("_")[1]+"_1").css('color', subOver_Color);
			$("#sub_"+id.split("_")[1]+"_1").children(".depths2_icon").css("background-position-y", "-13px");

			gotoFunc(subData[strArray[1]-1][0].page);
			
			menu_oldObj = $("#"+id);
			sub_oldObj = $("#sub_"+id.split("_")[1]+"_1");

		break;

		case "sub":
						
			if(sub_oldObj && sub_oldObj.attr('id') != $("#"+id).attr('id')){
				//console.log(sub_oldObj.attr('id')+" / "+$("#"+id).attr('id'));
				sub_oldObj.css('color', sub_Color);
				sub_oldObj.children(".depths2_icon").css("background-position-y", "0px");
				//sub_oldObj.css('background-color', "transparent");
			}
			
			//실행문.
			//console.log("page!! :"+ $(el).attr('value'));
			gotoFunc($(el).attr('value'));

			var menuNum = $("#"+id).attr('id').split("_")[1];
			if(menu_oldObj){
				menu_oldObj.css('background-position','0px 0px');
				menu_oldObj.css('color', menu_Color);
				menu_oldObj.children(".depths1_icon").css("background-position-y", "0px");
			}
			menu_oldObj =  $("#menu_"+menuNum);
			//menu_oldObj.css('background-position','0px -30px');
			menu_oldObj.css('color', menuOver_Color);
			menu_oldObj.children(".depths1_icon").css("background-position-y", "-24px");
			//console.log("sub_oldObj :"+menuNum);

			/////////


			sub_oldObj = $("#"+id);
			
		break;
	}
};

function menuOver(el){
	//console.log("over :"+$(el));
	
	var id = $(el).attr('id');
	var strArray = id.split("_");
	
	switch(strArray[0]){
		case "menu":
			//$(el).css('background-position','0px -30px');
			$(el).css('color', menuOver_Color);
			$(el).children(".depths1_icon").css("background-position-y", "-24px");
		break;

		case "sub":
			$(el).css('color', subOver_Color);
			$(el).children(".depths2_icon").css("background-position-y", "-13px");
			//$(el).css('background-color', sub_bgOverColor);
		break;
	}	
}

function menuOut(el){
	var id = $(el).attr('id');
	var strArray = id.split("_");
					
	switch(strArray[0]){
		case "menu":
			//$(el).css('background-position','0px 0px');
			$(el).css('color', menu_Color);
			$(el).children(".depths1_icon").css("background-position-y", "0px");
			if(menu_oldObj){
				//menu_oldObj.css('background-position','0px -30px');
				menu_oldObj.css('color', menuOver_Color);
				menu_oldObj.children(".depths1_icon").css("background-position-y", "-24px");
			}

		break;

		case "sub":
			$(el).css('color', sub_Color);
			$(el).children(".depths2_icon").css("background-position-y", "0px");
			//$(el).css('background-color', "transparent");
			if(sub_oldObj){
				sub_oldObj.css('color', subOver_Color);
				sub_oldObj.children(".depths2_icon").css("background-position-y", "-13px");
				//sub_oldObj.css('background-color', sub_bgOverColor);
			}
		break;
	}
};


function moveMenu(motion){
	var posX;
	menuShowHide(menuOpen_Check);
	if(menuOpen_Check){
		posX = menu_fullscreenStartX+open_PosX;
		if(motion){
			$("#treeMenu").animate({left:posX},"fast");
		}else{
			$("#treeMenu").css('left', posX);
		}
		$("#indexBtn").css("background-position-x", "-70px");
		//$('#menu_1').focus();
	}else{
		posX = menu_fullscreenStartX+close_PosX;
		if(motion){
			$("#treeMenu").animate({left:posX},"fast");
		}else{
			$("#treeMenu").css('left', posX);
		};
		$("#indexBtn").css("background-position-x", "0px");		
	};
	menuOpen_Check = ! menuOpen_Check;
}

function menuSelect(page){
	var mNum;
	var sNum;
	
	//console.log("subData :"+subData.length);
	for(var i=1; i<=subData.length; i++){
		for(var j=1; j<=subData[i-1].length; j++){
			//console.log("page :"+subData[i-1][j-1].name+" / "+menuDataArr[page-1]);
			
			if(page == subData[i-1][j-1].page){
				mNum = i;
				sNum = j;				
			}
		}		
	}
	
	
	if(menu_oldObj){
		menu_oldObj.css('background-position','0px 0px');
		menu_oldObj.css('color', menu_Color);
		menu_oldObj.children(".depths1_icon").css("background-position-y", "0px");
	}
	menu_oldObj =  $("#menu_"+mNum);
	//menu_oldObj.css('background-position','0px -30px');
	menu_oldObj.css('color', menuOver_Color);
	menu_oldObj.children(".depths1_icon").css("background-position-y", "-24px");
	
	if(sub_oldObj){
		sub_oldObj.css('color', sub_Color);
		sub_oldObj.children(".depths2_icon").css("background-position-y", "0px");
		//sub_oldObj.css('background-color', "transparent");
	}
	
	sub_oldObj =  $("#sub_"+mNum+"_"+sNum);
	if(sNum != 1){
		while(subData[mNum-1][sNum-1].hidden){
			sNum--;
		}
		sub_oldObj =  $("#sub_"+mNum+"_"+sNum);
	}

	sub_oldObj.css('color', subOver_Color);
	sub_oldObj.children(".depths2_icon").css("background-position-y", "-13px");
	//sub_oldObj.css('background-color', sub_bgOverColor);	
	
}


function menuDisabled(compPage){
	if(!compPage || compPage == null){
		return;
	}

	var temp = 1;

	for(var i=1; i<=MenuData.length; i++){
		var menu = $("#menu_"+i);
		menu.css("cursor", "pointer");

		for(var j=1; j<=subData[i-1].length; j++){
			var sub = $("#sub_"+i+"_"+j);
			sub.css("cursor", "pointer");
			
			if(compPage && compPage < temp){
				var compPage_id = menuDataArr[compPage-1].split("_")[1];
				
				if(compPage_id){
					if(i > compPage_id){
						menu.prop("disabled", true);
						menu.css('opacity', 0.5);
						menu.css("cursor", "default");
						menu.css('pointer-events', 'none');
					};
				}
				sub.prop("disabled", true);
				sub.css('opacity', 0.5);
				sub.css("cursor", "default");
				sub.css('pointer-events', 'none');
			};
			
			temp++;
		}
	};
	

	// 현재보는 페이지 메뉴는 활성화.
	menu_oldObj.prop("disabled", false);
	menu_oldObj.css('opacity', 1);
	menu_oldObj.css("cursor", "pointer");
	menu_oldObj.css('pointer-events', 'auto');
	
	sub_oldObj.prop("disabled", false);
	sub_oldObj.css('opacity', 1);
	sub_oldObj.css("cursor", "pointer");
	sub_oldObj.css('pointer-events', 'auto');	
}

function menu_fullscreen(posX){
	menu_fullscreenStartX = posX;
	if(menuOpen_Check){
		$("#treeMenu").css("left", posX+close_PosX );
	}else{
		$("#treeMenu").css("left", posX );
	}

	if(menu_fullscreenStartX == 0){
		$("#treeMenu").css("top", "92px");
		$("#menuMask").css("height", contents_height);
		// $("#menuMask").css('background-color', "#ffffff");
	}else{
		$("#treeMenu").css("top", ($(window).height()/2)-($("#treeMenu").height()/2));
		$("#menuMask").css("height", $(window).height());
		// $("#menuMask").css('background-color', "#000000");
	}
	
	$("#menuMask").css("left", (posX-100)+close_PosX);
	
	


	/*
	menu_fullscreenStartX = 0;
	if(menuOpen_Check){
		$("#treeMenu").css("left", close_PosX);
	}else{
		$("#treeMenu").css("left", 0);
	}
	$("#treeMenu").css("top", "70px");
	
	$("#menuMask").css("left", close_PosX);
	$("#menuMask").css("height", contents_height);
	$("#menuMask").css('background-color', "#ffffff");
	*/
}