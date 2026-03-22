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
					<li id="lm01" class='lm_l2'><a href="test01.php"  class='lm_a2'><span class='isTxt'>윤리의식 자가(자율)점검</span></a></li>
					<li id="lm02" class='lm_l2 over'><a href="test02.php"  class='lm_a2'><span class='isTxt'>윤리경영 의식수준 진단</span></a></li>
					<li id="lm03" class='lm_l2'><a href="test03.php"  class='lm_a2'><span class='isTxt'>직장 내 괴롭힘 설문조사</span></a></li>
					<li id="lm04" class='lm_l2'><a href="test04.php"  class='lm_a2'><span class='isTxt'>인권의식 인식도 설문조사</span></a></li>
				</ul>
			</div>
		</div>
		<? include_once(G5_THEME_PATH.'/help.php');?>
	</div>
	<div id="contents">
		<div class="cont-top">
			<h2 class="tit">윤리경영 의식수준 진단</h2>
			<ul class="path">
				<li>HOME</li>
				<li>진단마당</li>
				<li>윤리경영 의식수준 진단</li>
			</ul>
		</div>
		<!-- page-start // -->
		<p>
			<img src="<?php echo G5_THEME_URL ?>/_Img/Content/test01.jpg" alt="" width="800" height="544" usemap="#Map" border="0">
			<map name="Map" id="Map">
				<area shape="rect" coords="287,158,503,203" href="#" onClick="window.open('poll01_01.html','_blank','left=1,top=1,toolbar=no,location=no,status=yes,menubar=no,scrollbars=yes,resizable=no,width=900,height=880')" onfocus="this.blur()" alt="수준지수 진단하기" />
			</map>
		</p>
		<!-- page-end //-->
	</div>
</div>
<?php
include_once(G5_THEME_PATH.'/tail.php');