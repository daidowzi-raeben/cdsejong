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

$sql_where = " where lssn_kind = 'LS12' ";
$sql_order = " order by {$sst} {$sod} ";

$sql = "select * from  {$g5['lesson_table']} as ls {$sql_where} {$sql_order}";
//echo $sql;
$result = sql_query($sql);
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
						<li id="lm02" class='lm_l2 over'><a href="edu02.php"  class='lm_a2'><span class='isTxt'>메시지 교육</span></a></li>
						<li id="lm03" class='lm_l2'><a href="edu03.php"  class='lm_a2'><span class='isTxt'>캠페인 교육</span></a></li>
						<!--<li id="lm04" class='lm_l2'><a href="edu04.php"  class='lm_a2'><span class='isTxt'>권익위 브리프스</span></a></li>-->
					</ul>
				</div>
			</div>
			<? include_once(G5_THEME_PATH.'/help.php');?>
		</div>
		<div id="contents">
			<div class="cont-top">
				<h2 class="tit">메시지 교육</h2>
				<ul class="path">
					<li>HOME
					<li>교육마당</li>
					<li>메시지 교육</li>
				</ul>
			</div>
			<!-- page-start // -->
			<div class="tab_menu">
				<ul>
					<li><a href="edu02.php">윤리경영 영상 메시지</a></li>
					<li class="on"><a href="edu02_02.php">청렴 영상 메시지</a></li>
					<li><a href="edu02_03.php">괴롭힘 방지법 및 예방 메시지</a></li>
				</ul>
				<p class="info_v3">청렴영상 메시지는 청탁금지법 위반사례, 청탁금지법 판결사례, 국내 청렴 활동 실천사례등을<br>
				감성, 공감 과 재미 형식을 갖추고 지루하지 않게 짧고 임팩트 있는 메시지 형태로 제공되는 과정입니다.</p>
			</div>
			<?php 
			for ($i=0; $row=sql_fetch_array($result); $i++) {
			?>
			<div class="course2">
				<p class="c_img2"><img src="<?php echo G5_THEME_URL ?>/_Img/Content/course_img.jpg" width="215"></p>
				<ul class="edu_gap10">
					<li><span class="title">주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;제</span><?php echo $row['lssn_title']?></li>
					<li><span class="title">학습기간</span><?php echo $row['lssn_sdate']?> ~ <?php echo $row['lssn_edate']?></li>
					<li><span class="title">마일리지</span>50점</li>
					<li><span class="title">기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;타</span><?php echo $row['lssn_intro']?></li>
				</ul>
			</div>
			<p class="btn">
			<?php
				$tempSday = $row['lssn_sdate'];
				$tempEday = $row['lssn_edate'];
				if(!($tempSday <= G5_TIME_YMDHIS && strtotime(G5_TIME_YMDHIS) < strtotime($tempEday."+1 day")))
				{
			?>
				<a href="#n" class="day-end"><span>학습기간이 아닙니다. </span></a>
			<?php
				} else {
			?>
				<a href="#" class="class-enter"><span class="enterClass2" lno="<?php echo $row['lssn_no']?>">학습하기</span></a>
			<?php
				}
			?>
				<!--<a href="#n" class="class-end"><span>학습완료</span></a>-->
			</p>
			<div class="sgap"></div>			
			<?php 
			}
			?>
        <!-- page-end //--> 
		</div>
		<script src="<?php echo CD_THEME_JS_URL?>/jquery.bpopup.min.js"></script>
		<script src="<?php echo CD_THEME_JS_URL?>/lms.js"></script>
		<style>
			.popup_container{position:absolute;left: 0;top: 0;width: 100%;height: 100%;z-index: 500;background:#fff;}
			.new__pop-close{position:absolute;right: 1em;top: 1em;z-index: 600;background:url('/_Img/Sub/close-x.png') no-repeat center;width: 45px;height: 45px;border: none;}
		</style>
		<!--s: layer-movie(학습 영상) -->
		<div id="popup_win" class="layer-wrap movie" style="left:50%; top:50%;">
			<div class="is-top" style="padding: 0;">
				<h2>학습평가</h2>
				<a href="#n" class="close b-close"><span class="blind">닫기기</span></a>
			</div>
			<div class="is-con">
				<div class="movie">
					<div class="popup_container movie" id="popup_container">
				
					</div>
				</div>
			</div>
		</div>
    </div>
<?php
include_once(G5_THEME_PATH.'/tail.php');	