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
			<p class="btxt"><span>참여마당</span></p>
			<p class="stxt">참여마당은 임직원 이 온라인 교육 포털 사이트를  <br />통해 상호 참여하는 학습을 통하여<br />윤리적 기업문화를 정착하기 위한 과정입니다. </p>
		</div>
		<div class="visimg vis03"></div>
	</div>
    <div class="content-ov">
		<div id="subNavi-wrap">
			<div id="subNavi">
				<div class="lm-tit">
					<div class="tit">
						<p class="btxt">JOIN section </p>
						<p class="stxt">참여마당</p>
					</div>
				</div>
				<div class="leftmenu" id="leftmenu">
					<ul class="depth2">
						<li id="lm01" class='lm_l2'><a href="<?php echo G5_BBS_URL?>/board.php?bo_table=free"  class='lm_a2'><span class='isTxt'>커뮤니티</span></a></li>
						<li id="lm02" class='lm_l2 over'><a href="join02.php"  class='lm_a2'><span class='isTxt'>퀴즈 골든벨</span></a></li>
						<li id="lm03" class='lm_l2'><a href="join03.php"  class='lm_a2'><span class='isTxt'>웨비나</span></a></li>
					</ul>
				</div>
			</div>
			<? include_once(G5_THEME_PATH.'/help.php');?>
		</div>
		<div id="contents">
			<div class="cont-top">
				<h2 class="tit">퀴즈 골든벨</h2>
				<ul class="path">
					<li>HOME
					<li>참여마당</li>
					<li>퀴즈 골든벨</li>
				</ul>
			</div>
			<!-- page-start // -->
			<div class="join-top goldenbell">
				<p>
					윤리·청렴·준법 기업문화 확산을 위한 온라인 윤리·청렴·<br>
					준법퀴즈 골든벨 마당입니다. 퀴즈 골든벨 문항 출제 범위는<br>
					행동강령/청탁금지법/자율준수프로그램(cp)에서 엄선된<br>
					문항으로 출제됩니다.
				</p>
			</div>
			<br><br>
			<div class="course">
				<p class="c_img"><img src="<?php echo G5_THEME_URL ?>/_Img/Content/course_img6.jpg" width="237" height="178"></p>
				<ul>
					<li><span class="title">주 제</span>윤리·준법 퀴즈 골든벨</li>
					<li><span class="title">대 상</span>전직원</li>
					<li><span class="title">시 간</span>25분</li>
					<li><span class="title">기 간</span>2020.07.01 - 2020.07.30</li>
					<li><span class="title">마 일 리 지</span>60점</li>
					<li><span class="title">퀴 즈 유 형</span>객관식, OX문제 퀴즈</li>
				</ul>
			</div>
			<p class="btn">
				<a href="#n" class="class-enter"><span>골든벨 START</span></a><a href="#n" class="day-end"><span>행사 기간이 아닙니다.</span></a>
			</p>
			<!-- page-end //--> 
		</div>
    </div>
<?php
include_once(G5_THEME_PATH.'/tail.php');	