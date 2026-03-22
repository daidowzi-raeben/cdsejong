<?php
	include_once('./_common.php');
	
	echo $g5['board_table'];
	//print_r($_POST);
	exit();
?>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
<script>
alert('설문 조사가 완료 되었습니다.');
window.open('about:blank','_self').close();
window.close();
self.close();
</script>