<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

/*if (G5_IS_MOBILE) {
    include_once(G5_THEME_MOBILE_PATH.'/index.php');
    return;
}*/

include_once(G5_THEME_PATH.'/head.php');

$lssn_no = trim($lssn);
//현재 과정 학습 정보 가져오기
$userLessData = get_lessonApply($member['mb_id'], $lssn_no);
//학습 정보가 없다면, 새로 생성
if( !$userLessData ) {
	$sql = "insert into {$g5['less_apply_table']} set
			app_lssn_no = '{$lssn_no}',
			app_uid = '{$member['mb_id']}',
			app_rdate = now()";
	sql_query($sql);
}

if (!$sst) {
    $sst = "ls.lssn_rdate";
    $sod = "asc";
}

$sql_where = " where ap.app_uid = '{$member['mb_id']}' and ap.app_lssn_no = '$lssn_no' ";
$sql_order = " order by {$sst} {$sod} ";

$sql = "select ls.*, ap.* 
			from  {$g5['less_apply_table']} as ap 
			left join {$g5['lesson_table']} as ls on( ls.lssn_no = ap.app_lssn_no ) {$sql_where} {$sql_order}";
#echo $sql;
$result = sql_fetch($sql);

#학습평가 점수
$sql = " select qa_pointTotal from {$g5['quiz_answer_table']} 
			where
				qa_quiz_code='{$result['lssn_quiz']}' and 
				qa_uid='{$member['mb_id']}' and qa_end = 'Y'
				order by qa_no desc limit 1";
//echo $sql;
$res = sql_fetch($sql);
$pointTotal = $res['qa_pointTotal'];
?>
	<div id="svisual-wrap">
		<div class="vistxt">
			<p class="btxt"><span>교육마당</span></p>
			<p class="stxt">교육마당은 임직원이 윤리,청렴,준법,인권 등 <br />
			사이버 교육,메시지 교육, 캠페인 교육을 통해<br />
			온라인으로 학습을 수행하기 위한 과정입니다. </p>
		</div>
		<div class="visimg vis01"></div>
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
						<li id="lm02" class='lm_l2'><a href="edu02.php"  class='lm_a2'><span class='isTxt'>메시지 교육</span></a></li>
						<li id="lm03" class='lm_l2'><a href="edu03.php"  class='lm_a2'><span class='isTxt'>캠페인 교육</span></a></li>
						<!--<li id="lm04" class='lm_l2'><a href="edu04.php"  class='lm_a2'><span class='isTxt'>권익위 브리프스</span></a></li>-->
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
			<h3 class="txt_title">나의 학습 진도율</h3>
		<div class="progress-wrap">
			<div class="progress-info">
				<p class="fl"><span>진도율</span> <?php echo get_int2num($userLessData['app_study_rate'])?> %</p>
				<p class="fr"><span>학습평가</span> <?php echo get_int2num($pointTotal)?> 점 </p>
			</div>
		</div>
		
		<div class="gap"></div>
		<h3 class="txt_title">강의목차</h3>
		<table class="tbl-type01">
			<colgroup>
				<col width="7%"/>
				<col width="*"/>
				<col width="14%"/>
				<col width="14%"/>
				<col width="14%"/>
				<col width="14%"/>
			</colgroup>
			<thead>
				<tr>
					<th>차시</th>
					<th>과정제목</th>
					<th>학습시작</th>
					<th>학습종료</th>
					<th>진도율</th>
					<th>학습</th>
				</tr>
			</thead>
			<tbody>
			<?php
			$sql = "select * from {$g5['chapter_table']} where cpt_lesson='$lssn_no' order by cpt_seq asc";
			$cpt_data = sql_query($sql);
			
			for ($i=1; $row=sql_fetch_array($cpt_data); $i++) 
			{
				$sql = "select * from {$g5['chapter_att_table']} where 
							att_uid = '{$member['mb_id']}' and 
							att_lssn_no = '$lssn_no' and 
							att_chapter_no = '{$row['cpt_no']}' and 
							att_contents = '{$row['cpt_contents']}'";
				$att_info = sql_fetch($sql);
				
				if( $att_info ) {
					$att_rate = $att_info['att_study_rate'];
					$att_rate_text = $att_rate."%";
				} else {
					$att_info = "";
					$att_rate ="";
					$att_rate_text = "미진행";
				}
				
				$cpt_study_rate[$i] = $att_info['att_study_rate'];
			?>
				<tr>
					<td><?php echo $i?></td>
					<td><?php echo get_chapterName($row['cpt_contents'])?></td>
					<td><?=substr($result['lssn_sdate'],0,10)?></td>
					<td><?=substr($result['lssn_edate'],0,10)?></td>
					<td><?php echo $att_rate_text?></td>
					<td>
						<a href="#" class="cg-btn active"><span class="enterClass" lno="<?php echo $lssn_no?>" cno="<?php echo $row['cpt_no']?>">학습하기</span></a>
					</td>
				</tr>
			<?php
			}
			?>

			</tbody>
		</table>
		<div class="sssgap"></div>
		<div class="btn-wrap r">
			<p class="info-ex01">*단,  학습기한은 12월31일까지입니다.</p>
			<?php
			if(  $result['app_study_rate'] >= $result['lssn_completerate'] ) {
			?>
			<div class="btn_area">
				<?php
				if( $result['app_evaluation'] == "Y") {
				?>
				<a href="#" class="class-end"><span>응시완료</span></a>
				<?php
				} else {
				?>
				<a href="#" onclick="window.open('/Edu/pop01.php', '_blank', 'top=0,left=0,width=1050,height=750')" class="class-regist "><span>응시하기</span></a>
				<?php
				}
				?>
			</div>
			<?php
			} ?>
		</div>
        
        <!-- page-end //--> 
      </div>
    </div>
	<script src="<?php echo CD_THEME_JS_URL?>/jquery.bpopup.min.js"></script>
	<script src="<?php echo CD_THEME_JS_URL?>/lms.js"></script>
	<style>
		.popup_container{position:absolute;left: 0;top: 0;width: 100%;height: 100%;z-index: 500;background:#fff;}
		.new__pop-close{position:absolute;right: 1em;top: 1em;z-index: 600;background:url('/_Img/Sub/close-x.png') no-repeat center;width: 45px;height: 45px;border: none;}
	</style>
	<!--s: layer-movie(학습 영상) -->
	<div id="popup_win" class="layer-wrap movie" style="width: 100%;height: 100%; left:50%; top:50%;">
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
	<!--e: layer-movie(학습 영상) -->
<?php
include_once(G5_THEME_PATH.'/tail.php');	