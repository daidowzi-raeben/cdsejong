<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

/*if (G5_IS_MOBILE) {
    include_once(G5_THEME_MOBILE_PATH.'/index.php');
    return;
}*/

include_once(G5_THEME_PATH.'/head.php');
?>
<div id="svisual-wrap">
	<div class="vistxt">
		<p class="btxt"><span>진단마당</span></p>
		<p class="stxt">진단마당은 임직원의 내부청렴도 조사, <br />윤리의식 자율진단,윤리경영 의식수준 조사 등 주로<br />내부 임직원을 대상으로 진단을 수행하는 과정입니다. </p>
	</div>
	<div class="visimg vis01"></div>
</div>
<div class="content-ov">
	<div id="subNavi-wrap">
		<div id="subNavi">
			<div class="lm-tit">
				<div class="tit">
					<p class="btxt">survey section</p>
					<p class="stxt">진단마당</p>
				</div>
			</div>		
			<div class="leftmenu" id="leftmenu">
				<ul class="depth2">
					<li id="lm05" class='lm_l2 over'><a href="test05.php"  class='lm_a2'><span class='isTxt'>고위직 대상 부패위험성 진단</span></a></li>
				</ul>
			</div>
		</div>
		<? include_once(G5_THEME_PATH.'/help.php');?>
	</div>
	<div id="contents">
		<div class="cont-top">
			<h2 class="tit">고위직 대상 부패위험성 진단</h2>
			<ul class="path">
				<li>HOME</li>
				<li>진단마당</li>
				<li>고위직 대상 부패위험성 진단</li>
			</ul>
		</div>
		<!-- page-start // -->
		<p>
			<img src="<?php echo G5_THEME_URL ?>/survey/images/main_001.png" alt="" width="800" height="544" usemap="#Map" border="0">
			<!-- <a href="<?php echo G5_URL?>/survey/poll_guide.html?email=<?php echo $member['mb_id'];?>" target="_blank" class="btn-survey start"></a> -->
			<button type="button" onclick="alert('설문 대상자는 이메일로 발송됩니다.')" class="btn-survey start"></button>
			<!-- 진단완료버튼 -->
			<!-- <a href="#" class="btn-survey end"></a> -->
		</p>
		<!-- page-end //-->
	</div>
</div>
<?php
include_once(G5_THEME_PATH.'/tail.php');