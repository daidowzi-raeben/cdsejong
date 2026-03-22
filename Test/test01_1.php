<?php
include_once('./_common.php');
?>
<!doctype html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge"><!--ie 최상위버전 -->
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0 ,maximum-scale=1.0, minimum-scale=1.0,user-scalable=no,target-densitydpi=medium-dpi"> -->
	<title>세종교육원</title>
	<link type="text/css" rel="stylesheet" media="all" href="<?php echo CD_THEME_CSS_URL?>/common.css" />
	<link type="text/css" rel="stylesheet" media="all" href="<?php echo CD_THEME_CSS_URL?>/styleDefault.css" />
	<link type="text/css" rel="stylesheet" media="all" href="<?php echo CD_THEME_CSS_URL?>/layout.css" />
	<link type="text/css" rel="stylesheet" media="all" href="<?php echo CD_THEME_CSS_URL?>/content.css" />

	<link rel="stylesheet" href="<?php echo CD_THEME_JS_URL?>/jquery/animate.css">
	<link rel="stylesheet" href="<?php echo CD_THEME_JS_URL?>/jquery/slick-theme.css">
	<link rel="stylesheet" href="<?php echo CD_THEME_JS_URL?>/jquery/slick.css">

	<script type="text/javascript" src="<?php echo CD_THEME_JS_URL?>/jquery/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="<?php echo CD_THEME_JS_URL?>/jquery/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="<?php echo CD_THEME_JS_URL?>/jquery/owl.carousel.js"></script>
	<script type="text/javascript" src="<?php echo CD_THEME_JS_URL?>/jquery/jquery.mousewheel.js"></script>
	<script type="text/javascript" src="<?php echo CD_THEME_JS_URL?>/jquery/slick.js"></script>
	<script type="text/javascript" src="<?php echo CD_THEME_JS_URL?>/topmenu.js"></script>
	<script type="text/javascript" src="<?php echo CD_THEME_JS_URL?>/defalut.js"></script>
	<script type="text/javascript" src="<?php echo CD_THEME_JS_URL?>/common.js"></script>

	<script type="text/javascript" src="<?php echo CD_THEME_JS_URL?>/sub.js"></script>
</head>

<body id="sub">
	<div id="skipNavi">
		<h1 class="blind">세종교육원 스킵네비게이션</h1>
		<ul>
			<li><a href="#contents" class="skipLink">본문바로가기</a></li>
			<li><a href="#topmenu" class="skipLink">주메뉴바로가기</a></li>
		</ul>
	</div>
	<!-- s: #doc //-->
	<div id="doc" class="isPage">
		<!-- s : header-wrap -->
		<header id="header-wrap">
			<div id="header" class="header div-cont">
				<div id="logo"><a href="/"><span class="blind">세종교육원</span></a></div>
				<div id="mainNavi-wrap">
					<h2 class="blind">세종교육원</h2>
					<div id="mainNavi">
						<ul class="topmenu" id="topmenu">
							<li id="tm01" class="mn_l1 mn_type">
								<a href="/Test/test01.php" class="mn_a1"><span class="mn_s1">진단마당</span></a>
								<div class="depth2-wrap">
									<ul class='depth2'>
										<!--<li id="tm0101" class="mn_l2"><a href="/Test/test01.php" class="mn_a2" target="_self"><span class="txt">윤리의식 자가(자율)점검
</span></a></li>-->
										<li id="tm0102" class="mn_l2"><a href="/Test/test02.php" class="mn_a2"
												target="_self"><span class="txt">윤리경영 의식수준 진단
												</span></a></li>
										<li id="tm0103" class="mn_l2"><a href="/Test/test03.php" class="mn_a2"
												target="_self"><span class="txt">직장 내 괴롭힘 설문조사</span></a></li>
										<li id="tm0104" class="mn_l2"><a href="/Test/test04.php" class="mn_a2"
												target="_self"><span class="txt">인권의식 인식도 설문조사</span></a></li>
									</ul>
								</div>
							</li>
							<li id="tm02" class="mn_l1 mn_type ">
								<a href="/Edu/edu01.php" class="mn_a1"><span class="mn_s1">교육마당</span></a>
								<div class="depth2-wrap">
									<ul class='depth2'>
										<li id="tm0201" class="mn_l2"><a href="/Edu/edu01.php" class="mn_a2"
												target="_self"><span class="txt">사이버 교육</span></a></li>
										<li id="tm0202" class="mn_l2"><a href="/Edu/edu02.php" class="mn_a2"
												target="_self"><span class="txt">메시지 교육</span></a></li>
										<li id="tm0203" class="mn_l2"><a href="/Edu/edu03.php" class="mn_a2"
												target="_self"><span class="txt">캠페인 교육</span></a></li>
										<li id="tm0204" class="mn_l2"><a href="/Edu/edu04.php" class="mn_a2"
												target="_self"><span class="txt">권위익 브리프스</span></a></li>
									</ul>
								</div>
							</li>
							<li id="tm03" class="mn_l1 mn_type ">
								<a href="/Join/join01.php" class="mn_a1"><span class="mn_s1">참여마당</span></a>
								<div class="depth2-wrap">
									<ul class='depth2'>
										<li id="tm0301" class="mn_l2"><a href="/Join/join01.php" class="mn_a2"
												target="_self"><span class="txt">커뮤니티</span></a></li>
										<li id="tm0302" class="mn_l2"><a href="/Join/join02.php" class="mn_a2"
												target="_self"><span class="txt">퀴즈 골든벨</span></a></li>
										<li id="tm0303" class="mn_l2"><a href="/Join/join03.php" class="mn_a2"
												target="_self"><span class="txt">웨비나</span></a></li>
									</ul>
								</div>
							</li>
							<li id="tm04" class="mn_l1 mn_type ">
								<a href="/Mileage/mileage03.php" class="mn_a1"><span class="mn_s1">순위마당</span></a>
								<div class="depth2-wrap">
									<ul class='depth2'>
										<li id="tm0403" class="mn_l2"><a href="/Mileage/mileage03.php" class="mn_a2"
												target="_self"><span class="txt">실천활동순위</span></a></li>
										<li id="tm0401" class="mn_l2"><a href="/Mileage/mileage01.php" class="mn_a2"
												target="_self"><span class="txt">나의 마일리지 점수</span></a></li>
										<li id="tm0402" class="mn_l2"><a href="/Mileage/mileage02.php" class="mn_a2"
												target="_self"><span class="txt">마일리지 정책기준</span></a></li>
									</ul>
								</div>
							</li>
							<li id="tm05" class="mn_l1 mn_type ">
								<a href="/Certify/certify01.php" class="mn_a1"><span class="mn_s1">수료마당</span></a>
								<div class="depth2-wrap">
									<ul class='depth2'>
										<li id="tm0501" class="mn_l2"><a href="/Certify/certify01.php" class="mn_a2"
												target="_self"><span class="txt">수료증 발급</span></a></li>
									</ul>
								</div>
							</li>
							<li id="tm06" class="mn_l1 mn_type ">
								<a href="/Service/service01.php" class="mn_a1"><span class="mn_s1">지원마당</span></a>
								<div class="depth2-wrap">
									<ul class='depth2'>
										<li id="tm0601" class="mn_l2"><a href="/Service/service01.php" class="mn_a2"
												target="_self"><span class="txt">공지사항</span></a></li>
										<li id="tm0602" class="mn_l2"><a href="/Service/service02.php" class="mn_a2"
												target="_self"><span class="txt">자료실</span></a></li>
										<li id="tm0603" class="mn_l2"><a href="/Service/service03.php" class="mn_a2"
												target="_self"><span class="txt">FAQ</span></a></li>
									</ul>
								</div>
							</li>
						</ul>
						<script type='text/javascript'>initNavigation(0, 0)</script>
					</div>
				</div>
			</div>
			<!--  <span class="mn-bar"></span>-->
		</header>
		<!-- e : header-wrap -->
		<!-- s: #container-wrap //-->
		<div id="container-wrap" class="scontainer">
			<div class="login-sub logout">
				<p class="info">홍길동님 환영합니다. </p>
				<a href="#n" class="modify-btn"><span>내 정보수정</span></a>
				<a href="#n" class="logout-btn"><span>로그아웃</span></a>
				<!-- <a href="#n" class="login-btn"><span>로그인</span></a> -->
			</div>
			<div id="svisual-wrap">
				<div class="vistxt">
					<p class="btxt"><span>진단마당</span></p>
					<p class="stxt">진단마당은 임직원의 내부청렴도 조사, <br />윤리의식 자율진단,윤리경영 의식수준 조사 등 주로<br />내부 임직원을 대상으로 진단을 수행하는
						과정입니다. </p>
				</div>
				<div class="visimg vis01"></div>
			</div>
			<div class="content-ov">
				<div id="subNavi-wrap">
					<div id="subNavi">
						<div class="lm-tit">
							<div class="tit">
								<p class="btxt">test section</p>
								<p class="stxt">진단마당</p>
							</div>
						</div>
						<div class="leftmenu" id="leftmenu">
							<ul class="depth2">
								<li id="lm01" class='lm_l2 over'><a href="test01.php" class='lm_a2'><span
											class='isTxt'>윤리의식 자가(자율)점검</span></a></li>
								<li id="lm02" class='lm_l2'><a href="test02.php" class='lm_a2'><span class='isTxt'>윤리경영
											의식수준 진단</span></a></li>
								<li id="lm03" class='lm_l2'><a href="test03.php" class='lm_a2'><span class='isTxt'>직장 내
											괴롭힘 설문조사</span></a></li>
								<li id="lm04" class='lm_l2'><a href="test04.php" class='lm_a2'><span class='isTxt'>인권의식
											인식도 설문조사</span></a></li>
							</ul>
						</div>
					</div>
					<?php include_once('../_Inc/helpInc.php'); ?>
				</div>
				<div id="contents">
					<div class="cont-top">
						<h2 class="tit">윤리의식 자가(자율)점검</h2>
						<ul class="path">
							<li>HOME</li>
							<li>진단마당</li>
							<li>윤리의식 자가(자율)점검</li>
						</ul>
					</div>
					<!-- page-start // -->
					<p><img src="../_Img/Content/test02_02.jpg" alt="" width="800" height="592" usemap="#Map"
							border="0">
						<map name="Map" id="Map">
							<area shape="rect" coords="525,246,752,308" href="#"
								onClick="window.open('dist/report.html','_blank','left=1,top=1,toolbar=no,location=no,status=yes,menubar=no,scrollbars=yes,resizable=no,width=900,height=800')"
								onfocus="this.blur()" alt="자가진단 시작하기" />
						</map>
					</p>



					<!-- page-end //-->
				</div>
			</div>
		</div>
		<!-- e: #container-wrap //-->
		<footer class="div-wrap footer-wrap" id="footer-wrap">
			<div id="footer" class="div-cont">
				<div id="f-logo"><span class="blind">세종교육원</span></div>
				<div id="f-info">
					<p>사회적 가치 창출 을 위한 윤리ᆞ청렴 ᆞ준법ᆞ인권 교육 토탈 시스템</p>
					<p>Copyright © Since 2012 SEJONG Education Institute Inc. </p>
					<p>All rights reserved by CleanDESK</p>
				</div>
				<div id="f-btn"><a href="#"><span class="blind">원격지원</span></a></div>
			</div>
		</footer>
	</div>
</body>

</html>