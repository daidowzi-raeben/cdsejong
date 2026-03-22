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
					<li id="lm03" class='lm_l2 over'><a href="mileage03.php"  class='lm_a2'><span class='isTxt'>실천활동순위</span></a></li>
					<li id="lm01" class='lm_l2'><a href="mileage01.php"  class='lm_a2'><span class='isTxt'>나의 마일리지 점수</span></a></li>
					<li id="lm02" class='lm_l2 '><a href="mileage02.php"  class='lm_a2'><span class='isTxt'>마일리지 정책기준</span></a></li>
				</ul>
			</div>
		</div>
		<? include_once(G5_THEME_PATH.'/help.php');?>
	</div>
	<div id="contents">
		<div class="cont-top">
			<h2 class="tit">실천 활동 순위</h2>
			<ul class="path">
				<li>HOME
				<li>순위마당</li>
				<li>실천 활동 순위</li>
			</ul>
		</div>
		<!-- page-start // -->
		<ul class="ranking-info">
                    <li>
                        <img src="../_Img/Content/ranking_01.jpg" alt="" />
                        <b>Master</b>
                        <p>랭킹(1위 ~ 10위 이내)</p>
                    </li>
                    <li>
                        <img src="../_Img/Content/ranking_02.jpg" alt="" />
                        <b>Senior</b>
                        <p>랭킹(11위 ~ 20위 이내)</p>
                    </li>
                    <li>
                        <img src="../_Img/Content/ranking_03.jpg" alt="" />
                        <b>Junior</b>
                        <p>랭킹(21위 ~)</p>
                    </li>
                </ul>
                <br><br>
                
                <table class="ranking-table">
                    <colspan>
                        <col width="10%" />
                        <col width="10%" />
                        <col width="13%" />
                        <col width="13%" />
                        <col width="24%" />
                        <col width="15%" />
                    </colspan>
                    <thead>
                        <tr>
                            <th>순위</th>
                            <th>등급</th>
                            <th>이름</th>
                            <th>사번</th>
                            <th>부서</th>
                            <th>종합점수(마일리지)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><b>1</b></td>
                            <td><img src="<?php echo G5_THEME_URL ?>/_Img/Content/ranking_01.jpg" alt="" style="width: 30px;"/></td>
                            <td>홍길동</td>
                            <td>2019202001</td>
                            <td>인터넷방송실기획개발부</td>
                            <td>300</td>
                        </tr>
                        <tr>
                            <td><b>2</b></td>
							<td><img src="<?php echo G5_THEME_URL ?>/_Img/Content/ranking_02.jpg" alt="" style="width: 30px;"/></td>
							<td>임걱정</td>
							<td>2019202002</td>
							<td>인터넷방송실기획개발부</td>
							<td>200</td>
                        </tr>
                        <tr>
                            <td><b>3</b></td>
							<td><img src="<?php echo G5_THEME_URL ?>/_Img/Content/ranking_03.jpg" alt="" style="width: 30px;"/></td>
							<td>김방실</td>
							<td>2019202003</td>
							<td>인터넷방송실기획개발부</td>
							<td>100</td>
                        </tr>
                        <tr>
                            <td><b>4</b></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><b>5</b></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><b>6</b></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><b>7</b></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><b>8</b></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><b>9</b></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><b>10</b></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </tbody>
                </table>
                <br><br>
                <div class="paging-wrap">
                    <a href="#" class="first ctrl"><span class="blind">첫페이지로</span></a>
                    <a href="#" class="prev ctrl"><span class="blind">이전 페이지로</span></a>
                    <ul>
                            <li><a href="#" class="active">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                    </ul>
                    <a href="#" class="next ctrl"><span class="blind">다음페이지로</span></a>
                    <a href="#" class="last ctrl"><span class="blind">끝페이지로</span></a>	
		</div>	
		<!-- page-end //-->	
		
	</div>
</div>
<?php
include_once(G5_THEME_PATH.'/tail.php');