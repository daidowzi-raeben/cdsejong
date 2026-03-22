/* pageinfo 설명
 * video : 영상 주소
 * ishtml : html이 주 컨텐츠인지 (영상이 끝나고 next popup이 출력될지)
 */
const pageinfo = [
    {video: '../video/01.mp4', ishtml: false},
    {video: '../video/quiz.mp3', ishtml: true}

];
const currinfo = pageinfo[thisNum-1];

/* url 목록 자동생성 */
const pagelist = [];
for(i=1; i<=pageinfo.length; i++) {
    pagelist[i] = (tmp='0'+i, tmp.slice(-2))+".html"; // 00.html
}

