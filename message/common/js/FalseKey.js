
/*--------------------------------------------------+
|	F11, F5, 소스보기 막기, ctrl-c, ctrl-v 막기
| document.onkeydown = processKey;
| document.oncontextmenu = nocontextmenu;
| document.onselectstart=new Function("return false");
| document.ondragstart=new Function("return false");
+--------------------------------------------------*/
if (window.event) { // 넷스케이프에서만 대문자 E.
    document.captureEvents(event.MOUSEUP); // mouse up 이벤트를 잡음
}
function nocontextmenu() {
    event.cancelBubble = true
    event.returnValue = false;
    return false;
}
function processKey() {

    if ((event.ctrlKey == true && (event.keyCode == 78 || event.keyCode == 82 || event.keyCode == 86 || event.keyCode == 80)) ||
        (event.keyCode >= 112 && event.keyCode <= 122)) {
        event.keyCode = 0;
        event.cancelBubble = true;
        event.returnValue = false;
    }

    if (event.keyCode == 27) {
        event.keyCode = 0;
        event.cancelBubble = true;
        event.returnValue = false;
        fnHidePopDisp();
        document.onselectstart = new Function("return false");
        document.ondragstart = new Function("return false");
    }
}


document.onkeydown = processKey;
document.oncontextmenu = nocontextmenu;
document.onselectstart = new Function("return false");
document.ondragstart = new Function("return false");