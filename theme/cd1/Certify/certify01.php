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
		<p class="btxt"><span>수료증마당</span></p>
		<p class="stxt">수료증 마당은 임직원 온라인 교육  <br />포털 사이트에서 학습 활동을 수행한 결과에 따라<br />수료증을 발급 과정입니다. </p>
	</div>
	<div class="visimg vis04"></div>
</div>
<div class="content-ov">
	<div id="subNavi-wrap">
		<div id="subNavi">
			<div class="lm-tit">
				<div class="tit">
					<p class="btxt">CERTIFY section</p>
					<p class="stxt">수료증마당</p>
				</div>
			</div>		
			<div class="leftmenu" id="leftmenu">
				<ul class="depth2">
					<li id="lm01" class='lm_l2 over'><a href="certify01.php"  class='lm_a2'><span class='isTxt'>수료증 발급</span></a></li>
				</ul>
			</div>
		</div>
		<? include_once(G5_THEME_PATH.'/help.php');?>
	</div>
	<div id="contents">
		<div class="cont-top">
			<h2 class="tit">수료증 발급</h2>
			<ul class="path">
				<li>HOME
				<li>수료증마당</li>
				<li>수료증 발급</li>
			</ul>
		</div>
		<!-- page-start // -->
		<table class="tbl-type01">
			<colgroup>				
				<col width="10%"/>
				<col width="10%"/>
				<col width="15%"/>
				<col width="*"/>
				<col width="15%"/>
				<col width="10%"/>
				<col width="10%"/>
				<col width="10%"/>
			</colgroup>
			<thead>
				<tr>
					<th>성명</th>
					<th>사번</th>
					<th>부서3</th>
					<th>교육명</th>
					<th>교육기간</th>
					<th>교육시간</th>
					<th>수료여부</th>
					<th>출력</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>홍길동</td>
					<td>00000</td>
					<td>경영기획사업부</td>
					<td><a href="#" class="cred">윤리 · 청렴 사이버교육</a></td>
					<td>2018.00.0 ~ 2018.12.31</td>
					<td>4시간</td>
					<td>수료</td>
                                        <td><a href="#n" class="cw-btn" onclick="window.open('certify_survey.html','_blank','left=1,top=1,toolbar=no,location=no,status=yes,menubar=no,scrollbars=yes,resizable=no,width=810,height=800')"><span>출력</span></a></td>
<!--					<td><a href="#n" class="cw-btn" onClick="javascript:window.open(urls, 'pop01', strFeature)"><span>출력</span></a></td>-->
				</tr>
			</tbody>
		</table>
                <br>
                <p>* 출력 버튼 클릭 후 '교육 만족도 설문' 조사를 완료해야 출력이 가능합니다.</p>
		<script>
			var urls = 'print.php'
			var width = 580;
			var height = 812;
			var tops = (window.screen.height - height) / 2;
			var lefts = (window.screen.width - width) / 2;

			var strFeature;
			strFeature = 'height=' + height + ',width=' + width + ',menubar=no,toolbar=no,location=no,resizable=no,status=no,scrollbars=no,top=' + tops + ', left=' + lefts
		</script>
		<!-- page-end //-->	
		
	</div>
</div>
<?php
include_once(G5_THEME_PATH.'/tail.php');