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
					<li id="lm01" class='lm_l2 over'><a href="mileage01.php"  class='lm_a2'><span class='isTxt'>나의 마일리지 점수</span></a></li>
					<li id="lm02" class='lm_l2 '><a href="mileage02.php"  class='lm_a2'><span class='isTxt'>마일리지 정책기준</span></a></li>
				</ul>
			</div>
		</div>
		<? include_once(G5_THEME_PATH.'/help.php');?>
	</div>
	<div id="contents">
		<div class="cont-top">
			<h2 class="tit">나의 마일리지 점수</h2>
			<ul class="path">
				<li>HOME
				<li>순위마당</li>
				<li>나의 마일리지 점수</li>
			</ul>
		</div>
		<!-- page-start // -->
		<div  class="m_graph">
			<dl>
				<dt>나의마일리지<br />획득 점수</dt>
				<dd class="visual" style="position: relative;">
					<p class="location" style="width: 24px; top:0; left:<?php echo $member['mb_point']?>0%; margin:0; position: absolute; transform: translateX(-50%)"></p>
					<p class="stick" style="margin-top: 30px;"><span style="width: <?php echo $member['mb_point']?>%;"></span></p>
				</dd>
				<dd class="txt"><span class="num"><?php echo $member['mb_point']?></span><span class="jum">점</span></dd>
			</dl>
		</div>
		<table class="tbl-type01">
		<colgroup>
				<col width="*"/>
				<col width="10%"/>
				<col width="10%"/>
				<col width="10%"/>
				<col width="10%"/>
				<col width="10%"/>
                <col width="10%"/>
				<col width="10%"/>
		</colgroup>
 <thead>
  <tr>
    <th rowspan="2">마일리지항목</th>
    <th rowspan="2">회당배점<br>(건,편)</th>
    <th rowspan="2">최대배점</th>
    <th colspan="3">참여기록</th>
    <th rowspan="2">획득마일리지</th>
    <th rowspan="2">획득률</th>
  </tr>
  <tr>
    <th>회차</th>
    <th>완료일</th>
    <th>마일리지</th>
    </tr>
 </thead>
 <tbody>
  <tr>
    <td>윤리의식 수준진단</td>
    <td>10</td>
    <td>10</td>
    <td>1</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>10</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>윤리실천 자가진단</td>
    <td>10</td>
    <td>10</td>
    <td>1</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>10</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td rowspan="2">사이버 교육</td>
    <td rowspan="2">10</td>
    <td rowspan="2">20</td>
    <td>1</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td rowspan="2">20</td>
    <td rowspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td>2</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td rowspan="3">메시지</td>
    <td rowspan="3">5</td>
    <td rowspan="3">15</td>
    <td>1</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td rowspan="3">15</td>
    <td rowspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td>2</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td>3</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td rowspan="3">캠페인</td>
    <td rowspan="3">5</td>
    <td rowspan="3">15</td>
    <td>1</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td rowspan="3">15</td>
    <td rowspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td>2</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td>3</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td rowspan="6">국민권익위 브리프스</td>
    <td rowspan="6">5</td>
    <td rowspan="6">30</td>
    <td>1</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td rowspan="6">30</td>
    <td rowspan="6">&nbsp;</td>
  </tr>
  <tr>
    <td>2</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td>3</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td>4</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td>5</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td>6</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td rowspan="3">커뮤니티</td>
    <td>3</td>
    <td rowspan="3">100</td>
    <td>쓰기</td>
    <td>&nbsp;</td>
    <td>15/5</td>
    <td rowspan="3">20</td>
    <td rowspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td>1</td>
    <td>읽기</td>
    <td>&nbsp;</td>
    <td>3/3</td>
    </tr>
  <tr>
    <td>1</td>
    <td>댓글</td>
    <td>&nbsp;</td>
    <td>2/2</td>
    </tr>
  <tr>
    <td>퀴즈 골든벨</td>
    <td>10</td>
    <td>10</td>
    <td>1</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>10</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td rowspan="2">웹 세미나</td>
    <td rowspan="2">10</td>
    <td rowspan="2">20</td>
    <td>1</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td rowspan="2">20</td>
    <td rowspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td>2</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td colspan="6"><span class="txt">총점</span></td>
    <td><span class="num">150</span></td>
    <td>&nbsp;</td>
  </tr>
  </tbody>
</table>
		
		<!-- page-end //-->	
		
	</div>
</div>
<?php
include_once(G5_THEME_PATH.'/tail.php');