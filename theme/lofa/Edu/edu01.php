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

$sql_where = " where lssn_kind = 'LS01' and lssn_view = 'Y' and lssn_company = '".$member['mb_profile']."' ";
$sql_order = " order by lssn_no desc ";
$sql = "select * from  {$g5['lesson_table']} as ls {$sql_where} {$sql_order}";
#echo $sql;
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
						<li id="lm01" class='lm_l2 over'><a href="edu01.php"  class='lm_a2'><span class='isTxt'>사이버 교육</span></a></li>
						<li id="lm02" class='lm_l2'><a href="javascript:;"  class='lm_a2'><span class='isTxt'>메시지 교육</span></a></li>
						<li id="lm03" class='lm_l2'><a href="edu03.php"  class='lm_a2'><span class='isTxt'>캠페인 교육</span></a></li>
						<!-- <li id="lm02" class='lm_l2'><a href="edu02.php"  class='lm_a2'><span class='isTxt'>메시지 교육</span></a></li>
						<li id="lm04" class='lm_l2'><a href="edu04.php"  class='lm_a2'><span class='isTxt'>권익위 브리프스</span></a></li>-->
					</ul>
				</div>
			</div>
			<? include_once(G5_THEME_PATH.'/help.php');?>
		</div>
		<div id="contents">
			<div class="cont-top">
				<h2 class="tit">사이버 교육</h2>
				<ul class="path">
					<li>HOME
					<li>교육마당</li>
					<li>사이버 교육</li>
				</ul>
			</div>
			<!-- page-start // -->
			<?php 
			for ($i=0; $row=sql_fetch_array($result); $i++) 
			{
				//현재 과정 학습 정보 가져오기
				$userLessData = get_lessonApply($member['mb_id'], $row['lssn_no']);
			?>
			<div class="course">
				<p class="c_img"><img src="<?php echo CD_IMG_URL ?>/lssn_img/<?php echo $row['lssn_rimg']?>" width="237" height="178"></p>
				<ul>
					<li><span class="title">과 정 명</span><?php echo $row['lssn_title']?></li>
					<li><span class="title">수 료 조 건</span><?php echo $row['lssn_cond']?></li>
					<li><span class="title">학 습 기 간</span><?php echo $row['lssn_sdate']?>~<?php echo $row['lssn_edate']?></li>
					<li><span class="title">학 습 시 간</span><?php echo $row['lssn_time']?></li>
					<li><span class="title">마일리지 점수</span><?php echo $row['lssn_point']==0?'미반영':$row['lssn_point'].' 점' ?></li>
					<li><span class="title">시 스 템 환 경</span>Window10 이상, Internet Explorer11 이상, Chrome 최신버전 이상</li>
				</ul>
			</div>
			<p class="btn">
			<?php
				$tempSday = $row['lssn_sdate'] . " 06:00";
				$tempEday = $row['lssn_edate'];
				if(!($tempSday <= G5_TIME_YMDHIS && strtotime(G5_TIME_YMDHIS) < strtotime($tempEday."+1 day")))
				{
			?>
				<a href="#n" class="day-end class-enter"><span>학습기간이 아닙니다. </span></a>
			<?php
				} 
				else 
				{
					if(get_int2num($userLessData['app_study_rate']) == 100)
					{
			?>
					<a href="#n" class="class-enter type-end"><span>학습완료</span></a>
			<?php
					}
					else
					{
			?>
					<a href="class.php?lssn=<?php echo $row['lssn_no']?>" class="class-enter"><span>학습하기</span></a>
			<?php
					}
				}
			?>
			</p>
			<div class="sgap"></div>
			<?php 
			}
			?>
			<!--<p class="txt_title2">협력사 윤리·청렴 사이버 교육</p>
			<div class="course">
			  <p class="c_img"><img src="<?php echo G5_THEME_URL ?>/_Img/Content/course_img4.png" width="237" height="178"></p>
			  <ul>
				<li><span class="title">과 정 명</span>아름다운 동행을 위한 윤리경영 및 청탁금지법 이해와 실천</li>
				<li><span class="title">수 료 조 건</span>진도 100%, 시험 60점이상 (점수미달 재시험 1회)</li>
				<li><span class="title">학 습 기 간</span>2019.09.01-2019.11.30 (미수료자 3일 연장)</li>
				<li><span class="title">학 습 시 간</span>4시간</li>
				<li><span class="title">마일리지 점수</span>30점</li>
				<li><span class="title">시 스 템 환 경</span>Window10 이상, Internet Explorer11 이상, Chrome 최신버전 이상</li>
			  </ul>
			</div>
			<p class="btn">
				<a href="#n" class="day-end"><span>학습기간이 아닙니다. </span></a>
				<a href="edu01_03.php" class="class-end"><span>학습하기</span></a>
				<a href="#n" class="class-enter"><span>학습완료</span></a>
			</p>-->
        
        <!-- page-end //--> 
      </div>
    </div>
	
	<!-- 10.04 숨기는 스크립트 -->
	<script>
		document.addEventListener("DOMContentLoaded", function(){
			document.getElementsByClassName('txt_title')[1].style.display = "none"
			document.getElementsByClassName('edu-wrap')[1].style.display = "none"
		});
	</script>
<?php
include_once(G5_THEME_PATH.'/tail.php');	