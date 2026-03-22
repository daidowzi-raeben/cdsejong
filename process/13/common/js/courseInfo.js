var courseInfo = new Object();
/* 종합편 */
/*------------------수정-------------------------*/
courseInfo["type0"] = [
    "전사원 꼭! 윤리경영의 핵심과 실천",
	"이 시대가 원하는 공직자의 청렴",
	"청렴 반부패 법령 제도 알아보기",
	"청탁금지법, 놓치면 안 될 조항 알아보기",
	"공익신고의 주요 내용 알아보기",
	"이해충돌 방지법, 놓치면 안 될 조항 알아보기",
	"이해충돌 방지법의 5대 신고 의무 지키기",
	"이해충돌 방지법의 5대 금지 제한 지키기",
	"나랏돈 지키는 공공재정 환수법"
]
/*------------------수정-------------------------*/
var skillMSG = new Object();
skillMSG = {
	"fail":"문항이 남았습니다-진단을 완료하여 주세요",
	"success":"수고하셨습니다-진단 결과를 확인하세요"
}

var skillInfo = new Object();
skillInfo = [
	
]
var skillLevel = 0;

var courseType = "type0";
var courseTitle = courseInfo[courseType][0];
var course_total = courseInfo[courseType].length-1;
var courseCode = "000";
var cdnUrl = "../mp4/";
var localUrl = "../mp4/";
var captureUrl = "../../mp4/";