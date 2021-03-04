<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

// 선택옵션으로 인해 셀합치기가 가변적으로 변함
$colspan = 5;

if ($is_checkbox) $colspan++;
if ($is_good) $colspan++;
if ($is_nogood) $colspan++;

if(!$is_member) {
	alert(CD_LOGIN_MSG);
}

// add_stylesheet('css 구문', 출력순서); 숫자가 작을 수록 먼저 출력됨
add_stylesheet('<link rel="stylesheet" href="'.$board_skin_url.'/style.css">', 0);
?>
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
		<div class="board-search">
			<div class="total"><span>Total : <strong><?php echo number_format($total_count) ?>건</strong></span></div>
			<form name="fsearch" method="get">
			<input type="hidden" name="bo_table" value="<?php echo $bo_table ?>">
			<input type="hidden" name="sca" value="<?php echo $sca ?>">
			<input type="hidden" name="sop" value="and">
			<div class="search">
				<select name="sfl" id="sfl">
					<option value="wr_subject"<?php echo get_selected($sfl, 'wr_subject', true); ?>>제목</option>
					<option value="wr_content"<?php echo get_selected($sfl, 'wr_content'); ?>>내용</option>
					<option value="wr_name,1"<?php echo get_selected($sfl, 'wr_name,1'); ?>>작성자</option>
				</select>
				<input type="text" name="stx" value="<?php echo stripslashes($stx) ?>" required id="stx" title="검색 내용을 입력해주세요">
				<button type='submit'><span>검색</span></button>
			</div>
			</form>
		</div>
		<div class="board-list-wrap">
			<p class="bd-line"></p>
			<table>
				<colgroup>
					<col scope="col" width="70">
					<col scope="col" width="*">
					<col scope="col" width="100">
					<col scope="col" width="100">
					<col scope="col" width="80">
				</colgroup>
				<thead>
					<tr>
						<th>No</th>
						<th>제목</th>
						<th>작성자</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
				<?php
				for ($i=0; $i<count($list); $i++) {
					if ($i%2==0) $lt_class = "even";
					else $lt_class = "";
				?>
					<tr>
						<td>
						<?php
						if ($list[$i]['is_notice']) // 공지사항
							echo '<span class="notice-txt">공지</span>';
						else
							echo $list[$i]['num'];
						?>
						</td>
						<td class="l">
							<a href="<?php echo $list[$i]['href'] ?>" class="f14"><?php echo $list[$i]['subject'] ?></a>
							<?php
							if ($list[$i]['icon_new']) echo "<img src='".G5_THEME_URL."/_Img/Sub/new-ico.png' alt='새글'/> ";
							?>
						</td>
						<td><?php echo $list[$i]['name'] ?></td>
						<td><?php echo $list[$i]['datetime2'] ?></td>
						<td><?php echo $list[$i]['wr_hit'] ?></td>
					</tr>
				<?php } ?>
				<?php if (count($list) == 0) { echo '<tr><td colspan="5" class="empty_table">게시물이 없습니다.</td></tr>'; } ?>
				</tbody>
			</table>
		</div>
		<div class="sgap"></div>
		<!-- page-end //-->
	</div>
</div>

<!-- 페이지 -->
<?php echo $write_pages; ?>
<!-- 페이지 -->

<?php if($is_checkbox) { ?>
<noscript>
<p>자바스크립트를 사용하지 않는 경우<br>별도의 확인 절차 없이 바로 선택삭제 처리하므로 주의하시기 바랍니다.</p>
</noscript>
<?php } ?>

<?php if ($is_checkbox) { ?>
<script>
function all_checked(sw) {
    var f = document.fboardlist;

    for (var i=0; i<f.length; i++) {
        if (f.elements[i].name == "chk_wr_id[]")
            f.elements[i].checked = sw;
    }
}

function fboardlist_submit(f) {
    var chk_count = 0;

    for (var i=0; i<f.length; i++) {
        if (f.elements[i].name == "chk_wr_id[]" && f.elements[i].checked)
            chk_count++;
    }

    if (!chk_count) {
        alert(document.pressed + "할 게시물을 하나 이상 선택하세요.");
        return false;
    }

    if(document.pressed == "선택복사") {
        select_copy("copy");
        return;
    }

    if(document.pressed == "선택이동") {
        select_copy("move");
        return;
    }

    if(document.pressed == "선택삭제") {
        if (!confirm("선택한 게시물을 정말 삭제하시겠습니까?\n\n한번 삭제한 자료는 복구할 수 없습니다\n\n답변글이 있는 게시글을 선택하신 경우\n답변글도 선택하셔야 게시글이 삭제됩니다."))
            return false;

        f.removeAttribute("target");
        f.action = g5_bbs_url+"/board_list_update.php";
    }

    return true;
}

// 선택한 게시물 복사 및 이동
function select_copy(sw) {
    var f = document.fboardlist;

    if (sw == "copy")
        str = "복사";
    else
        str = "이동";

    var sub_win = window.open("", "move", "left=50, top=50, width=500, height=550, scrollbars=1");

    f.sw.value = sw;
    f.target = "move";
    f.action = g5_bbs_url+"/move.php";
    f.submit();
}

// 게시판 리스트 관리자 옵션
jQuery(function($){
    $(".btn_more_opt.is_list_btn").on("click", function(e) {
        e.stopPropagation();
        $(".more_opt.is_list_btn").toggle();
    });
    $(document).on("click", function (e) {
        if(!$(e.target).closest('.is_list_btn').length) {
            $(".more_opt.is_list_btn").hide();
        }
    });
});
</script>
<?php } ?>
<!-- } 게시판 목록 끝 -->
