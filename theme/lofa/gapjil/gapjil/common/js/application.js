var player;
var is_playing = false;
var is_ended = false;
var has_block = false;

var _partial_audio =
  "<audio id='video-content' class='video-js vjs-has-started' controls playsinline webkit-playsinline autoplay='autoplay' preload='auto' width='1010' height='568' poster='' data-setup='{\"inactivityTimeout\": 0 }'></audio>";
var _partial_video =
  "<video id='video-content' class='video-js vjs-has-started' controls playsinline webkit-playsinline autoplay='autoplay' preload='auto' width='1010' height='568' poster='' data-setup='{\"inactivityTimeout\": 0 }'></video>";
var _partial_index_menu =
  "<div id='module_1' class='module'><p>시작하기</p><ul><li id='goto-1-1' data-time='' class='goto'>Intro</li><li id='goto-1-2' data-time='' class='goto'>학습목표</li></ul></div><div id='module_2' class='module'><p>학습하기</p><ul><li id='goto-2' class='goto'></li><li id='goto-3' class='goto'></li><li id='goto-4' class='goto'></li><li id='goto-5' class='goto'></li><li id='goto-6' class='goto'></li></ul></div><div id='module_3' class='module'><p>마무리하기</p><ul><li id='goto-6-1' data-time='' class='goto'>정리하기</li><li id='goto-6-2' data-time='' class='goto'>Outro</li></ul></div>";
var _partial_map =
  '<section id="map" class="is-overlay"><button id="map-close">close</button><div class="map-left"><div class="map-module-1"><h3>사례 1. 기본생활 문제행동</h3><ul><li class="map-chapter chapter-1">01. 문제행동이란 무엇일까요?</li><li class="map-chapter chapter-2">02. 영유아 문제행동지도 방법</li><li class="map-chapter chapter-3">03. 기본생활 문제행동</li><li class="map-chapter chapter-4">04. 사례별 발달 지원하기: 식습관</li><li class="map-chapter chapter-5">05. 사례별 발달 지원하기: 청결</li><li class="map-chapter chapter-6">06. 사례별 발달 지원하기: 어린이집 적응</li></ul></div><div class="map-module-2"><h3>사례 2. 신체운동발달 문제행동</h3><ul><li class="map-chapter chapter-7">07. 신체운동 발달 문제행동</li><li class="map-chapter chapter-8">08. 사례별 발달 지원하기: 영아의 운동</li><li class="map-chapter chapter-9">09. 사례별 발달 지원하기: 유아의 운동</li><li class="map-chapter chapter-10">10. 사례별 발달 지원하기: 건강</li></ul></div><div class="map-module-3"><h3>사례 3. 사회성발달 문제행동</h3><ul><li class="map-chapter chapter-11">11. 사회성 발달 문제행동</li><li class="map-chapter chapter-12">12. 사례별 발달 지원하기: 영아의 공격성/위축 단절</li><li class="map-chapter chapter-13">13. 사례별 발달 지원하기: 유아의 공격성</li><li class="map-chapter chapter-14">14. 사례별 발달 지원하기: 유아의 위축/단절</li><li class="map-chapter chapter-15">15. 사례별 발달 지원하기: 유아의 갈등 유발 행동</li></ul></div></div><div class="map-right"><div class="map-module-4"><h3>사례 4. 정서 문제행동</h3><ul><li class="map-chapter chapter-16">16. 영유아 정서문제행동 평가하기</li><li class="map-chapter chapter-17">17. 아직은 혼자가 불안해요.</li><li class="map-chapter chapter-18">18. 나는 자꾸 화가 나요.</li><li class="map-chapter chapter-19">19. 나는 능력이 없어요.</li><li class="map-chapter chapter-20">20. 나는 두려워요.</li><li class="map-chapter chapter-21">21. 나를 인정해주세요.</li><li class="map-chapter chapter-22">22. 긍정적인 정서를 키워주는 인성 지도</li><li class="map-chapter chapter-23">23. 영유아 정서문제와 부모상담 </li></ul></div><div class="map-module-5"><h3>사례 5. 언어발달 문제행동</h3><ul><li class="map-chapter chapter-24">24. 영유아 언어발달문제 평가하기</li><li class="map-chapter chapter-25">25. 나는 말을 잘 못해요.</li><li class="map-chapter chapter-26">26. 나는 잘못된 말을 써요. </li><li class="map-chapter chapter-27">27. 영유아 언어촉진을 위한 활동 계획하기 </li></ul></div><div class="map-module-6"><h3>사례 6. 인지발달 문제행동</h3><ul><li class="map-chapter chapter-28">28. 영유아 언어촉진을 위한 언어활동 지도</li><li class="map-chapter chapter-29">29. 영유아의 인지발달문제행동 평가하기</li><li class="map-chapter chapter-30">30. 놀이와 활동이 나아지지 않아요.</li></ul></div></div></section>';

// var arrHashTime = [0, 68, 85];
var arrHashTime = [];
arrHashTime[1] = [0, 18, 0, 93];

var arrSubTitle = [];
arrSubTitle[1] = ['1. 갑과 을, 당신은 어느쪽인가요?', '2. 나도 모르는 사이에 갑질 중?', '3. 내 옆자리의 슈퍼갑, 갑질은 현재 진행형', '4. 갑질, 참는 것이 능사는 아닙니다.'];

var arrSubTitleShort = [];
arrSubTitleShort[1] = [
  '<span class="subj_number">01.</span> 갑질의 개념 및 현황',
  '<span class="subj_number">02.</span> 갑질의 유형 및 판단기준',
  '<span class="subj_number">03.</span> 직장 내 갑질의 이해',
  '<span class="subj_number">04.</span> 갑질 행위 대응',
];

var current_seq = 0;

var path = document.location.pathname;
var totalPages = '06';
var tmp = path.split('/');
var currentChapter = tmp[tmp.length - 2];
var currentPage = tmp[tmp.length - 1].split('.html')[0];

function mobileCheck() {
  var value = 'PC';
  var mobile = /iphone|ipad|ipod|android|blackberry|mini|windows\sce|palm/i.test(navigator.userAgent.toLowerCase());
  if (mobile) {
    var userAgent = navigator.userAgent.toLowerCase();
    if (userAgent.search('android') > -1 && userAgent.search('mobile') > -1) value = 'ANDROID';
    else if (userAgent.search('android') > -1 && !(userAgent.search('mobile') > -1)) value = 'ANDROID TABLET';
    else if (userAgent.search('blackberry') > -1) value = 'BLACKBERRY';
    else if (userAgent.search('iphone') > -1) value = 'IPHONE';
    else if (userAgent.search('ipod') > -1) value = 'IPOD';
    else if (userAgent.search('ipad') > -1) value = 'IPAD';
    else value = 'UNKNOW';
  }
  return value;
}

function numToNDigitStr(num, n) {
  if (num >= Math.pow(10, n - 1)) {
    return num;
  }
  return '0' + numToNDigitStr(num, n - 1);
}

function goNextPage() {
  var target = parseInt(currentPage, 10) + 1;
  if (has_block) {
    if (has_add_quiz === true) {
      $('#modal-require-quiz-process p.comment').html('<strong>보충문항</strong>을 확인해주세요.');
      $('#modal-require-quiz-process p.comment').css('top', '110px');
    } else if (has_reading) {
      $('#modal-require-quiz-process p.comment').html('<strong>참고자료</strong>를 모두 확인해주세요.');
      $('#modal-require-quiz-process p.comment').css('top', '110px');
    } else {
      $('#modal-require-quiz-process p.comment').html('평가하기의 모든 항목을 확인해주세요.');
      $('#modal-require-quiz-process p.comment').css('top', '110px');
    }

    $('#modal-require-quiz-process').addClass('is-active');
    setTimeout(function () {
      $('#modal-require-quiz-process').removeClass('is-active');
    }, 3000);
  } else {
    if (target <= 6) {
      document.location.href = numToNDigitStr(target, 2) + '.html';
    } else {
      alert('마지막 페이지 입니다.');
    }
  }
}

function goPrevPage() {
  var target = parseInt(currentPage, 10) - 1;
  if (target >= 1) {
    document.location.href = numToNDigitStr(target, 2) + '.html';
  } else {
    alert('첫 페이지 입니다.');
  }
}

function checkTime() {
  var _currentTime = player.currentTime();
  if (currentPage == '01' || currentPage == '06') {
    for (var i = 0; i < arrHashTime[Number(currentChapter)].length; i++) {
      if (_currentTime >= arrHashTime[Number(currentChapter)][i]) {
        var _currentSeq = i;
        $('.goto').removeClass('active');
        document.location.href = document.location.href.split('#time')[0] + '#time=' + arrHashTime[Number(currentChapter)][i];
        // $('#goto-4-' + (i + 1)).addClass('active');
        if (currentPage == '01') $('#goto-1-' + (i - 1)).addClass('active');
        if (currentPage == '06') $('#goto-6-' + (i - 1)).addClass('active');
        // if (current_seq !== i) {
        // $('#section-img img').attr('src', '../common/images/' + currentChapter + '/section_04_' + (i + 1) + '.png'); /* 임시삭제 */
        // }
        current_seq = i;
      }
    }
  }
}

function initPage() {
  var _current = parseInt(currentPage, 10);
  var _is_video = true;

  var _target_partial = _partial_video;
  if (_current >= 10) {
    _target_partial = _partial_audio;
    _is_video = false;
  }

  $('#video').html(_target_partial);

  if (_is_video) {
    player = videojs('video-content', options);

    player.src('./mov/' + currentPage + '.mp4');
  } else {
    player = videojs('video-content', options);

    player.src('./audio/' + currentPage + '.mp3');
  }

  $('.vjs-play-control').addClass('vjs-icon-control');
  $('.vjs-icon-replay').addClass('vjs-icon-control');
  $('.vjs-fullscreen-control').addClass('vjs-icon-control');

  $('.vjs-icon-current').html(currentPage + ' / ' + totalPages);
  $('.vjs-icon-current').blur();

  var hash = Number(document.location.hash.split('time=')[1]);
  // console.log(typeof(hash))
  if (currentPage === '04' && document.location.hash.split('time=')[1] === undefined) {
    hash = 0;
  }

  if (hash >= 0) {
    player.play();

    setTimeout(function () {
      player.currentTime(hash);
      player.on('timeupdate', checkTime);
    }, 500);
  }

  player.on('ended', function () {
    $('#notice').show().addClass('slideInUp');
    if (currentPage === '07') {
      $('#end-notice').show();
    }
    if (parseInt(currentPage, 10) < 7) {
      $('#next-notice').show();
    }
  });

  $('#index').html(_partial_index_menu);
  $('section.columns').append(_partial_map);
  $('#index').addClass('animated flipInX');
  $('#goto-' + parseInt(currentPage, 10)).addClass('active');
  $('.goto').click(function () {
    var time = $(this).attr('data-time');
    var target_page = parseInt($(this).attr('id').split('-')[1], 10);
    if (time !== undefined) {
      document.location.href = './0' + target_page + '.html#time=' + parseInt(time, 10);
      if (currentPage == '01' || currentPage == '06') {
        player.currentTime(parseInt(time, 10));
      }
    } else {
      document.location.href = './0' + target_page + '.html';
    }
  });

  $('#goto-1-1').attr('data-time', arrHashTime[Number(currentChapter)][0]);
  $('#goto-1-2').attr('data-time', arrHashTime[Number(currentChapter)][1]);
  $('#goto-6-1').attr('data-time', arrHashTime[Number(currentChapter)][2]);
  $('#goto-6-2').attr('data-time', arrHashTime[Number(currentChapter)][3]);

  for (var i = 2; i < 7; i++) {
    $('#goto-' + i).html(arrSubTitle[Number(currentChapter)][i - 2]);
    // $('#goto-' + (i)).attr('data-time', arrHashTime[Number(currentChapter)][i]);
  }

  var c_chapter = Number(currentChapter);
  var c_module = 1;

  if (c_chapter > 0 && c_chapter <= 6) c_module = 1;
  if (c_chapter > 6 && c_chapter <= 10) c_module = 2;
  if (c_chapter > 10 && c_chapter <= 15) c_module = 3;
  if (c_chapter > 15 && c_chapter <= 23) c_module = 4;
  if (c_chapter > 23 && c_chapter <= 27) c_module = 5;
  if (c_chapter > 27 && c_chapter <= 30) c_module = 6;

  $('.map-module-' + c_module + ' h3').addClass('active');
  $('li.map-chapter.chapter-' + c_chapter).addClass('active');

  $('#script').html(script[parseInt(currentPage, 10)]);
  $('#script').addClass('animated fadeIn');

  $('title').html('카드뉴스로 보는 갑질관행 개선');
}

function checkSize() {
  var innerWidth = window.innerWidth;
  var innerHeight = window.innerHeight;
  var scale = innerWidth / 1010;

  if (scale < 1) {
    $('section.columns.is-fullhd.is-vcentered.is-centered.is-overlay.is-marginless').css({
      transform: 'scale(' + scale + ')',
      top: '10%',
      width: '1010px',
      height: '568px',
      'transform-origin': 'left top',
    });
  } else {
    $('section.columns.is-fullhd.is-vcentered.is-centered.is-overlay.is-marginless').css({
      transform: 'scale(' + 1 + ')',
      top: '0%',
      width: '100%',
      height: '100%',
      'transform-origin': 'center center',
    });
  }

  if (mobileCheck() !== 'PC') {
    $('section.columns.is-fullhd.is-vcentered.is-centered.is-overlay.is-marginless').css('width', '1010px');
    $('<meta name="viewport" content="width=device-width, initial-scale=1.0">');
  }
}

$(document).ready(function () {
  initPage();

  // $("section.columns.is-fullhd.is-vcentered.is-centered.is-overlay.is-marginless").append('<div id="notice" class="is-overlay animated"><div id="next-notice"></div><div id="end-notice"></div></div>');

  // $('nav.is-overlay').append('<div id="section-img" class="is-overlay"><img src="../common/images/section_' + currentPage + '.png"/></div>');
  // if(currentPage === "04") {
  //   $('#section-img img').attr('src', '../common/images/' + currentChapter + '/section_04_1.png');
  // }

  // $('#chapter-title').css('background-image', 'url(../common/images/' + currentChapter + '/title_' + currentChapter + '.png)');

  checkSize();

  $('button#map-close').click(function () {
    $('section#map').removeClass('fadeIn');
    $('section#map').addClass('fadeOut');
    $('section#map').hide();
    is_opened_map = false;
  });

  if (parseInt(currentPage) != 1 && currentPage <= 5) {
    $('#chapter-title').html(arrSubTitleShort[parseInt(currentChapter)][parseInt(currentPage) - 2]);
    setTimeout(function () {
      $('#chapter-title').fadeIn();
    }, 1000);
  }
});

$(window).resize(function () {
  checkSize();
});
