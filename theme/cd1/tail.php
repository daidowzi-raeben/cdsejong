<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

/*
if (G5_IS_MOBILE) {
    include_once(G5_THEME_MOBILE_PATH.'/tail.php');
    return;
}
*/
	if (basename($_SERVER['PHP_SELF']) == 'index.php') {  ?>
			</div>
<?php }?>
		</div>
	<!-- e: #container-wrap //-->
	<!-- } 하단 끝 -->

<?php
include_once(G5_THEME_PATH."/tail.sub.php");