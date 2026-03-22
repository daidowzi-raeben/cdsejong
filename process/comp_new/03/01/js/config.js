var titleName = "윤리청렴 힐링캠프";

/* 현재 차시 */
const currChasi = 1;

/* 영상 스킵 가능 여부 */
const skipable = false;

/* 인덱스 리스트
 * [메뉴이름,이동할페이지, <-title
 *      [메뉴이름,이동할페이지] <-sub
 * ]
 */
const indexlist = [
    ['Intro',1],
    ['Quiz',2]

];

//현재페이지 정보
var dir=location.href;
dir=dir.split("/");
var thisUrl=dir[dir.length-1];
var	isPageNum=thisUrl.slice(0,2);
thisNum = parseInt(isPageNum,10);


var	isTotalNum    = "2"  // 현재 차시 총 페이지 수;

