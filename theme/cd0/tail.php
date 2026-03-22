<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

/*
if (G5_IS_MOBILE) {
    include_once(G5_THEME_MOBILE_PATH.'/tail.php');
    return;
}
*/
?>
			</div>
		</div>
<?php
if ($config['cf_analytics']) {
    echo $config['cf_analytics'];
}
?>
	<!-- e: #container-wrap //-->
	<!-- } 하단 끝 -->

<?php
include_once(G5_THEME_PATH."/tail.sub.php");