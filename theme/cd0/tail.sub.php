<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가
?>
<?php if ($is_admin == 'super') {  ?><!-- <div style='float:left; text-align:center;'>RUN TIME : <?php echo get_microtime()-$begin_time; ?><br></div> --><?php }  ?>
<!-- ie6,7에서 사이드뷰가 게시판 목록에서 아래 사이드뷰에 가려지는 현상 수정 -->
<!--[if lte IE 7]>
<script>
$(function() {
    var $sv_use = $(".sv_use");
    var count = $sv_use.length;

    $sv_use.each(function() {
        $(this).css("z-index", count);
        $(this).css("position", "relative");
        count = count - 1;
    });
});
</script>
<![endif]-->
<?php #run_event('tail_sub'); ?>
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
<!-- e: #doc //-->
</body>
</html>
<?php echo html_end(); // HTML 마지막 처리 함수 : 반드시 넣어주시기 바랍니다.