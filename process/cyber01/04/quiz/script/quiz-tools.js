/**
 * Last-Modified : 2014-12-11.
 * Text ver. 1.1.3
 * 텍스트로 변경버전
 *
 * @id = quiz가 표현될 곳의 ID
 * @options = 퀴즈 옵션 (html 참조)
 * @size = 퀴즈가 표현될 곳의 width, height
 * @useBtn = 사용할 버튼 지정
 *
 * 1.1.3 사운드 추가
 *       결과화면 추가
 *       풍선말 추가
 *
 */
function quiztools(id, options, size, useBtn ) {

    var id = id || 'quiz-wrap',
        options = options || [],
        size = size || { w:1100, h:521 },
        useBtn = useBtn || { check:true, replay:true, next:true, prev:false, auto:false, index:false, result:true },
        quizNum = 1,
        answered = [],
        lastanswer = '',
        ansCount = 0;

    //////////////////////////////////////////////////
    // 필요한 태그 생성부분
    var container = $(id).addClass('quiz-wrap'),
        wraps = [],
        buttons = {
            check: $('<div class="check-button" />'),
            replay: $('<div class="replay-button" />'),
            result: $('<div class="result-button" />'),
            next : $('<div class="next-button" />'),
            prev : $('<div class="prev-button" />'),
            index: $('<div class="index-list" />')
        },
        layers = {
            alert : $('<div class="alert" />'),
            sound : $('<div class="quiz-sound" />'),
            result : $('<div class="quiz-result" />').append([ $('<div class="quiz-result-disp"><ul class="quiz-result-no"/></div>'), $('<p class="quiz-result-text"/>'), $('<div class="quiz-result-tbl"><table><tr><th>Q1</th><th>Q2</th><th>Q3</th></tr><tr><td></td><td></td><td></td></tr></table></div>'), $('<div class="result-top" />') ])
        };
    var temp_layers = [], temp_buttons = [], j = 0;

    for(var i=1, e=options.length; i <= e; i++ ) {
        j = i-1;
        switch(options[j].type) {
            case '1' : // OX quiz
                wraps[i] = {
                    section : $('<div class="quiz-section" />').attr('id', 'quiz-sec'+i),
                    queWrap : $('<div class="question-wrap" />').append( [$('<div class="question-tit"/>')] ),
                    number : $('<div class="question-no" />').addClass('no-'+i),
                    ox : $('<div class="question-ox" />'),
                    question : $('<div class="question" />').append( [$('<p class="question-text"/>')] ),
                    answer : $('<div class="answer-wrap" />').addClass('type1'),
                    btno : $('<div class="answer-button button-o" data-index="o" />'),
                    btnx : $('<div class="answer-button button-x" data-index="x" />'),
                    example : $('<div class="example" />'),
                    explain : $('<div class="explain" />').append( [$('<span class="explain-answer-title">정답 :</span>'), $('<span class="explain-answer"/>'), $('<span class="explain-answer-com">해설</span>'), $('<p class="explain-text"/>') ] )
                };
                if(options[j].exam == true) {
                    wraps[i].example.append( [ $('<p class="example-text"/>') ] );
                    wraps[i].example.find(".example-text").html(options[j].txt.example);
                }else{
                    wraps[i].example.addClass('none');
                }
				var quiztxt = '오늘 학습한 내용을 간단한 퀴즈로 점검해 보세요.';


                var tempArr = options[j].answer.split('||');
                wraps[i].question.find(".question-text").html(options[j].txt.question);
                wraps[i].queWrap.find(".question-tit").html(quiztxt);
                wraps[i].explain.find(".explain-answer").addClass("txt").html(tempArr[0]);
                wraps[i].explain.find(".explain-text").html(options[j].txt.explain);
                wraps[i].answer.append( [wraps[i].btno, wraps[i].btnx] );

                break;

        }
        wraps[i].queWrap.append( [wraps[i].question, wraps[i].number, wraps[i].ox ] );
        wraps[i].section.append( [wraps[i].queWrap, wraps[i].example, wraps[i].answer, wraps[i].explain ] );
        temp_layers.push(wraps[i].section);


        wraps[i].answer.find(".answer-button").on('click', function(){
            if( ansCount > 1 ) return;
            $this = $(this);
            if($this.hasClass('sel')) return;
            var ans = $this.attr("data-index");

            if(ans != null && lastanswer != ans) {
                $this.parent().find(".answer-button").removeClass("sel");
                $this.addClass('sel');
                lastanswer = ans;
                if(useBtn.auto == true)checkHandler();
            }
        });
    }



    temp_layers.push(layers.alert);
    temp_layers.push(layers.sound);
    temp_layers.push(layers.result);

    if(useBtn.check == true) temp_buttons.push(buttons.check);
    if(useBtn.replay == true) layers.result.append(buttons.replay);
    //if(useBtn.replay == true) temp_buttons.push(buttons.replay);
    if(useBtn.prev == true) temp_buttons.push(buttons.prev);
    if(useBtn.next == true) temp_buttons.push(buttons.next);
    if(useBtn.result == true) temp_buttons.push(buttons.result);
    if(useBtn.index == true) {
        for(var i=1, e=options.length; i <= e; i++ ) {
            buttons.index.append(
                $('<div class="index-button index-'+i +'"/>').attr('index', i)//.on('click', indexClick)
            );
        }
        temp_buttons.push(buttons.index);
    }

    container.empty();
    container.append( temp_layers );
    container.append( temp_buttons );

    temp_layers = null;
    temp_buttons = null;

    indexMove();
    make_result_popup();

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // 이벤트 리스너 등록
    //정답확인 버튼
    buttons.check.on('click', checkHandler);

    //next 버튼
    buttons.next.on('click', function() {
        quizNum++;
        indexMove();
    });

    //prev 버튼
    buttons.prev.on('click', function() {
        quizNum--;
        indexMove();
        hideTooltip();
    });

    //replay 버튼
    buttons.replay.on('click', function () {
        quizNum = 1;
        indexMove();
        answered = [];
        hideTooltip();
    });

    //result 버튼
    buttons.result.on('click', function () {
        open_result();
    });

    function checkHandler() {

        var j = quizNum- 1, save, rightanswer = false, tempArr;

        if ( ansCount > 1 ) return;
        switch(options[j].type) {
            case '3' :
                lastanswer = $('#quiz-inp'+quizNum).val();
                if( lastanswer.length < 1 ) {
                    showAlert('bl');
                    lastanswer = '';
                    $('#quiz-inp'+quizNum).focus();
                    return;
                }
                tempArr = options[j].answer.split('||');
                rightanswer = ( $.inArray( lastanswer ,  tempArr) != -1) ? true : false;
                break;
            case '2' :
                if (lastanswer == '') {
                    showAlert('no');
                    return;
                }
                rightanswer = ( options[j].answer == lastanswer ) ? true : false;
                break;
            case '1' :
                if (lastanswer == '') {
//                    showAlert('no');
			alert('정답을 입력하세요');
                    return;
                }
                rightanswer = ( options[j].answer == lastanswer ) ? true : false;
                ansCount++;
                break;
        }
        ansCount++;
        if( rightanswer == true ) {
            wraps[quizNum].ox.addClass('o');
//            showAlert('o');
			alert('정답입니다');
            save = true;
        }else if(ansCount < 2) {
            showAlert('re');
//			alert('정답입니다.');
            init();
            $('#quiz-inp'+quizNum).focus();
            return;
        }else{
//            showAlert('x');
			alert('오답입니다.');
            wraps[quizNum].ox.addClass('x');
            save = false;
        }
        if( ansCount == 2 || rightanswer == true ) {
            wraps[quizNum].explain.fadeIn(500);
            wraps[quizNum].section.addClass('on');
            answered[j] = save;
            ansCount++;

            buttons.check.hide();
            if(quizNum > 1) buttons.prev.show();
            if(quizNum == options.length) {
                if(useBtn.result == true) {
                    buttons.result.show();
                }else{
                    open_result();
                }
            }else{
                buttons.next.show();
            }
        }
    }
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //내부함수 부분
    function init(num) {
        var num = num || quizNum;
        wraps[num].ox.removeClass('o x');
        wraps[num].explain.hide();
        wraps[num].section.removeClass('on');
        wraps[num].answer.find(".answer-button").removeClass("sel");
        $('#quiz-inp'+num).val('');
        lastanswer = '';
    }

    function initAll() {
        for(var i=1, e=options.length; i <= e; i++ ) {
            wraps[i].section.hide();
            init(i);
        }
    }
    function hideTooltip() {
        $("#tooltip").hide();
    }

    function hideAlert() {
        layers.alert.hide().removeClass('o x re bl no');
    }

    function showAlert(type) {
        var type = type || 'no';
        switch(type) {
            case 'bl' :
                layers.alert.addClass('bl').fadeIn(500).delay(500).fadeOut(500);
                sound('./sound/re.mp3');
                break;
            case 'no' :
                layers.alert.addClass('no').fadeIn(500).delay(500).fadeOut(500);
                sound('./sound/re.mp3');
                break;
            case 're' :
                layers.alert.addClass('re').fadeIn(500).delay(500).fadeOut(500);
                sound('./sound/re.mp3');
                break;
            case 'o' :
                layers.alert.addClass('o').fadeIn(500).delay(500).fadeOut(500);
                sound('./sound/o.mp3');
                break;
            case 'x' :
                layers.alert.addClass('x').fadeIn(500).delay(500).fadeOut(500);
                sound('./sound/x.mp3');
                break;
        }
        setTimeout(hideAlert,1450);
    }

    //인덱스 클릭 시 함수 사용안함
    function indexClick() {
        $this = $(this);
        if($this.hasClass('on')) return;
        indexMove( $this.attr('index') );
    }

    function indexOn(num) {
        var num = num || quizNum;
        $('.index-button').removeClass('on');
        $('.index-'+num).addClass('on');
    }


    function indexMove(num) {
        quizNum = num || quizNum;
        initAll();
        hideAlert();
        indexOn();
        layers.result.hide();
        wraps[quizNum].section.show();
        buttons.check.show();
        buttons.next.hide();
        buttons.prev.hide();
        buttons.result.hide();
        //buttons.replay.hide();
        ansCount = 0;
        lastanswer = '';
        $('#quiz-inp'+quizNum).focus();
    }

    //이미지 마우스 오버 시 해당 사운드 파일 재생
    function sound(surl) {
        $(".quiz-sound").html("<embed src=\""+surl+"\" hidden=\"true\" autostart=\"true\" loop=\"false\" />");
    }

    function make_result_popup() {
        var ul = $(".quiz-result-no");
        for(var i= 1, e=options.length; i <= e; i++) {
            ul.append($('<li class="no-'+i+'" />'));
        }
        var html = '<span class="quiz-result-text-total">'+options.length + '</span> 문제 중 <span class="quiz-result-text-span">0</span> 문제를 맞히셨습니다.';
        $(".quiz-result-text").html(html);
    }

    function open_result() {
		top.pageEnd = true;


        var result_count = 0, j;
        var ul = $(".quiz-result-no");
        ul.find("li").removeClass('o');
        for(var i=0, e=options.length; i < e; i++) {
            j = i + 1;
            if( answered[i] == true ) {
                ul.find(".no-"+j+"").addClass('o');
                result_count++;
            }
        }
        $(".quiz-result-text-span").html(result_count);
		var retxt = 'Your Score…';
        $(".result-top").html(retxt);
        layers.result.show();
        setTimeout(show_tooltip, 500);
    }
}