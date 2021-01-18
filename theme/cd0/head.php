<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

if (G5_IS_MOBILE) {
    include_once(G5_THEME_MOBILE_PATH.'/head.php');
    return;
}

include_once(G5_THEME_PATH.'/head.sub.php');
include_once(G5_LIB_PATH.'/latest.lib.php');
include_once(G5_LIB_PATH.'/outlogin.lib.php');
include_once(G5_LIB_PATH.'/poll.lib.php');
include_once(G5_LIB_PATH.'/visit.lib.php');
include_once(G5_LIB_PATH.'/connect.lib.php');
include_once(G5_LIB_PATH.'/popular.lib.php');
?>

<header id="header-wrap">
<div id="header" class="header div-cont">
	<div id="logo"><a href="/"><span class="blind">세종교육원</span></a></div>
	<div id="mainNavi-wrap" >
		<h2 class="blind">세종교육원</h2>
		<div id="mainNavi">
			<ul class="topmenu" id="topmenu">
				<li id="tm01" class="mn_l1 mn_type">
					<a href="/Test/test01.php" class="mn_a1"><span class="mn_s1">진단마당</span></a>
					<div class="depth2-wrap"> 
						<ul class='depth2'>
							<li id="tm0101" class="mn_l2"><a href="/Test/test01.php" class="mn_a2" target="_self"><span class="txt">윤리 의식수준 지수 진단</span></a></li>
							<li id="tm0102" class="mn_l2"><a href="/Test/test02.php" class="mn_a2" target="_self"><span class="txt">윤리 실천자가 진단</span></a></li>
                                                        <li id="tm0103" class="mn_l2"><a href="/Test/test03.php" class="mn_a2" target="_self"><span class="txt">직장 내 괴롭힘 설문조사</span></a></li>
                                                        <li id="tm0104" class="mn_l2"><a href="/Test/test04.php" class="mn_a2" target="_self"><span class="txt">인권의식 인식도 설문조사</span></a></li>
						</ul>
					</div>
				</li>
				<li id="tm02" class="mn_l1 mn_type ">
					<a href="/Edu/edu01.php" class="mn_a1"><span class="mn_s1">교육마당</span></a>
					<div class="depth2-wrap">
						<ul class='depth2'>
							<li id="tm0201" class="mn_l2"><a href="/Edu/edu01.php" class="mn_a2" target="_self"><span class="txt">사이버 교육</span></a></li>
							<li id="tm0202" class="mn_l2"><a href="/Edu/edu02.php" class="mn_a2" target="_self"><span class="txt">메시지 교육</span></a></li>
							<li id="tm0203" class="mn_l2"><a href="/Edu/edu03.php" class="mn_a2" target="_self"><span class="txt">캠페인 교육</span></a></li>
							<li id="tm0204" class="mn_l2"><a href="/Edu/edu04.php" class="mn_a2" target="_self"><span class="txt">권위익 브리프스</span></a></li>
						</ul>
					</div>
				</li>
				<li id="tm03" class="mn_l1 mn_type ">
					<a href="/Join/join01.php" class="mn_a1"><span class="mn_s1">참여마당</span></a>
					<div class="depth2-wrap"> 
						<ul class='depth2'>
							<li id="tm0301" class="mn_l2"><a href="/Join/join01.php" class="mn_a2" target="_self"><span class="txt">커뮤니티</span></a></li>
							<li id="tm0302" class="mn_l2"><a href="/Join/join02.php" class="mn_a2" target="_self"><span class="txt">퀴즈 골든벨</span></a></li>
							<li id="tm0303" class="mn_l2"><a href="/Join/join03.php" class="mn_a2" target="_self"><span class="txt">웨비나</span></a></li>
						</ul>
					</div>
				</li>
				<li id="tm04" class="mn_l1 mn_type ">
					<a href="/Mileage/mileage03.php" class="mn_a1"><span class="mn_s1">순위마당</span></a>
					<div class="depth2-wrap"> 
						<ul class='depth2'>
                                                        <li id="tm0403" class="mn_l2"><a href="/Mileage/mileage03.php" class="mn_a2" target="_self"><span class="txt">실천활동순위</span></a></li>
							<li id="tm0401" class="mn_l2"><a href="/Mileage/mileage01.php" class="mn_a2" target="_self"><span class="txt">나의 마일리지 점수</span></a></li>
							<li id="tm0402" class="mn_l2"><a href="/Mileage/mileage02.php" class="mn_a2" target="_self"><span class="txt">마일리지 정책기준</span></a></li>
						</ul>
					</div>
				</li>
				<li id="tm05" class="mn_l1 mn_type ">
					<a href="/Certify/certify01.php" class="mn_a1"><span class="mn_s1">수료마당</span></a>
					<div class="depth2-wrap"> 
						<ul class='depth2'>
							<li id="tm0501" class="mn_l2"><a href="/Certify/certify01.php" class="mn_a2" target="_self"><span class="txt">수료증 발급</span></a></li>
						</ul>
					</div>
				</li>
				<li id="tm06" class="mn_l1 mn_type ">
					<a href="/Service/service01.php" class="mn_a1"><span class="mn_s1">지원마당</span></a>
					<div class="depth2-wrap"> 
						<ul class='depth2'>
							<li id="tm0601" class="mn_l2"><a href="/Service/service01.php" class="mn_a2" target="_self"><span class="txt">공지사항</span></a></li>
							<li id="tm0602" class="mn_l2"><a href="/Service/service02.php" class="mn_a2" target="_self"><span class="txt">자료실</span></a></li>
							<li id="tm0603" class="mn_l2"><a href="/Service/service03.php" class="mn_a2" target="_self"><span class="txt">FAQ</span></a></li>
						</ul>
					</div>
				</li>
			</ul>
			<script type='text/javascript'>initNavigation(0,0)</script> 
		</div>
	</div>
</div>
 <!--  <span class="mn-bar"></span>-->
</header>
	<!-- s: #container-wrap //-->
	<div id="container-wrap"  class="div-wrap mcontainer" >
		<div id="contents" class="div-cont">