var bookMarkOpenCheck = false;

var bookMarkData = [];
var bookCookieData;

function bookMark_saveData(){
	// 쿠키저장
	setCookie(lectureCode+"_"+chasi+"_bookMark", JSON.stringify(bookMarkData), 30);
}

function bookMark_loadData(){
	// 쿠키로드
	bookCookieData = JSON.parse(getCookie(lectureCode+"_"+chasi+"_bookMark"));
}

function bookMarkInit(){
	bookMark_refresh();	
	bookMark_loadData(); // 북마크 쿠키로드
	if(bookCookieData){
		bookMarkData = bookCookieData;
		bookMark_refresh();
	};	
	bookMark_btnChk();
	
	$("#bookMarkCtn").hide();
	$("#bookMarkCtn").css('position','absolute');
	$("#bookMarkCtn").css("left", "0px");
	$("#bookMarkCtn").css("top", "28px");
	$("#bookMarkCtn").css("width", "213px");
	$("#bookMarkCtn").css("height", "522px");
	$("#bookMarkCtn").css('background-color','#e8e8e8');
	//$("#bookMarkCtn").css('border', "1px solid black");
	//$("#bookMarkCtn").css('border','0');
	
	$("#bookMark_savePop").hide();
	$("#bookMark_savePop").css('position','absolute');
	$("#bookMark_savePop").css("left", "0px");
	$("#bookMark_savePop").css("top", "0px");
	$("#bookMark_savePop").css("width", contents_width);
	$("#bookMark_savePop").css("height", contents_height);
	$("#bookMark_savePop").css('background', 'url(../img/bookmark/bookMark_savePop.png) no-repeat 0px 0px');
	
};


function addBookMark(cPage){
	bookMarkData.push(cPage);

	// 북마크 쿠키저장
	bookMark_saveData();
	
	var bookMark_savePop = document.getElementById("bookMark_savePop");
	gsap.set(bookMark_savePop, {display:"block"});
	gsap.to(bookMark_savePop, 1.5, {display:"none"});
	effectCall('../common/mp3/ending.mp3');
};

function removeBookMark(cPage){
	var num = bookMarkData.indexOf(cPage);
	bookMarkData.splice(num, 1);
	
	bookMark_btnChk();

	// 북마크 쿠키저장
	bookMark_saveData();
};


function bookMark_refresh(){
	
	$("#bookMarkCtn").css('overflow-x', 'none');
	$("#bookMarkCtn").css('overflow-y', 'auto');
	if(bookMarkData.length > 0){
		$("#bookMarkCtn").text("");
		
		var h = 30;

		for(var i=1; i<=bookMarkData.length; i++){
			var tempHtml = '<div id="bookMark_btn_'+i+'" > '
			tempHtml += '<div id="bookMark_title" value="'+i+'" onClick="bookMarkPageMoveEvent('+i+')"></div>'
			tempHtml += '<div id="bookMark_page" value="'+i+'" onClick="bookMarkPageMoveEvent('+i+')"></div>'
			tempHtml += '<div id="bookMark_btnBG" value="'+i+'" onClick="bookMarkPageMoveEvent('+i+')"></div>'
			tempHtml += '<div id="bookMark_deleteBtn" value="'+i+'" onClick="bookMarkDeleteEvent('+i+')" onmouseover="bookMarkDeleteOverEvent(this)" onmouseout="bookMarkDeleteOutEvent(this)"></div>'

			tempHtml += '</div>'
			
			$("#bookMarkCtn").append(tempHtml);

			$("#bookMark_btn_"+i).css('position', 'absolute');
			$("#bookMark_btn_"+i).css('top', ((i-1)*h)+'px');
			$("#bookMark_btn_"+i).css('width', '100%');
			$("#bookMark_btn_"+i).css('height', h+'px');
			//$("#bookMark_btn_"+i).css("cursor", "Pointer");
			$("#bookMark_btn_"+i).css('border-bottom', '1px solid #9C9EA0');
			//$("#bookMark_btn_"+i).css('border', '1px solid red');

			var nodes=$("#bookMark_btn_"+i).children();
			var page = bookMarkData[i-1];

			nodes.each(function(){
				//console.log($(this).attr('id'));
				
				var nodeID = $(this).attr('id');	
				
				switch(nodeID){
					case "bookMark_btnBG":
						$(this).css("position", 'absolute');
						$(this).css("width", '100%');
						$(this).css("height", h+'px');
						$(this).css("cursor", "Pointer");
						
						$(this).attr("tabindex", 0);
						$(this).focus(function() { 
							focusObj = $(this);
						});			
						$(this).focusout(function() {
							focusObj = null;
						});
						break;

					case "bookMark_title":
						$(this).css("position", 'absolute');
						$(this).css('left', '30px');
						$(this).css("top", '0px');
						$(this).css("width", '155px');
						$(this).css("height", '30px');
						//$(this).css('border', '1px solid #9C9EA0');
						$(this).css('font-size', '10pt');
						$(this).css('font-family', 'esamanru_Light');
						$(this).css('line-height', '30px');
						
						$(this).css('color', '#000000');
						//$(this).css('font-weight', 'bold');
						$(this).css('text-align','left');

						$(this).css('white-space','nowrap');
						$(this).css('overflow','hidden');
						$(this).css('text-overflow','ellipsis');
						$(this).css('-o-text-overflow','ellipsis');
						
						var mNum = menuDataArr[page-1].split("_")[1];
						var subNum = menuDataArr[page-1].split("_")[2];
						var str = subData[mNum-1][subNum-1].name;
						
						$(this).html(str.replace("<br>",""));
						//$(this).load("pages/bg1.png");
						//$(this).css('background', 'url(pages/bg1.png) no-repeat 0px 0px');
						//$(this).attr("src", "pics/thumb/thumb_"+page+".jpg");
						break;
					
					case "bookMark_page":
						$(this).css("position", 'absolute');
						$(this).css('left', '0px');
						$(this).css("top", '0px');
						//$(this).css('margin-top', '10px');
						$(this).css('width', '30px');
						$(this).css('height', '30px');
						//$(this).css('word-break', 'break-all');
						$(this).css('font-size', '10pt');
						$(this).css('font-family', 'esamanru_Light');
						$(this).css('line-height', '30px');
						
						$(this).css('color', '#000000');

						//$(this).css('font-weight', 'bold');
						//$(this).css('border', '1px solid black');
						$(this).html(page+"p");
												
						break;
					
					case "bookMark_deleteBtn":
						$(this).css("position", 'absolute');
						$(this).css("width", '30px');
						$(this).css("height", '30px');				
						
						$(this).css('left', '84%');
						$(this).css("top", '0px');

						//$(this).css('margin-right', '10px');
						//$(this).css('margin-top', '70px');

						$(this).css('background', 'url(../img/bookmark/bookmark_delete_btn.png) no-repeat 0px 0px');
						$(this).css("cursor", "Pointer");
						//$(this).css('border', '1px solid black');
						
						$(this).attr("tabindex", 0);
						$(this).focus(function() { 
							focusObj = $(this);
						});			
						$(this).focusout(function() {
							focusObj = null;
						});
						break;
				};
			});
			
		};

	}else{
		$("#bookMarkCtn").css('letter-spacing','-1px');
		$("#bookMarkCtn").css('white-space','nowrap');
		$("#bookMarkCtn").css('overflow','hidden');
		//$("#bookMarkCtn").css('text-overflow','ellipsis');
		//$("#bookMarkCtn").css('-o-text-overflow','ellipsis');
		//$("#bookMarkCtn").css('padding-top','10px');
		//$("#bookMarkCtn").css('margin-right','10px');
		$("#bookMarkCtn").css('text-align','center');
		//$("#bookMarkCtn").css('vertical-align', 'middle');
		$("#bookMarkCtn").css('font-family','esamanru_Light');
		$("#bookMarkCtn").css('font-size','10pt');
		//$("#bookMarkCtn").css('font-weight','bold');
		$("#bookMarkCtn").css('color','#222222');
		$("#bookMarkCtn").css('line-height','50px');
		$("#bookMarkCtn").text("등록된 즐겨찾기가 없습니다.");
	}	
};


function bookMark_btnChk(){
	if( bookMarkData.indexOf(page) == -1){
		$("#bookmarkBtn").css("background-position-y", "0px");
	}else{
		$("#bookmarkBtn").css("background-position-y", "-32px");
	}
};

function bookMarkPageMoveEvent(num){
	if(page == bookMarkData[num-1]){
		alert("현재 페이지입니다.");
		return;
	};
	gotoFunc(bookMarkData[num-1]);
}


function bookMarkDeleteEvent(num){
	var result = confirm('선택한 책갈피를 삭제 하시겠습니까?');
	if(result){
		removeBookMark(bookMarkData[num-1]);
		bookMark_refresh();
	}
};

function bookMarkDeleteOverEvent(el){
	if(!mobileCheck) $(el).css('background-position', '0px -30px');
};

function bookMarkDeleteOutEvent(el){
	if(!mobileCheck) $(el).css('background-position', '0px 0px');
};