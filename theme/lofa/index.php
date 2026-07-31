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
			<?php if ($is_member) {  ?>
			<div  class="logout-input">
				<p><span><?php echo $member['mb_name']?></span>님</p>
				<p> 환영합니다.</p>
				<?php if ($is_admin) {  ?>
				<p><a href="<?php echo G5_ADMIN_URL ?>" class="btn">[관리페이지]</a></p>
				<?php } else {  ?>
				<!--<p><a href="Member/modify01.php" class="btn">[회원정보수정]</a></p>-->
				<?php }?>
				<button class="logout-btn" onclick="location.href='<?php echo G5_BBS_URL ?>/logout.php'"><span>로그아웃</span></button>
			</div>
			<?php } else {  ?>
			<form name="flogin" action="/bbs/login_check.php" onsubmit="return flogin_submit(this);" method="post">
			<input type="hidden" name="url" value="">
			<div  class="login-input">
				<ul>
					<li>
						<p class="tc-input w100p">
							<input type="text" name="mb_id" value="아이디" autocomplete="off" onFocus="clearText(this)"  onblur="defaultText(this)"/>
						</p>
					</li>
					<li>
						<p class="tc-input w100p">
							<input type="password" name="mb_password" value="비밀번호"  class="passValue" autocomplete="off" onFocus="clearText(this)"  onblur="defaultText(this)"/>
						</p>
					</li>
				</ul>
            <button class="login-btn"><span>로그인</span></button>
			</div>
			</form>
			<?php }?>
			<!--e: 로그인 -->
			<ul class="login-other" style="display: none;">
			<?php if ($is_member) {  ?>
				<li><span class="name"><?php echo $member['mb_name']?>님 취득점수</span></li>
				<li><span class="num"><?php echo $member['mb_point']?>점</span></li>
			<?php } else {  ?>
				<li class="login"><a href="Member/join01.php" class="line">회원가입</a></li>
				<li class="login"><a href="Member/idFind.php">아이디/비밀번호 찾기</a></li>
			<?php }?>            
			</ul>
        </div>
        <div class="msec-safe"> 
			<span>
				<!-- <a href="<?php echo G5_URL?>/Mileage/mileage01.php"> -->
				<a href="javascript:;">
					<img src="<?php echo G5_THEME_URL ?>/_Img/Main/btn_mymileage.jpg" width="152" height="144" border="0" alt="나의마일리지" />
				</a>
			</span>
			<span class="mileage">
				<!-- <a href="Certify/certify01.php"> -->
				<a href="javascript:;">
					<img src="<?php echo G5_THEME_URL ?>/_Img/Main/btn_certificate.jpg" width="152" height="144" border="0" alt="수료증발급" />
				</a>
			</span> 
		</div>
		<div class="msec-report">
			<span class="list_01"><a
								href="https://www.clean.go.kr/menu.es?mid=a10203000000" target="_blank"><img
									src="<?php echo G5_THEME_URL ?>/_Img/Main/btn_report_01.jpg" width="304" height="65" border="0" alt="청탁금지법신고"></a></span>
			<span class="list_02"><a
						href="https://www.clean.go.kr/menu.es?mid=a10205000000&menuId=05020103" target="_blank"><img
							src="<?php echo G5_THEME_URL ?>/_Img/Main/btn_report_02.jpg" width="304" height="65" border="0"
							alt="부패행위신고"></a></span>
			<span class="list_03"><a
						href="https://www.clean.go.kr/menu.es?mid=a10206000000" target="_blank"><img
							src="<?php echo G5_THEME_URL ?>/_Img/Main/btn_report_03.jpg" width="304" height="65" border="0" alt="행동강령위반신고"></a></span>
		</div>
        <div class="msec-visual" style="height:561px;">
			<div class="visual-slide">
				<div class="item">
					<div id="wowslider-container1">
						<div class="ws_images">
							<ul>
								<!-- <li><img src="<?php echo G5_THEME_URL ?>/_Img/Main/slide_01.jpg" alt="" title="" id="wows1_0"/></li> -->
								<!--<li><img src="_Img/Main/slide_02.jpg" alt="img2" title="img2" id="wows1_1"/></li>
								<li><img src="_Img/Main/slide_03.jpg" alt="slider jquery" title="img3" id="wows1_2"/></li>-->
								<li><img src="<?php echo G5_THEME_URL ?>/_Img/Main/slide_04.jpg" alt="img4" title="img4" id="wows1_3"/></li>
							</ul>
						</div>
						<!-- <div class="ws_bullets">
							<div>
								<a href="#" title=""><span>1</span></a>
								<a href="#" title="img2"><span>2</span></a>
								<a href="#" title="img3"><span>3</span></a>
								<a href="#" title="img4"><span>4</span></a>
							</div>
						</div> -->
						<div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com">jquery carousel</a> by WOWSlider.com v8.2</div>
						<div class="ws_shadow"></div>
					</div>	
					<script type="text/javascript" src="<?php echo CD_THEME_JS_URL ?>/engine1/wowslider.js"></script>
					<script type="text/javascript" src="<?php echo CD_THEME_JS_URL ?>/engine1/script.js"></script>
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
		<?php
			echo latest('theme/notice', 'notice', 4, 23);		// 최소설치시 자동생성되는 공지사항게시판
			// echo latest('pic_list', 'notice', 4, 23);
		?>
        </div>
	</div>
	<!-- page end // -->
<?php
include_once(G5_THEME_PATH.'/tail.php');