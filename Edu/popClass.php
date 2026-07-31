<?php
include_once('./_common.php');
## 사이버 교육 ##
//로그인 체크
if (!$is_member) {
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
    $rtn['res'] = false;
    $rtn['msg'] = "차시정보가 존재하지 않습니다.";
    echo json_encode($rtn);
    exit;
}

## 신청기간 확인
if (!($LESSON['lssn_sdate'] <= G5_TIME_YMDHIS && strtotime(G5_TIME_YMDHIS) < strtotime($LESSON['lssn_edate'] . "+1 day"))) {
    alert("학습기간이 아닙니다.");
    exit;
}

##학습기록 오픈 확인
if (!get_lessonApply($member['mb_id'], $l_no)) {
    alert("학습가능한 교육이 없습니다.");
}

$CONTENTS = get_contents($CHAPTER['cpt_contents']);

if (!$CONTENTS['c_url']) {
    alert("해당컨텐츠가 존재하지 않습니다.");
    exit;
}

############################## 기존 진행상태 확인 ###############################
$my_info = array();
$my_info["uid"] = $member['mb_id'];
$my_info["lesson"] = $l_no;
$my_info["chapter"] = $c_no;
$my_info["contents"] = $CHAPTER['cpt_contents'];

$attend_info = chapter_attend_exist($my_info);

if ($attend_info) {
    if ($attend_info['att_study_page'] == 0)
        $open_page = 1;
    elseif ($attend_info['att_study_page'] >= $CONTENTS['c_page'])
        $open_page = 1;
    else
        $open_page = $attend_info['att_study_page'];
} else
    $open_page = 1;

if ($LESSON['lssn_status'] == 'A') {
    $ext = ($l_no == 92) ? ".html" : ".htm";
    $page_url = G5_URL . "/process/{$foldName}/{$CONTENTS['c_url']}/" . sprintf("%02d", $open_page) . $ext;
} else if ($LESSON['lssn_status'] == 'B')
    $page_url = G5_URL . "/process/{$foldName}/{$CONTENTS['c_url']}/01/" . sprintf("%03d", $open_page) . ".html";
else if ($LESSON['lssn_status'] == 'C')
    $page_url = G5_URL . "/process/{$foldName}/{$CONTENTS['c_url']}/" . sprintf("%02d", $open_page) . ".html";
else if ($LESSON['lssn_status'] == 'D')
    $page_url = G5_URL . "/process/{$foldName}/{$CONTENTS['c_url']}/{$CONTENTS['c_url']}_" . sprintf("%02d", $open_page) . ".html";
else if ($LESSON['lssn_status'] == 'E')
    $page_url = G5_URL . "/process/{$foldName}/{$CONTENTS['c_url']}/" . sprintf("%03d", $open_page) . ".html";
else if ($LESSON['lssn_status'] == 'F')
    $page_url = G5_URL . "/process/{$foldName}/{$CONTENTS['c_url']}/01/" . sprintf("%03d", $open_page) . ".htm";
#echo $page_url;

## 컨트롤바 상태
if ($LESSON['lssn_controlbar'] == "Y") {
    $controlbar_enable = "yes";
} else {
    $controlbar_enable = "No";
}

$result2 = sql_fetch("SELECT * FROM cd_lms_contents WHERE c_no = '" . $CHAPTER['cpt_no'] . "'");
?>
<!doctype html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>
        <?php echo $config['cf_title']; ?>
    </title>
    <link type="text/css" rel="stylesheet" media="all" href="<?php echo CD_THEME_CSS_URL ?>/common.css" />
    <link type="text/css" rel="stylesheet" media="all" href="<?php echo CD_THEME_CSS_URL ?>/styleDefault.css" />
    <link type="text/css" rel="stylesheet" media="all" href="<?php echo CD_THEME_CSS_URL ?>/content.css" />
    <script type="text/javascript" src="<?php echo CD_THEME_JS_URL ?>/jquery/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="<?php echo CD_THEME_JS_URL ?>/jquery/jquery.easing.1.3.js"></script>
    <script>
        var urls = 'pop02.php'
        var width = 1080;
        var height = 625;
        var tops = (window.screen.height - height) / 2;
        var lefts = (window.screen.width - width) / 2;

        var strFeature;
        strFeature = 'height=' + height + ',width=' + width +
            ',menubar=no,toolbar=no,location=no,resizable=no,status=no,scrollbars=no,top=' + tops + ', left=' + lefts

        $(function () {
            $('.class-regist').click(function () {
                self.close();
            });
        });

        function endProc() {
            location.reload();
        }
    </script>
    <script src="<?php echo CD_THEME_JS_URL ?>/contents.js?v2210" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $(".con03 dt").click(function () {
                $(".con03 dt").show();
                $(".con03 dd").slideUp();
                $(this).hide();
                $(this).next("dd").slideDown();
            });
        });

        controlbar_enable = "<?php echo $controlbar_enable ?>";
    </script>
</head>
<!-- onLoad="check_contents_wbt(<?php echo $open_page ?>)" -->

<body id="pop">
    <div style="width:100%;height:100vh;position:absolute;left:0;top:0;">
        <iframe src="" name="frm" id="frm" style="width:100%;height:100%;border:0px;" onLoad="isPage(this)"></iframe>
        <script type="text/javascript">
            var pp = 0;
            var control_enable = '';
            setClass(<?php echo $LESSON['lssn_no'] ?>, <?php echo $CHAPTER['cpt_no'] ?>, <?php echo $CONTENTS['c_no'] ?>);
            setClassUrl("<?php echo $page_url ?>");
            // check_contents_wbt2(<?php echo $CONTENTS['c_no'] ?> ,<?php echo $LESSON['lssn_no'] ?>)
            function isPage(v) {

                check_contents_wbt(<?php echo $open_page ?> + pp)
                pp++;

                console.log(v.src, <?php echo $open_page ?>)
                if (v?.src) {
                    let a = v.src
                    a = Number(a.split('.')[a.split('.').length - 2].split('/')[a.split('.')[a.split('.').length - 2].split('/').length - 1])
                }

                var f = "<?php echo $result2['c_page'] ?>";
                var d = "<?php echo $open_page ?>";

                if (f == d) {
                    check_contents_wbt2(<?php echo $CONTENTS['c_no'] ?>, <?php echo $LESSON['lssn_no'] ?>)
                }

            }
        </script>
        <?php
        if ($open_page >= 2) {
            ?>n
            <script type="text/javascript">
                //index_move(<?php echo $open_page ?>);
            </script>
            <?php
        } ?>
    </div>
</body>

</html>