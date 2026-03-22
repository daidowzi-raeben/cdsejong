<?php
include_once('./_common.php');

//로그인 체크
if(!$is_member) {
	alert(CD_LOGIN_MSG);
}


$sql = " SELECT * FROM sj_prs_pledge WHERE mb_id = '".$member['mb_id']."' and pld_year = '2025' ";
$result = sql_fetch($sql);
#echo $result['mb_id'];
if($member['mb_profile'] == '금호건설' && !$result['mb_id']) {
	?>

<script>
	location.href='/';
</script>
		<?php
}

$sql = " SELECT * FROM sj_prs_pledge WHERE mb_id = '".$member['mb_id']."' and pld_year = '2025' ";
$result = sql_fetch($sql);
#echo $result['mb_id'];
if($member['mb_profile'] == '엘에스오토모티브' && !$result['mb_id']) {
	?>

<script>
	location.href='/';
</script>
		<?php
}
?>






<?php


if($member['mb_profile'] == '엘에스오토모티브') {
#if($member['mb_id'] == 'admin') {
	?>
<!-- 여기에 작업해주세요 -->
<style>
	#header-wrap,#svisual-wrap,#subNavi-wrap {display:none !important;}
	#contents {width:100% !important; font-size:12px;margin-top:20px;}
	.content-ov {padding:10px;}
	.login-sub.logout {right:10px !important;}
	.progress-info > p {width:100% !important; margin-bottom:10px;}
	.progress-wrap .progress-info .fl span, .progress-wrap .progress-info .fr span {font-size:20px !important; }
	#footer {padding:20px 10px !important;}
	#f-info {font-size:10px !important}
	.progress-info > p {
	max-width:400px;
	}
</style>

		<?php
}
		?>






<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
<style>
@media (max-width: 768px) {
	#header-wrap,#svisual-wrap,#subNavi-wrap {display:none !important;}
	#contents {width:100% !important; font-size:12px;margin-top:20px;}
	.content-ov {padding:10px;}
	.login-sub.logout {right:10px !important;}
	.progress-info > p {width:100% !important; margin-bottom:10px;}
	.progress-wrap .progress-info .fl span, .progress-wrap .progress-info .fr span {font-size:20px !important; }
	#footer {padding:20px 10px !important;}
	#f-info {font-size:10px !important}
}

</style>
<?php
// 테마 안에 있는 파일로 대체
if(defined('G5_THEME_PATH') && is_file(G5_THEME_PATH.'/Edu/class.php')) {
    require_once(G5_THEME_PATH.'/Edu/class.php');
    return;
}
?>