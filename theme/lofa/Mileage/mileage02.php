<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

/*if (G5_IS_MOBILE) {
    include_once(G5_THEME_MOBILE_PATH.'/index.php');
    return;
}*/

include_once(G5_THEME_PATH.'/head.php');
?>
<div id="svisual-wrap">
	<div class="vistxt">
		<p class="btxt"><span>순위마당</span></p>
		<p class="stxt">
                    순위마당은 실천활동순위,마일리지 점수,마일리지<br>
                    정책 등으로 구성된 코너입니다. 학습활동을 수행한<br>
                    결과에 따라 활동순위와 마일리지 점수를 실시간으로<br>
                    제공됩니다. 
                </p>
	</div>
	<div class="visimg vis04"></div>
</div>
<div class="content-ov">
	<div id="subNavi-wrap">
		<div id="subNavi">
			<div class="lm-tit">
				<div class="tit">
					<p class="btxt">mileage section</p>
					<p class="stxt">순위마당</p>
				</div>
			</div>		
			<div class="leftmenu" id="leftmenu">
				<ul class="depth2">
					<li id="lm03" class='lm_l2'><a href="mileage03.php"  class='lm_a2'><span class='isTxt'>실천활동순위</span></a></li>
					<li id="lm01" class='lm_l2 '><a href="mileage01.php"  class='lm_a2'><span class='isTxt'>나의 마일리지 점수</span></a></li>
					<li id="lm02" class='lm_l2 over'><a href="mileage02.php"  class='lm_a2'><span class='isTxt'>마일리지 정책기준</span></a></li>
				</ul>
			</div>
		</div>
		<? include_once(G5_THEME_PATH.'/help.php');?>
	</div>
	<div id="contents">
		<div class="cont-top">
			<h2 class="tit">마일리지 정책기준</h2>
			<ul class="path">
				<li>HOME
				<li>순위마당</li>
				<li>마일리지 정책기준</li>
			</ul>
		</div>
		<!-- page-start // -->
		<table class="tbl-type01">
        <colgroup>
				<col width="*"/>
				<col width="10%"/>
				<col width="10%"/>
				<col width="15%"/>
				<col width="10%"/>
				<col width="30%"/>
 </colgroup>
<thead>
  <tr>
    <th>마일리지 항목</th>
    <th>적립기준</th>
    <th>횟수</th>
    <th>회당(건,편)<br>
      배점</th>
    <th>최대 배점</th>
    <th>설명</th>
  </tr>
</thead>
  <tr>
    <td>윤리의식 수준진단</td>
    <td>시행여부</td>
    <td>1</td>
    <td>10</td>
    <td>10</td>
    <td>시행시 가산</td>
  </tr>
  <tr>
    <td>윤리실천 자가진단</td>
    <td>시행여부</td>
    <td>1</td>
    <td>10</td>
    <td>10</td>
    <td>시행시 가산</td>
  </tr>
  <tr>
    <td>사이버 교육</td>
    <td>수료여부</td>
    <td>2</td>
    <td>10</td>
    <td>10</td>
    <td>수료시 가산</td>
  </tr>
  <tr>
    <td>메시지</td>
    <td>시행여부</td>
    <td>3</td>
    <td>5</td>
    <td>15</td>
    <td>시행시 가산</td>
  </tr>
  <tr>
    <td>캠페인</td>
    <td>시행여부</td>
    <td>3</td>
    <td>5</td>
    <td>15</td>
    <td>시행시 가산</td>
  </tr>
  <tr>
    <td>국민권익위 브리프스</td>
    <td>열람여부</td>
    <td>6</td>
    <td>5</td>
    <td>30</td>
    <td>열람시 가산</td>
  </tr>
  <tr>
    <td rowspan="3">커뮤니티</td>
    <td>쓰기</td>
    <td>&nbsp;</td>
    <td>3</td>
    <td>&nbsp;</td>
    <td>100자 이상 글쓸때 가산</td>
  </tr>
  <tr>
    <td>읽기</td>
    <td>&nbsp;</td>
    <td>1</td>
    <td>&nbsp;</td>
    <td>글 읽을 때 가산</td>
  </tr>
  <tr>
    <td>댓글</td>
    <td>&nbsp;</td>
    <td>1</td>
    <td>&nbsp;</td>
    <td>댓글 50자 이상 쓸 때 가산
      <br>
      (30일 이내)</td>
  </tr>
  <tr>
    <td>퀴즈 골든벨</td>
    <td>새행여부</td>
    <td>2</td>
    <td>10</td>
    <td>20</td>
    <td>시행시 가산</td>
  </tr>
  <tr>
    <td>웹 세미나</td>
    <td>참여여부</td>
    <td>1</td>
    <td>10</td>
    <td>10</td>
    <td>참여시 가산</td>
  </tr>
  <tr>
    <td colspan="6"><span class="txt">총점</span><span class="num">130</span><span class="txt2">점 이상 획득</span></td>
    </tr>
</table>
		
		<!-- page-end //-->	
		
	</div>
</div>
<?php
include_once(G5_THEME_PATH.'/tail.php');