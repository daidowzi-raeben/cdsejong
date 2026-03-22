<!--
//	일반적인 윈도우 띄우기
function FnOpenWindow(theURL,theWidth,theHeight,theScrollbars,theResizable,theMenubar,theFullscreen)
// 입력:도메인주소,연결할 URL,팝업창 너비,팝업창 높이,스크롤 여부,창크기조절 여부,메뉴바표시 여부,전체화면표시 여부
{
	var theLeft = (screen.width - theWidth) / 2; // 전체 화면 너비 - 팝업창 너비 크기 / 2 //중앙으로 띄울때 변수 
	var theTop = (screen.height - theHeight) / 2; // 전체 화면 높이 - 팝업창 높이 크기 / 2 //중앙으로 띄울때 변수 
	if (theFullscreen == "") theFullscreen = "no";
	if(theScrollbars=="Y") theScrollbars="Yes";
	if(theScrollbars=="N") theScrollbars="No";
	if(theResizable=="Y") theResizable="Yes";
	if(theResizable=="N") theResizable="No";
	if(theMenubar=="Y") theMenubar="Yes";
	if(theMenubar=="N") theMenubar="No";
	if(theFullscreen=="Y") theFullscreen="Yes";
	if(theFullscreen=="N") theFullscreen="No";

	varFeatures = "width=" + theWidth + ",height=" + theHeight + ",scrollbars=" + theScrollbars + ",resizable=" + theResizable + ",menubar=" + theMenubar + ",top=" + theTop + ",left=" + theLeft + ",fullscreen=" + theFullscreen;
	openWin = window.open(theURL,'_blank',varFeatures);
	if(openWin != null){
		openWin.focus();
	}
}

//	온라인교육 과목 홈 윈도우-- study_url 
function FnCourseHomeWindow(varHostName,theURL,theWidth,theHeight,theScrollbars,theResizable,theMenubar,theFullscreen)
// 입력:도메인주소,연결할 URL,팝업창 너비,팝업창 높이,스크롤 여부,창크기조절 여부,메뉴바표시 여부,전체화면표시 여부
{
    
    
	var theLeft = (screen.width - theWidth) / 2; // 전체 화면 너비 - 팝업창 너비 크기 / 2 //중앙으로 띄울때 변수 
	var theTop = (screen.height - theHeight) / 2; // 전체 화면 높이 - 팝업창 높이 크기 / 2 //중앙으로 띄울때 변수 
	var theScrollbars
	var theResizable
	var theMenubar
	var theFullscreen
	
	if (theFullscreen == "") theFullscreen = "no";
	if(theScrollbars=="Y") theScrollbars="Yes";
	if(theScrollbars=="N") theScrollbars="No";
	if(theResizable=="Y") theResizable="Yes";
	if(theResizable=="N") theResizable="No";
	if(theMenubar=="Y") theMenubar="Yes";
	if(theMenubar=="N") theMenubar="No";
	if(theFullscreen=="Y") theFullscreen="Yes";
	if(theFullscreen=="N") theFullscreen="No";

	varFeatures = "width=" + theWidth + ",height=" + theHeight + ",scrollbars=" + theScrollbars + ",resizable=" + theResizable + ",menubar=" + theMenubar + ",top=" + theTop + ",left=" + theLeft + ",fullscreen=" + theFullscreen;
	varWinName = varHostName + "_CourseHomeWin";
	openWin = window.open(theURL,varWinName,varFeatures);
	if(openWin != null){
		openWin.focus();
	}

}

//	온라인교육 과정 홈 윈도우
function FnProcessHomeWindow(varHostName,theURL,theWidth,theHeight,theScrollbars,theResizable,theMenubar,theFullscreen)
// 입력:도메인주소,연결할 URL,팝업창 너비,팝업창 높이,스크롤 여부,창크기조절 여부,메뉴바표시 여부,전체화면표시 여부
{
	var theLeft = (screen.width - theWidth) / 2; // 전체 화면 너비 - 팝업창 너비 크기 / 2 //중앙으로 띄울때 변수 
	var theTop = (screen.height - theHeight) / 2; // 전체 화면 높이 - 팝업창 높이 크기 / 2 //중앙으로 띄울때 변수 
	if (theFullscreen == "") theFullscreen = "no";
	if(theScrollbars=="Y") theScrollbars="Yes";
	if(theScrollbars=="N") theScrollbars="No";
	if(theResizable=="Y") theResizable="Yes";
	if(theResizable=="N") theResizable="No";
	if(theMenubar=="Y") theMenubar="Yes";
	if(theMenubar=="N") theMenubar="No";
	if(theFullscreen=="Y") theFullscreen="Yes";
	if(theFullscreen=="N") theFullscreen="No";

	varFeatures = "width=" + theWidth + ",height=" + theHeight + ",scrollbars=" + theScrollbars + ",resizable=" + theResizable + ",menubar=" + theMenubar + ",top=" + theTop + ",left=" + theLeft + ",fullscreen=" + theFullscreen;
	varWinName = varHostName + "_ProcessHomeWin";
	openWin = window.open(theURL,varWinName,varFeatures);
	if(openWin != null){
		openWin.focus();
	}
}

//	온라인 특강 홈 윈도우
function FnSpecialHomeWindow(varHostName,theURL,theWidth,theHeight,theScrollbars,theResizable,theMenubar,theFullscreen)
// 입력:도메인주소,연결할 URL,팝업창 너비,팝업창 높이,스크롤 여부,창크기조절 여부,메뉴바표시 여부,전체화면표시 여부
{
	var theLeft = (screen.width - theWidth) / 2; // 전체 화면 너비 - 팝업창 너비 크기 / 2 //중앙으로 띄울때 변수 
	var theTop = (screen.height - theHeight) / 2; // 전체 화면 높이 - 팝업창 높이 크기 / 2 //중앙으로 띄울때 변수 
	if (theFullscreen == "") theFullscreen = "no";

	varFeatures = "width=" + theWidth + ",height=" + theHeight + ",scrollbars=" + theScrollbars + ",resizable=" + theResizable + ",menubar=" + theMenubar + ",top=" + theTop + ",left=" + theLeft + ",fullscreen=" + theFullscreen;
	varWinName = varHostName + "_SpecialHomeWin";
	openWin = window.open(theURL,varWinName,varFeatures);
	if(openWin != null){
		openWin.focus();
	}
}

//	온라인교육 및 온라인특강 콘텐츠 학습하기 윈도우
function FnCourseContentsWindow(varHostName,theURL,theWidth,theHeight,theScrollbars,theResizable,theMenubar,theFullscreen)
// 입력:도메인주소,연결할 URL,팝업창 너비,팝업창 높이,스크롤 여부,창크기조절 여부,메뉴바표시 여부,전체화면표시 여부
{
//	var theLeft = (screen.width - theWidth) / 2; // 전체 화면 너비 - 팝업창 너비 크기 / 2 //중앙으로 띄울때 변수 
//	var theTop = (screen.height - theHeight) / 2; 1// 전체 화면 높이 - 팝업창 높이 크기 / 2 //중앙으로 띄울때 변수 
	var theLeft = 0; // 전체 화면 너비 - 팝업창 너비 크기 / 2 //중앙으로 띄울때 변수 
	var theTop = 0; // 전체 화면 높이 - 팝업창 높이 크기 / 2 //중앙으로 띄울때 변수 
	if (theFullscreen == "") theFullscreen = "no";
	if(theScrollbars=="Y") theScrollbars="Yes";
	if(theScrollbars=="N") theScrollbars="No";
	if(theResizable=="Y") theResizable="Yes";
	if(theResizable=="N") theResizable="No";
	if(theMenubar=="Y") theMenubar="Yes";
	if(theMenubar=="N") theMenubar="No";
	if(theFullscreen=="Y") theFullscreen="Yes";
	if(theFullscreen=="N") theFullscreen="No";

	varFeatures = "width=" + theWidth + ",height=" + theHeight + ",scrollbars=" + theScrollbars + ",resizable=" + theResizable + ",menubar=" + theMenubar + ",top=" + theTop + ",left=" + theLeft + ",fullscreen=" + theFullscreen;
	varWinName = varHostName + "_ContentsWin";
//	alert(theURL);
	openWin = window.open(theURL,varWinName,varFeatures);
	if(openWin != null){
		openWin.focus();
	}
}

//	e-경영박사 학습하기 윈도우
function FnExpertContentsWindow(theURL,theWidth,theHeight) { //v2.0
// 입력:연결할 URL,팝업창 너비,팝업창 높이

	var theLeft = (screen.width - theWidth) / 2; // 전체 화면 너비 - 팝업창 너비 크기 / 2 //중앙으로 띄울때 변수 
	var theTop = (screen.height - theHeight) / 2; // 전체 화면 높이 - 팝업창 높이 크기 / 2 //중앙으로 띄울때 변수 

	varFeatures = "width=" + theWidth + ",height=" + theHeight + ",scrollbars=no,resizable=no,menubar=no,top=" + theTop + ",left=" + theLeft + ",fullscreen=no";
	expertWin = window.open(theURL,'ExpertWin',varFeatures);
	if(expertWin != null){
		expertWin.focus();
	}
}

//	온라인교육 통합 맛보기 홈 윈도우
function FnSampleHomeWindow(theURL) { //v2.0
// 입력:연결할 URL,팝업창 너비,팝업창 높이
	if(theURL=="")
	{
		alert("맛보기 준비중입니다.");
	}
	else
	{
		var theWidth = 800;
		var theHeight =600;
		var theLeft = (screen.width - theWidth) / 2; // 전체 화면 너비 - 팝업창 너비 크기 / 2 //중앙으로 띄울때 변수 
		var theTop = (screen.height - theHeight) / 2; // 전체 화면 높이 - 팝업창 높이 크기 / 2 //중앙으로 띄울때 변수 

		varFeatures = "width=" + theWidth + ",height=" + theHeight + ",scrollbars=yes,resizable=yes,menubar=no,top=" + theTop + ",left=" + theLeft + ",fullscreen=no";
		sampleWin = window.open(theURL,'SampleHomeWin',varFeatures);
		if(sampleWin != null){
			sampleWin.focus();
		}
	}
}

//	온라인교육 맛보기 콘텐츠 윈도우
function FnSampleCourseContentsWindow(theURL,theWidth,theHeight,theScrollbars,theResizable,theMenubar,theFullscreen)
// 입력:연결할 URL,팝업창 너비,팝업창 높이,스크롤 여부,창크기조절 여부,메뉴바표시 여부,전체화면표시 여부
{
	var theLeft = (screen.width - theWidth) / 2; // 전체 화면 너비 - 팝업창 너비 크기 / 2 //중앙으로 띄울때 변수 
	var theTop = (screen.height - theHeight) / 2; // 전체 화면 높이 - 팝업창 높이 크기 / 2 //중앙으로 띄울때 변수 
	if (theFullscreen == "") theFullscreen = "no";
	if(theScrollbars=="Y") theScrollbars="Yes";
	if(theScrollbars=="N") theScrollbars="No";
	if(theResizable=="Y") theResizable="Yes";
	if(theResizable=="N") theResizable="No";
	if(theMenubar=="Y") theMenubar="Yes";
	if(theMenubar=="N") theMenubar="No";
	if(theFullscreen=="Y") theFullscreen="Yes";
	if(theFullscreen=="N") theFullscreen="No";

	varFeatures = "width=" + theWidth + ",height=" + theHeight + ",scrollbars=" + theScrollbars + ",resizable=" + theResizable + ",menubar=" + theMenubar + ",top=" + theTop + ",left=" + theLeft + ",fullscreen=" + theFullscreen;
	openWin = window.open(theURL,'SampleContentsWin',varFeatures);
	if(openWin != null){
		openWin.focus();
	}
}

//-->
