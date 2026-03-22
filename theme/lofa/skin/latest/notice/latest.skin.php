<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

// add_stylesheet('css 구문', 출력순서); 숫자가 작을 수록 먼저 출력됨

$list_count = (is_array($list) && $list) ? count($list) : 0;
?>

	<h3>공지사항</h3>
	<a href="Service/service01.php" class="more"><span class="blind">더보기</span></a>
	<ul>
	<?php for ($i=0; $i<$list_count; $i++) {  ?>
		<li>
            <?php
            if ($list[$i]['icon_secret']) echo "<span class=\"lock_icon\"><i class=\"fa fa-lock\" aria-hidden=\"true\"></i></span> ";
            if ($list[$i]['icon_new']) echo "<span class=\"new_icon\">N<span class=\"sound_only\">새글</span></span>";
             //echo $list[$i]['icon_reply']." ";
            echo "<a href=\"".$list[$i]['href']."\">";
			echo "<span class=\"tit\">".$list[$i]['subject']."</span>";
			echo "<span class=\"date\">[".$list[$i]['datetime']."]</span>";
            echo "</a>";

            // if ($list[$i]['link']['count']) { echo "[{$list[$i]['link']['count']}]"; }
            // if ($list[$i]['file']['count']) { echo "<{$list[$i]['file']['count']}>"; }

            //if ($list[$i]['icon_file']) echo " <i class=\"fa fa-download\" aria-hidden=\"true\"></i>" ;
            //if ($list[$i]['icon_link']) echo " <i class=\"fa fa-link\" aria-hidden=\"true\"></i>" ;
            //if ($list[$i]['icon_hot']) echo " <i class=\"fa fa-heart\" aria-hidden=\"true\"></i>";
            ?>
        </li>

	<?php }  ?>
    <?php if ($list_count == 0) { //게시물이 없을 때  ?>
		<li class="empty_li">게시물이 없습니다.</li>
    <?php }  ?>
	</ul>
