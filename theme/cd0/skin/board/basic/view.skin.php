<?php
if (!defined("_GNUBOARD_")) exit; // 개별 페이지 접근 불가
include_once(G5_LIB_PATH.'/thumbnail.lib.php');

// add_stylesheet('css 구문', 출력순서); 숫자가 작을 수록 먼저 출력됨
add_stylesheet('<link rel="stylesheet" href="'.$board_skin_url.'/style.css">', 0);
?>

<script src="<?php echo G5_JS_URL; ?>/viewimageresize.js"></script>

<div id="svisual-wrap">
	<div class="vistxt">
		<p class="btxt"><span>지원마당</span></p>
		<p class="stxt">지원마당은 임직원 온라인 교육 포털 사이트에서 <br />학습 활동을  보다 수월하게 수행 할 수 있도록<br />공지사항 및 자료를 지원하는  과정입니다. </p>
	</div>
	<div class="visimg vis06"></div>
</div>
<div class="content-ov">
	<div id="subNavi-wrap">
		<div id="subNavi">
			<div class="lm-tit">
				<div class="tit">
					<p class="btxt">Service section</p>
					<p class="stxt">지원마당</p>
				</div>
			</div>		
			<div class="leftmenu" id="leftmenu">
				<ul class="depth2">
					<li id="lm01" class='lm_l2<?php echo $board['bo_subject']=="공지사항"? " over" : ""; ?>'><a href="<?php echo G5_BBS_URL?>/board.php?bo_table=notice"  class='lm_a2'><span class='isTxt'>공지사항</span></a></li>
					<li id="lm02" class='lm_l2<?php echo $board['bo_subject']=="자료실"? " over" : ""; ?>'><a href="<?php echo G5_BBS_URL?>/board.php?bo_table=archv"  class='lm_a2'><span class='isTxt'>자료실</span></a></li>
					<li id="lm03" class='lm_l2<?php echo $board['bo_subject']=="FAQ"? " over" : ""; ?>'><a href="<?php echo G5_BBS_URL?>/board.php?bo_table=qa"  class='lm_a2'><span class='isTxt'>FAQ</span></a></li>
				</ul>
			</div>
		</div>
		<? include_once(G5_THEME_PATH.'/help.php');?>
	</div>
	<div id="contents">
		<div class="cont-top">
			<h2 class="tit"><?php echo $board['bo_subject'] ?></h2>
			<ul class="path">
				<li>HOME
				<li>지원마당</li>
				<li><?php echo $board['bo_subject'] ?></li>
			</ul>
		</div>
		<!-- page-start // -->
		<div class="board-view-wrap">
			<span class="bd-line"></span>
			<table>
				<caption><span class="blind"><?php echo cut_str(get_text($view['wr_subject']), 70); // 글제목 출력 ?> 상세 글 입니다.</span></caption>
				<thead>
					<tr>
						<th>
							<p class="btxt"><?php echo cut_str(get_text($view['wr_subject']), 70); // 글제목 출력 ?></p>
							<span><strong>작성자</strong> : <?php echo $view['name'] ?></span>
							<span><strong>작성일자</strong> : <?php echo date("Y-m-d H:i", strtotime($view['wr_datetime'])) ?></span>
							<span><strong>조회수</strong> : <?php echo number_format($view['wr_hit']) ?></span>
						</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$cnt = 0;
					if ($view['file']['count']) {
						for ($i=0; $i<count($view['file']); $i++) {
							if (isset($view['file'][$i]['source']) && $view['file'][$i]['source'])
								$cnt++;
						}
					}
					?>
					<?php if($cnt) { ?>
					<!-- 첨부파일 시작 { -->
					<?php
					// 가변 파일
					for ($i=0; $i<count($view['file']); $i++) {
						if (isset($view['file'][$i]['source']) && $view['file'][$i]['source']) {
					?>
					<tr>
						<td>
							<strong class="file-btxt">첨부파일 :</strong>
							<a href="<?php echo $view['file'][$i]['href'];  ?>" class="file-add"><span><?php echo $view['file'][$i]['source'] ?></span></a>
							<?php
							// 파일 출력
							$v_img_count = count($view['file']);
							if($v_img_count) {
								echo "<div id=\"bo_v_img\">\n";

								for ($i=0; $i<=count($view['file']); $i++) {
									if ($view['file'][$i]['view']) {
										//echo $view['file'][$i]['view'];
										echo get_view_thumbnail($view['file'][$i]['view']);
									}
								}

								echo "</div>\n";
							}
							?>
						</td>
					</tr>
					<?php
							}
						}
					?>
					<!-- } 첨부파일 끝 -->
					<?php } ?>
					<tr>
						<td colspan="2" class="editor-data-box">
							<?php echo get_view_thumbnail($view['content']); ?>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="ssgap"></div>
			<div class="r">
				<a href="<?php echo $list_href ?>" class="bw-btn"><span>목록</span></a>
			</div>
			<div class="ssgap"></div>
			<?php if ($prev_href || $next_href) { ?>
			<ul class="np-page">
				<?php 
				if ($prev_href) { ?>
				<li>
					<a class="first">이전글&nbsp;<span class="f9">▲</span></a>
					<a href="<?php echo $prev_href ?>" class="ellipsis">
						<span><?php echo $prev_wr_subject;?></span>
					</a>
				</li>
				<?php } 
				if ($next_href) { ?>
				<li>
					<a class="first">다음글&nbsp;<span class="f9">▼</span></a>
					<a href="<?php echo $next_href ?>" class="ellipsis">
						<span><?php echo $next_wr_subject;?></span>
					</a>
				</li>
				<?php } ?>
			<ul>
			<?php } ?>

		</div>
		
<!-- 게시물 읽기 시작 { -->

<!-- } 게시글 읽기 끝 -->