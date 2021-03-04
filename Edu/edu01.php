<?php
include_once('./_common.php');

//로그인 체크
if(!$is_member) {
	alert(CD_LOGIN_MSG);
}
// 테마 head.sub.php 파일
if(defined('G5_THEME_PATH') && is_file(G5_THEME_PATH.'/Edu/edu01.php')) {
    require_once(G5_THEME_PATH.'/Edu/edu01.php');
    return;
}
?>