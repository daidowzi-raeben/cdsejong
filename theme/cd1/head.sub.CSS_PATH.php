<?php
// 이 파일은 새로운 파일 생성시 반드시 포함되어야 함
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

$g5_debug['php']['begin_time'] = $begin_time = get_microtime();

if (!isset($g5['title'])) {
    $g5['title'] = $config['cf_title'];
    $g5_head_title = $g5['title'];
}
else {
    // 상태바에 표시될 제목
    //$g5_head_title = implode(' | ', array_filter(array($g5['title'], $config['cf_title'])));
	$g5_head_title = $config['cf_title'];
}

$g5['title'] = strip_tags($g5['title']);
$g5_head_title = strip_tags($g5_head_title);

// 현재 접속자
// 게시판 제목에 ' 포함되면 오류 발생
$g5['lo_location'] = addslashes($g5['title']);
if (!$g5['lo_location'])
    $g5['lo_location'] = addslashes(clean_xss_tags($_SERVER['REQUEST_URI']));
$g5['lo_url'] = addslashes(clean_xss_tags($_SERVER['REQUEST_URI']));
if (strstr($g5['lo_url'], '/'.G5_ADMIN_DIR.'/') || $is_admin == 'super') $g5['lo_url'] = '';

/*
// 만료된 페이지로 사용하시는 경우
header("Cache-Control: no-cache"); // HTTP/1.1
header("Expires: 0"); // rfc2616 - Section 14.21
header("Pragma: no-cache"); // HTTP/1.0
*/
?>
<!doctype html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge"><!--ie 최상위버전 -->
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0 ,maximum-scale=1.0, minimum-scale=1.0,user-scalable=no,target-densitydpi=medium-dpi"> 반응형용 -->
<?php
if (G5_IS_MOBILE) {
    echo '<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">'.PHP_EOL;
    echo '<meta name="HandheldFriendly" content="true">'.PHP_EOL;
    echo '<meta name="format-detection" content="telephone=no">'.PHP_EOL;
} else {
    #echo '<meta http-equiv="imagetoolbar" content="no">'.PHP_EOL;
    #echo '<meta http-equiv="X-UA-Compatible" content="IE=edge">'.PHP_EOL;
}

if($config['cf_add_meta'])
    echo $config['cf_add_meta'].PHP_EOL;
?>
	<title><?php echo $g5_head_title; ?></title>
	<link type="text/css" rel="stylesheet" media="all" href="<?php echo CD_THEME_CSS_URL?>/common.css?ver=<?php echo CD_CSS_VER?>" />
	<link type="text/css" rel="stylesheet" media="all" href="<?php echo CD_THEME_CSS_URL?>/styleDefault.css?ver=<?php echo CD_CSS_VER?>" />
	<link type="text/css" rel="stylesheet" media="all" href="<?php echo CD_THEME_CSS_URL?>/layout.css?ver=<?php echo CD_CSS_VER?>" />
<?php 
	if ($is_member && basename($_SERVER['PHP_SELF']) != 'index.php') {  
		echo "<link type=\"text/css\" rel=\"stylesheet\" media=\"all\" href=\"" . CD_THEME_CSS_URL . "/content.css?ver=" . CD_CSS_VER . "\" />".PHP_EOL;
	} else {
		echo "<link type=\"text/css\" rel=\"stylesheet\" media=\"all\" href=\"" . CD_THEME_CSS_URL . "/main.css?ver=" . CD_CSS_VER . "\" />".PHP_EOL;
	}    
?>
<?php if ($is_member && basename($_SERVER['PHP_SELF']) != 'index.php') { ?>
	<link rel="stylesheet" href="<?php echo CD_THEME_JS_URL?>/jquery/animate.css?ver=<?php echo CD_CSS_VER?>">
<?php }?>
	<link rel="stylesheet" href="<?php echo CD_THEME_JS_URL?>/jquery/slick-theme.css?ver=<?php echo CD_CSS_VER?>">
	<link rel="stylesheet" href="<?php echo CD_THEME_JS_URL?>/jquery/slick.css?ver=<?php echo CD_CSS_VER?>">

<?php if (basename($_SERVER['PHP_SELF']) == 'index.php') { ?>
	<link rel="stylesheet" href="<?php echo CD_THEME_JS_URL?>/engine1/style.css?ver=<?php echo CD_CSS_VER?>">
<?php } ?>
	
	<script>
	// 자바스크립트에서 사용하는 전역변수 선언
	var g5_url       = "<?php echo G5_URL ?>";
	var g5_bbs_url   = "<?php echo G5_BBS_URL ?>";
	var g5_is_member = "<?php echo isset($is_member)?$is_member:''; ?>";
	var g5_is_admin  = "<?php echo isset($is_admin)?$is_admin:''; ?>";
	var g5_is_mobile = "<?php echo G5_IS_MOBILE ?>";
	var g5_bo_table  = "<?php echo isset($bo_table)?$bo_table:''; ?>";
	var g5_sca       = "<?php echo isset($sca)?$sca:''; ?>";
	var g5_editor    = "<?php echo ($config['cf_editor'] && $board['bo_use_dhtml_editor'])?$config['cf_editor']:''; ?>";
	var g5_cookie_domain = "<?php echo G5_COOKIE_DOMAIN ?>";
	</script>
<?php
	add_javascript('<script src="'.CD_THEME_JS_URL.'/jquery/jquery-1.11.3.min.js"></script>', 0);
	add_javascript('<script src="'.CD_THEME_JS_URL.'/jquery/jquery.easing.1.3.js"></script>', 0);
	add_javascript('<script src="'.CD_THEME_JS_URL.'/jquery/slick.js?ver='.G5_JS_VER.'"></script>', 1);
	add_javascript('<script src="'.CD_THEME_JS_URL.'/topmenu.js?ver='.G5_JS_VER.'"></script>', 1);
	add_javascript('<script src="'.CD_THEME_JS_URL.'/defalut.js?ver='.G5_JS_VER.'"></script>', 1);
	add_javascript('<script src="'.CD_THEME_JS_URL.'/common.js?ver='.G5_JS_VER.'"></script>', 1);

if(!defined('G5_IS_ADMIN'))
    echo $config['cf_add_script'];
?>
</head>
<?php 
	if ($is_member && basename($_SERVER['PHP_SELF']) != 'index.php') {  
		add_javascript('<script src="'.CD_THEME_JS_URL.'/jquery/owl.carousel.js?ver='.G5_JS_VER.'"></script>', 0);
		add_javascript('<script src="'.CD_THEME_JS_URL.'/jquery/jquery.mousewheel.js?ver='.G5_JS_VER.'"></script>', 0);
		add_javascript('<script src="'.CD_THEME_JS_URL.'/sub.js?ver='.G5_JS_VER.'"></script>', 2);
?>
<body id="sub">
<?php 
	} else {  
		add_javascript('<script src="'.CD_THEME_JS_URL.'/engine1/jquery.js"></script>', 0);
		add_javascript('<script src="'.CD_THEME_JS_URL.'/main.js?ver='.G5_JS_VER.'"></script>', 2);
?>
<body id="body"<?php echo isset($g5['body_script']) ? $g5['body_script'] : ''; ?>>
<?php } ?>
<div id="skipNavi">
	<h1 class="blind">세종교육원 스킵네비게이션</h1>
	<ul>
		<li><a href="#contents" class="skipLink">본문바로가기</a></li>
		<li><a href="#topmenu" class="skipLink">주메뉴바로가기</a></li>
	</ul>
</div>
<div id="doc" class="isPage">
<?php
if ($is_member) { // 회원이라면 로그인 중이라는 메세지를 출력해준다.
    $sr_admin_msg = '';
    if ($is_admin == 'super') $sr_admin_msg = "최고관리자 ";
    else if ($is_admin == 'group') $sr_admin_msg = "그룹관리자 ";
    else if ($is_admin == 'board') $sr_admin_msg = "게시판관리자 ";

    //echo '<div id="hd_login_msg">'.$sr_admin_msg.get_text($member['mb_nick']).'님 로그인 중 ';
    //echo '<a href="'.G5_BBS_URL.'/logout.php">로그아웃</a></div>';
}