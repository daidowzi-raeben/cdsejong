<?php
if (!defined('_INDEX_')) define('_INDEX_', true);
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

if (G5_IS_MOBILE) {
    include_once(G5_THEME_MOBILE_PATH.'/index.php');
    return;
}

include_once(G5_THEME_PATH.'/head.php');
?>
	<!-- page star // -->
	<div class="msec-cont msec-01">
        <div class="msec-member">
          <h3>Member Login</h3>
          <!--s: 로그인 -->
          <div  class="login-input">
            <ul>
              <li>
                <p class="tc-input w100p">
                  <input type="text" value="아이디" autocomplete="off" onFocus="clearText(this)"  onblur="defaultText(this)"/>
                </p>
              </li>
              <li>
                <p class="tc-input w100p">
                  <input type="text" value="비밀번호"  class="passValue" autocomplete="off" onFocus="clearText(this)"  onblur="defaultText(this)"/>
                </p>
              </li>
            </ul>
            <button class="login-btn"><span>로그인</span></button>
          </div>
          <div  class="logout-input">
            <p><span>홍길동</span>님</p>
            <p> 환영합니다.</p>
            <p><a href="Member/modify01.php" class="btn">[회원정보수정]</a> </p>
            <button class="logout-btn"><span>로그아웃</span></button>
          </div>
          <!--s: 로그인 -->
          <ul class="login-other">
            <li class="login"><a href="Member/join01.php" class="line">회원가입</a></li>
            <li class="login"><a href="Member/idFind.php">아이디/비밀번호 찾기</a></li>
            <!--<li class="login"><span>로그인 후 서비스 이용이 가능합니다.</span></li>-->
            <li class="logout"><span class="name">홍길동님 취득점수</span></li>
            <li class="logout"><span class="num">100점</span></li>
          </ul>
        </div>
        <div class="msec-safe"> <span><a href="Edu/edu01_02.php"><img src="<?php echo G5_THEME_URL ?>/_Img/Main/btn_mylecture.gif" width="151" height="144" border="0" alt="나의강의실"></a></span><span class="mileage"><a href="Mileage/mileage01.php"><img src="<?php echo G5_THEME_URL ?>/_Img/Main/btn_mymileage.gif" width="154" height="144" border="0" alt="나의마일리지"></a></span> </div>
        <div class="msec-visual">
          <div class="visual-slide">
            <div class="item">
              <div id="wowslider-container1">
	<div class="ws_images"><ul>
		<li><img src="<?php echo G5_THEME_URL ?>/_Img/Main/img1.jpg" alt="" title="" id="wows1_0"/></li>
		<li><img src="<?php echo G5_THEME_URL ?>/_Img/Main/img2.jpg" alt="img2" title="img2" id="wows1_1"/></li>
		<li><img src="<?php echo G5_THEME_URL ?>/_Img/Main/img3.jpg" alt="slider jquery" title="img3" id="wows1_2"/></li>
		<li><img src="<?php echo G5_THEME_URL ?>/_Img/Main/img4.jpg" alt="img4" title="img4" id="wows1_3"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title=""><span>1</span></a>
		<a href="#" title="img2"><span>2</span></a>
		<a href="#" title="img3"><span>3</span></a>
		<a href="#" title="img4"><span>4</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com">jquery carousel</a> by WOWSlider.com v8.2</div>
	<div class="ws_shadow"></div>
	</div>	
	<script type="text/javascript" src="<?php echo G5_THEME_JS_URL ?>/engine1/wowslider.js"></script>
	<script type="text/javascript" src="<?php echo G5_THEME_JS_URL ?>/engine1/script.js"></script>
            </div>
            <!-- <div class="item"><a href="#n"><img src="_Img/Main/msec-vis02.jpg" alt="본 교육 과정은 기타유원시설업 사업자 안전교육을 온라인으로 수행하기 위한 과정입니다."/></a></div> --> 
          </div>
        </div>
      </div>
      <div class="msec-cont msec-02">
        <div class="msec-help">
          <h3>교육지원센터</h3>
          <div class="info">
            <p class="btxt">Help Desk</p>
            <p class="stxt">070-8808-2027</p>
          </div>
          <p class="ctxt mg30t">운영시간안내</p>
          <p class="ctxt">평일 :  9:00~18:00(월~금)</p>
          <p class="ctxt">점심 : 12:00~13:00, 토/일/공휴일 휴무</p>
        </div>
        <div class="msec-notice">
          <h3>공지사항</h3>
          <a href="Service/service01.php" class="more"><span class="blind">더보기</span></a>
          <ul>
<!--            <li><a href="http://jemi97.cafe24.com/sejong/Service/service05.php"><span class="tit">기타유원시설업 사업자 안전교육 오픈</span><span class="date">[2018.05.10]</span></a></li>
            <li><a href="http://jemi97.cafe24.com/sejong/Service/service05.php"><span class="tit">기타유원시설업 사업자 안전교육 오픈</span><span class="date">[2018.05.10]</span></a></li>
            <li><a href="http://jemi97.cafe24.com/sejong/Service/service05.php"><span class="tit">기타유원시설업 사업자 안전교육 오픈</span><span class="date">[2018.05.10]</span></a></li>
            <li><a href="http://jemi97.cafe24.com/sejong/Service/service05.php"><span class="tit">기타유원시설업 사업자 안전교육 오픈</span><span class="date">[2018.05.10]</span></a></li>
            <li><a href="http://jemi97.cafe24.com/sejong/Service/service05.php"><span class="tit">기타유원시설업 사업자 안전교육 오픈</span><span class="date">[2018.05.10]</span></a></li>-->
          </ul>
        </div>
        <ul class="msec-quick">
          <li><a href="#" onClick="window.open('Service/report.html','_blank','left=1,top=1,toolbar=no,location=no,status=yes,menubar=no,scrollbars=yes,resizable=no,width=800,height=720')" onfocus="this.blur()" alt="내부제보" ><span class="blind">내부제보</span></a></li>
        </ul>
      </div>
      <!-- page end // -->

<?php
include_once(G5_THEME_PATH.'/tail.php');