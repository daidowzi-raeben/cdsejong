var chapterNames = [],
    menuDataArr = [],
    leftMenu_StartY = 30,         // 메뉴 첫 시작 위치.
    leftMenu_mainGap = 16,         // 대메뉴 간격.
    leftMenu_subGap = 14,         // 소메뉴 간격.
	leftMenu_bottomGap = 12,

    MenuData = [],
    subData = [];

chapterNames[0] = {type: "video", vod: "05_01"};
chapterNames[1] = {type: "video", vod: "05_02"};
chapterNames[2] = {type: "video", vod: "05_03"};

chapterNames[3] = {type: "video", vod: "05_04", titleHidden:true};
chapterNames[4] = {type: "video", vod: "05_05", titleHidden:true};
chapterNames[5] = {type: "video", vod: "05_06", titleHidden:true};
chapterNames[6] = {type: "video", vod: "05_07", titleHidden:true};

chapterNames[7] = {type: "video", vod: "quiz"};
chapterNames[8] = {type: "video", vod: "summary"};
chapterNames[9] = {type: "video", vod: "05_10"};


MenuData[0] = {name: "Start Guide"};
subData[0] = [];
subData[0][0] = {name: "인트로"};
subData[0][1] = {name: "오늘의 이야기"};
subData[0][2] = {name: "학습 내용 및 목표"};

MenuData[1] = {name: "Zoom Guide"};
subData[1] = [];
subData[1][0] = {name: "인테그리티란 무엇인가"};
subData[1][1] = {name: "인테그리티의 효과"};
subData[1][2] = {name: "인테그리티를 유지하는 방법"};
subData[1][3] = {name: "우리 삶에의 적용"};

MenuData[2] = {name: "Check Guide"};
subData[2] = [];
subData[2][0] = {name: "퀴즈"};
subData[2][1] = {name: "핵심노트"};
subData[2][2] = {name: "아웃트로"};






////////////// 컨텐츠 팝업 /////////////////

var contentsPopUpData = [];
/*
contentsPopUpData[0]={
	page : 7,
	btnNum : 3,
	btnName:["얘는 팝업", "얘는 비디오", null],
	btnImg:[null, null, "v_btn"],              // 버튼이 이미지인 경우 이미지 파일네임.
	type:["popup", "video", "video"],        // popup, video, down
	url:[null, "expert1", "expert2"],
	w:[270, 270, 140],
	h:[55, 55, 100],
	x:[728, 728, 480],
	y:[570, 500, 340]
};
*/


////////////// 학습내용 /////////////////
var learningData = [];

learningData[0]={
	leftGap : 40,
	leftStartY : 218,
	contents_1 : [
		""
		],
	
	rightGap : 40,        // 기본값 : 40
	rightStartY : 218,     // 학습목표 시작 y좌표 기본값 : 218
	contents_2 : [
		""
		]
};


////////////// 학습정리  /////////////////////

var summary_totalNum = 4;