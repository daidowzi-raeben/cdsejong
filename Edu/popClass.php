<?php
include_once('./_common.php');
## 사이버 교육 ##
// m001-m003 계정 리스트
$test_members = array('m001', 'm002', 'm003');

// 전역 변수 명시적 선언
global $member, $is_member, $g5;

//로그인 체크
if (!$is_member && !in_array($member['mb_id'], $test_members)) {
    alert(CD_LOGIN_MSG);
}
if (!$l_no) {
    alert("과정을 선택해주세요.");
    exit;
}

$LESSON = get_lesson($l_no);
$CHAPTER = get_chapter($c_no);

$foldName = $LESSON['lssn_div'];

if (!$CHAPTER) {
    echo "<script>alert('차시정보가 존재하지 않습니다.'); self.close();</script>";
    exit;
}

## 신청기간 확인
if (!in_array($member['mb_id'], $test_members) && !($LESSON['lssn_sdate'] <= G5_TIME_YMDHIS && strtotime(G5_TIME_YMDHIS) < strtotime($LESSON['lssn_edate'] . "+1 day"))) {
    echo "<script>alert('학습기간이 아닙니다.'); self.close();</script>";
    exit;
}

##학습기록 오픈 확인
if (!in_array($member['mb_id'], $test_members) && !get_lessonApply($member['mb_id'], $l_no)) {
    echo "<script>alert('학습가능한 교육이 없습니다.'); self.close();</script>";
}

$CONTENTS = get_contents($CHAPTER['cpt_contents']);
$page_url = "";

############################## 기존 진행상태 확인 (이어보기 로직) ###############################
$my_info = array();
$my_info["uid"] = $member['mb_id'];
$my_info["lesson"] = $l_no;
$my_info["chapter"] = $c_no;
$my_info["contents"] = $CHAPTER['cpt_contents'];

$attend_info = chapter_attend_exist($my_info);
if ($attend_info) {
    // 0페이지가 아니고, 총 페이지수보다 작을 때 이어보기 전용 페이지 설정
    if ($attend_info['att_study_page'] > 0 && $attend_info['att_study_page'] <= $CONTENTS['c_page']) {
        $open_page = $attend_info['att_study_page'];
    } else {
        $open_page = 1;
    }
} else {
    $open_page = 1;
}

// [강력한 예외 처리] m001-m003 프리패스 (필요 시 유지, URL 보정은 메인 로직에서 통합 관리)
if (in_array($member['mb_id'], $test_members)) {
    if (!$CONTENTS || !is_array($CONTENTS)) {
        $CONTENTS = get_contents($CHAPTER['cpt_contents']);
        if (!$CONTENTS) {
            $CONTENTS = array('c_no' => (int)$c_no, 'c_url' => sprintf("%02d", (int)substr($CHAPTER['cpt_no'], -2)));
        }
    }
}

// 일반 사용자 및 테스트 사용자 공동 URL 생성 로직
if ($page_url == "") {
    if (!$CONTENTS['c_url']) {
        echo "<script>alert('해당컨텐츠가 존재하지 않습니다. (USER: " . $member['mb_id'] . ")'); self.close();</script>";
        exit;
    }

    // 상태값에 따른 경로 처리
    if ($LESSON['lssn_status'] == 'A') {
        $ext = ($l_no == 92) ? ".html" : ".htm";
        $page_url = G5_URL . "/process/{$foldName}/{$CONTENTS['c_url']}/" . sprintf("%02d", $open_page) . $ext;
    } else if ($LESSON['lssn_status'] == 'B') {
        $page_url = G5_URL . "/process/{$foldName}/{$CONTENTS['c_url']}/01/" . sprintf("%03d", $open_page) . ".html";
    } else if ($LESSON['lssn_status'] == 'C') {
        $page_url = G5_URL . "/process/{$foldName}/{$CONTENTS['c_url']}/" . sprintf("%02d", $open_page) . ".html";
    } else if ($LESSON['lssn_status'] == 'D') {
        $page_url = G5_URL . "/process/{$foldName}/{$CONTENTS['c_url']}/{$CONTENTS['c_url']}_" . sprintf("%02d", $open_page) . ".html";
    } else if ($LESSON['lssn_status'] == 'E') {
        $page_url = G5_URL . "/process/{$foldName}/{$CONTENTS['c_url']}/" . sprintf("%03d", $open_page) . ".html";
    } else if ($LESSON['lssn_status'] == 'F') {
        $page_url = G5_URL . "/process/{$foldName}/{$CONTENTS['c_url']}/01/" . sprintf("%03d", $open_page) . ".htm";
    }
}

$result2 = sql_fetch("SELECT * FROM cd_lms_contents WHERE c_no = '" . $CHAPTER['cpt_contents'] . "'");
?>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title><?php echo $config['cf_title']; ?></title>
    <link type="text/css" rel="stylesheet" media="all" href="<?php echo CD_THEME_CSS_URL?>/common.css" />
    <link type="text/css" rel="stylesheet" media="all" href="<?php echo CD_THEME_CSS_URL?>/content.css" />
    <script type="text/javascript" src="<?php echo CD_THEME_JS_URL?>/jquery/jquery-1.11.3.min.js"></script>
    <script src="<?php echo CD_THEME_JS_URL?>/contents.js?v2210" type="text/javascript"></script>
    <script type="text/javascript">
        if (typeof jQuery !== 'undefined' && typeof jQuery.easing !== 'undefined') {
            jQuery.easing.def = 'swin
        }

        var pp = 0;
        function isPage(v) {
            check_contents_wbt(<?php echo (int)$open_page ?> + pp);
            pp++;
            var f = "<?php echo (int)($result2['c_page'] ? $result2['c_page'] : 1) ?>";
            var d = "<?php echo (int)$open_page?>";
            if (f == d) {
                check_contents_wbt2(<?php echo (int)$CONTENTS['c_no'] ?> ,<?php echo (int)$LESSON['lssn_no'] ?>);
            }
        }
    </script>
</head>
<body id="pop">
    <div style="width:100%;height:100vh;">
        <iframe src="" name="frm" id="frm" style="width:100%;height:100%;border:0px;" onLoad="isPage(this)"></iframe>
        <script type="text/javascript">
            setClass(<?php echo (int)$LESSON['lssn_no'] ?>, <?php echo (int)$CHAPTER['cpt_no'] ?>, <?php echo (int)$CONTENTS['c_no'] ?>);
            setClassUrl("<?php echo $page_url?>");
        </script>
    </div>
</body>
</html>
