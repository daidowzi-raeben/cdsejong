var totalChasi = 4;          // 총 차시수.
var lectureCode = "";        // 과정코드.
var titleName = "직장인의 소통 지혜! 비즈니스 윤리";
var control_check = true;       // true : 하단 컨트롤 활성화  false : 하단 컨트롤 비활성화
var lmsMode = true;         // 포팅시: true    테스트: false
var vodpath = "../mp4/";

var contents_width = 1280;
var contents_height = 720;
var volumeNum = 1;  // 0 ~ 1   시작시 볼륨값.
var resizeMode = false;       // 화면리사이즈  활성화: true   비활성화: false   ※모바일에서는 강제로 true로 설정됨.
var playBtnType = "visible";     // visible, enabled


// 메뉴 값.

var menu_Color = "#d8d8d8";
var menuOver_Color = "#00d7fb";

var sub_Color = "#d8d8d8";
var subOver_Color = "#fed966";

var chasi;          // 현재 차시
var page;           // 현재 페이지
var totalPage;      // 총 페이지


//////////////////////////////////////////////////////////////////////////////////////////////

var chasiTextArr = [
"직장 윤리와 가치",
"기업 윤리경영 관련 법규",
"국내외 기업 윤리경영 동향",
"직장윤리 위반 행위 유형과 사례"

];


// 페이지 로드 완료
function pageLoadComplete() {
	//$("body").css('filter', "grayscale(100%)");
	totalPage = chapterNames.length;

	// 메뉴 및 컨트롤러 진도에 따른 비활성화 체크.
	/*
	var savePage = null;  // 진도 최대 페이지값
	if(savePage && savePage < parseFloat(page)){
		control_check = false;
	}
	menuDisabled(savePage);
	*/
	
	if(!control_check){
		$("#nextBtn").css("background-position", "0px 0px");
		$("#nextBtn").css('opacity', "0.5");
		$("#nextBtn").prop('disabled', true);
		$("#nextBtn").css('pointer-events', 'none');
		$("#nextBtn").css('cursor', 'default');

		$('#slider').slider('disable');
		$(".control-slider").css('opacity', "0.5");
		$('#sliderArea').hide();	
	}else{
		$("#nextBtn").css('opacity', "1");
		$("#nextBtn").prop('disabled', false);
		$("#nextBtn").css('pointer-events', 'auto');
		$("#nextBtn").css('cursor', 'pointer');

		$('#slider').slider('enable');
		$(".control-slider").css('opacity', "1");
	}
	
	// 진도체크
	if(lmsMode){
		var param = chasi+"_"+itostr(page);

		top._getParagraph();
		top._setPageInfo(param); //장 절
		top._setCurrentLocation(itostr(page)); //현재 페이지
		top._progressSave();
	}
		
}


// 학습 완료함수
function pageEndComplete() {
	if(mobileCheck){
		$('#mNextBtn').show();
		$('#mPrevBtn').show();
	}
}


// 이동함수.

function nextFunc() {
	page++;
	if (page > totalPage) {
		page = totalPage;
		alert("마지막 페이지입니다.");
		return;
	}
	document.location.href = "0"+itostr(page)+".htm";	
}

function prevFunc() {
	page--;
	if(page < 1){
		page = 1;
		alert("첫 페이지입니다.");
		return;
	}
	document.location.href = "0"+itostr(page)+".htm";
}

function gotoFunc(num) {
	page = num;
	document.location.href = "0"+itostr(page)+".htm";
}