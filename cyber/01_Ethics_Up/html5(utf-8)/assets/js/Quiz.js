/*
$('.quiz .type-ox-ic .answer a').click(function () {
    $(this).parent().find('a').removeClass('selected');
    $(this).addClass('selected');
    return false;
});
*/

function fnSaveQuiz(quizSeq, answer, takeCourseSeq, coursecd, frameType, quizType, quizCnt, nextQuiz) {

    $("#hidQuizSeq").val(quizSeq);


    var jsonData;
    jsonData = "{'takeCourseSeq':'" + takeCourseSeq + "', 'courseCd':'" + coursecd + "', 'quizSeq':'" + quizSeq + "', 'answer':'" + answer + "'} ";

    $.ajax({
        url: '/Study/Controls/SaveData.aspx/IUQuiz',
        type: "POST",
        data: jsonData,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            if (data.d == "Y") {
                fnViewResult(quizCnt, frameType, quizType, quizSeq, coursecd, takeCourseSeq, nextQuiz);
            } else {
                alert("퀴즈저장실패");
            }
        },
        error: function (data) {
            alert("저장중 오류가 발생했습니다.");
        }
    });

    //return false;
}


function fnViewResult(quizCnt, frameType, quizType, quizSeq, courseCd, takeCourseSeq, nextQuiz) {
    
    tmp1 = $("#hidSelect1").val();
    tmp2 = $("#hidSelect2").val();
    var sel = "Y";

    _quizCnt = parseInt(quizCnt, 10);

    if (tmp1 == "") { sel = "N"; }

    if (_quizCnt > 1) {
        if (tmp2 == "") { sel = "N"; }
    }

  
        if (frameType == "ft06") {
            fnViewPopDispUrl("/Study/Contents/Popup/Quiz/Result.aspx?courseCd=" + courseCd + "&chapterNo=0101&takeCourseSeq=" + takeCourseSeq);
        }
        else if (quizType == "2") {            
            fnViewPopDispUrl("/Study/Contents/Popup/Quiz/MultipleResult.aspx?courseCd=" + courseCd + "&takeCourseSeq=" + takeCourseSeq + "&quizSeq=" + quizSeq + "&nextPage=" + nextQuiz);
        }
        else {
            //fnMove("<%=FRAME_NO %>", "<%=FRAME_TYPE %>", "<%=GroupNo %>", "Y");
        }

    
}