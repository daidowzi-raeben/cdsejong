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
			<p class="btxt"><span>교육마당</span></p>
			<p class="stxt">교육마당은 임직원이 윤리,청렴,준법,인권 등 <br />
			사이버 교육,메시지 교육, 캠페인 교육을 통해<br />
			온라인으로 학습을 수행하기 위한 과정입니다. </p>
		</div>
		<div class="visimg vis02"></div>
    </div>
    <div class="content-ov">
		<div id="subNavi-wrap">
			<div id="subNavi">
				<div class="lm-tit">
					<div class="tit">
						<p class="btxt">EDUCATION section</p>
						<p class="stxt">교육마당</p>
					</div>
				</div>
				<div class="leftmenu" id="leftmenu">
					<ul class="depth2">
						<li id="lm01" class='lm_l2'><a href="edu01.php"  class='lm_a2'><span class='isTxt'>사이버 교육</span></a></li>
						<li id="lm02" class='lm_l2'><a href="edu02.php"  class='lm_a2'><span class='isTxt'>메시지 교육</span></a></li>
						<li id="lm03" class='lm_l2'><a href="edu03.php"  class='lm_a2'><span class='isTxt'>캠페인 교육</span></a></li>
						<li id="lm04" class='lm_l2 over'><a href="edu04.php"  class='lm_a2'><span class='isTxt'>권익위 브리프스</span></a></li>
					</ul>
				</div>
			</div>
			<? include_once(G5_THEME_PATH.'/help.php');?>
		</div>
		<div id="contents">
			<div class="cont-top">
				<h2 class="tit">권익위 브리프스</h2>
				<ul class="path">
					<li>HOME
					<li>교육마당</li>
					<li>권익위 브리프스</li>
				</ul>
			</div>
			<!-- page-start // -->
			<p class="txt_title">브리프스 2019년 01호</p>
			<div class="course2">
				<p class="c_img2"><img src="<?php echo G5_THEME_URL ?>/_Img/Content/course_img.jpg" width="215"></p>
				<ul class="edu_gap20">
					<li><span class="title">기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;간</span>2019-04-01 ~ 2019-04-30</li>
					<li><span class="title">안&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;내</span>열람을 완료하시면 마일리지가 부여됩니다.</li>
					<li><span class="title btn"><a href="#n" class="class-end"><span>연람완료</span></a><a href="#n" class="class-enter"><span>연람하기</span></a></li>
				</ul>
			</div>
			<div class="gap35"></div>
			<p class="txt_title">브리프스 2019년 02호</p>
			<div class="course2">
				<p class="c_img2"><img src="<?php echo G5_THEME_URL ?>/_Img/Content/course_img.jpg" width="215"></p>
				<ul class="edu_gap20">
					<li><span class="title">기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;간</span>2019-04-01 ~ 2019-04-30</li>
					<li><span class="title">안&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;내</span>열람을 완료하시면 마일리지가 부여됩니다.</li>
					<li><span class="title btn"><a href="#n" class="class-end"><span>연람완료</span></a><a href="#n" class="class-enter"><span>연람하기</span></a></li>
				</ul>
			</div>
			<div class="gap35"></div>
			<p class="txt_title">브리프스 2019년 03호</p>
			<div class="course2">
				<p class="c_img2"><img src="<?php echo G5_THEME_URL ?>/_Img/Content/course_img.jpg" width="215"></p>
				<ul class="edu_gap20">
					<li><span class="title">기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;간</span>2019-04-01 ~ 2019-04-30</li>
					<li><span class="title">안&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;내</span>열람을 완료하시면 마일리지가 부여됩니다.</li>
					<li><span class="title btn"><a href="#n" class="class-end"><span>연람완료</span></a><a href="#n" class="class-enter"><span>연람하기</span></a></li>
				</ul>
			</div>
        
        <!-- page-end //--> 
		</div>
    </div>
<?php
include_once(G5_THEME_PATH.'/tail.php');	