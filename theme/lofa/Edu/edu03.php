<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

/*if (G5_IS_MOBILE) {
    include_once(G5_THEME_MOBILE_PATH.'/index.php');
    return;
}*/

include_once(G5_THEME_PATH.'/head.php');

if (!$sst) {
    $sst = "ls.lssn_no";
    $sod = "asc";
}

$page = 1;
if(!isset($_GET['page'])) {
	$page = 1;
} else {
	$page = $_GET['page'];
}

$rows = $page - 1;
$limit = 1;

$sql_where = " where lssn_kind = 'LS03'  and lssn_company = '".$member['mb_profile']."' ";
$sql_order = " order by {$sst} {$sod} ";

$sql = "select * from  {$g5['lesson_table']} as ls {$sql_where} {$sql_order} limit {$rows}, {$limit}";
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
						<!-- 메시지 교육 링크 풀기 -->
						<!-- <li id="lm02" class='lm_l2'><a href="edu02.php"  class='lm_a2'><span class='isTxt'>메시지 교육</span></a></li> -->
						<li id="lm02" class='lm_l2'><a href="javascript:;"  class='lm_a2'><span class='isTxt'>메시지 교육</span></a></li>
						<li id="lm03" class='lm_l2 over'><a href="edu03.php"  class='lm_a2'><span class='isTxt'>캠페인 교육</span></a></li>
					</ul>
				</div>
			</div>
			<? include_once(G5_THEME_PATH.'/help.php');?>
		</div>
		<div id="contents">
			<div class="cont-top">
				<h2 class="tit">캠페인 교육</h2>
				<ul class="path">
					<li>HOME
					<li>교육마당</li>
					<li>캠페인 교육</li>
				</ul>
			</div>
			<!-- page-start // -->
			<div class="tab_menu">
				<ul>
					<li class="on" style="width: 100%;"><a href="edu03.php">윤리경영 실천 캠페인 메시지</a></li>
				</ul>
				<p class="info_v2">윤리경영 실천 캠페인 메시지는  1.직무윤리 영상 메시지,&nbsp;&nbsp; 2.윤리 퀴즈,&nbsp;&nbsp; 3.윤리 웹툰,&nbsp;&nbsp; 4.윤리 이야기 등<br>
				                   최소4단계 형식으로 제공되는 과정입니다. </p>
			</div>
						<!-- 인 메시지  { -->
			<div class="course2-top">
			<?php for($j=1; $j<=12; $j++) {
				$p = $j-1;
				$is = 'background:#fff;border-radius:5px;';
				$sql_cnt = "
				
				SELECT lssn_no,
				(SELECT end_dt FROM  cd_lms_lesson_result WHERE lssn_no = a.lssn_no AND mb_id = '".$member['mb_id']."' limit 1) AS end_dt,
				(SELECT mb_id FROM  cd_lms_lesson_result WHERE lssn_no = a.lssn_no AND mb_id = '".$member['mb_id']."' limit 1) AS mb_id
				FROM cd_lms_lesson AS a
				where lssn_kind = 'LS03' and lssn_company = '".$member['mb_profile']."' 
				order by lssn_no ASC LIMIT ".$p." ,1 ";
				$result_cnt = sql_fetch($sql_cnt);

				
				if(isset($result_cnt['mb_id']) && ($_SERVER[ "PHP_SELF" ] == '/Edu/edu03_ls.php' || $_SERVER[ "PHP_SELF" ] == '/Edu/edu03_sj.php')) {
					$is = 'background:#a8eba8;border-radius:5px; color:#000;';
				}
				if(isset($result_cnt['mb_id']) && isset($result_cnt['end_dt'])) {
					$is = 'background:#32CD32;border-radius:5px;';
if( ($_SERVER[ "PHP_SELF" ] == '/Edu/edu03_ls.php' || $_SERVER[ "PHP_SELF" ] == '/Edu/edu03_sj.php')) {
		$is = 'background-color: #113063; border-radius:5px; color:#fff;';
}
					
				}
#				$is = '';
#				echo $result_cnt['idx'];
				
				
				
				
				?>
				<button type="button" style="box-shadow: inset 0 -6px 7px rgba(47, 139, 139, .2); <?php if($j != $page) {echo $is; } else {echo $is; } ?>" onclick="location.href='?page=<?php echo $j?>';" class="btn <?php if($j == $page) echo 'active' ?>"><?php echo $j?></button>
			<?php } ?>
			</div>
			<?php 
			for ($i=0; $row=sql_fetch_array($result); $i++) {
				
			?>



			<div class="course2 flex">
					<div class="chasi"><?php echo ($rows * $limit ) + $i + 1 ?>회차</div>
					<p class="c_img2"><img src="<?php echo CD_IMG_URL ?>/lssn_img/<?php echo $row['lssn_rimg']?>" width="215"></p>
					<ul class="edu_gap10">
				    <li><span class="title">주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;제</span><?php echo $row['lssn_title']?></li>
					<li><span class="title">학습시간</span>5분</li>
                    <li><span class="title">학습기간</span><?php echo $row['lssn_sdate']?> ~ <?php echo $row['lssn_edate']?></li>
                    <li><span class="title">마일리지</span>10점</li>
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
				<a href="#" class="class-enter"><span class="enterClass3" lno="<?php echo $row['lssn_no']?>">학습하기</span></a>
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