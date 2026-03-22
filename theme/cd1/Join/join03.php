<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

/*if (G5_IS_MOBILE) {
    include_once(G5_THEME_MOBILE_PATH.'/index.php');
    return;
}*/

include_once(G5_THEME_PATH.'/head.php');

if (!$sst) {
    $sst = "ls.lssn_rdate";
    $sod = "asc";
}

$sql_where = " where lssn_kind = 'LS04' and lssn_view = 'Y' ";
$sql_order = " order by {$sst} {$sod} ";

$sql = "select * from  {$g5['lesson_table']} as ls {$sql_where} {$sql_order}";
//echo $sql;
$result = sql_query($sql);
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
						<li id="lm02" class='lm_l2'><a href="join02.php"  class='lm_a2'><span class='isTxt'>퀴즈 골든벨</span></a></li>
						<li id="lm03" class='lm_l2 over'><a href="join03.php"  class='lm_a2'><span class='isTxt'>웨비나</span></a></li>
					</ul>
				</div>
			</div>
			<? include_once(G5_THEME_PATH.'/help.php');?>
		</div>
		<div id="contents">
			<div class="cont-top">
				<h2 class="tit">웨비나</h2>
				<ul class="path">
					<li>HOME
					<li>참여마당</li>
					<li>웨비나</li>
				</ul>
			</div>
			<!-- page-start // -->
			<div class="join-top webina">
				<p>
					당사에서 제공하는 웨비나 윤리·청렴·준법 전문 강사진이<br>
					실시간 녹화 혹은 녹화된 내용을 비실시간으로<br>
					제공하는 코너 입니다.
				</p>
			</div>
			<br><br>
			<?php 
			for ($i=0; $row=sql_fetch_array($result); $i++) {
			?>
			<div class="course">
				<p class="c_img"><img src="<?php echo G5_THEME_URL ?>/_Img/Content/course_img5.jpg" width="237" height="178"></p>
				<ul>
					<li><span class="title">주 제</span><?php echo $row['lssn_title']?></li>
					<li><span class="title">일 정</span><?php echo $row['lssn_sdate']?> ~ <?php echo $row['lssn_edate']?></li>
					<li><span class="title">시 간</span><?php echo $row['lssn_allowtime']?>분</li>
					<li><span class="title">세 미 나 유 형</span><span><label for="gender-01">실시간</label></span></li>
					<li><span class="title">마 일 리 지</span><?php echo $row['lssn_point']?>점</li>
					<li><span class="title">기 타</span><?php echo $row['lssn_intro']?></li>
				</ul>
			</div>
			<p class="btn">
			<?php
				$tempSday = $row['lssn_sdate'];
				$tempEday = $row['lssn_edate'];
				if(!($tempSday <= G5_TIME_YMDHIS && strtotime(G5_TIME_YMDHIS) < strtotime($tempEday."+1 day")))
				{
			?>
				<a href="#n" class="day-end"><span>참여기간이 아닙니다. </span></a>
			<?php
				} else {
			?>
				<a href="<?php echo $row['lssn_url']?>" class="class-enter" target="_blank"><span lno="<?php echo $row['lssn_no']?>">참여하기</span></a>
			<?php
				}
			?>
			<!--<a href="#n" class="class-end"><span>참여완료</span></a>-->
			</p>
			<div class="sgap"></div>	
			<?php 
			}
			?>
			<!-- page-end //--> 
		</div>
    </div>
<?php
include_once(G5_THEME_PATH.'/tail.php');	