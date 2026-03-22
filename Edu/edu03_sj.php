<?php
include_once('./_common.php');

//로그인 체크
if(!$is_member) {
	alert(CD_LOGIN_MSG);
}

?>

<?php

$sql = " SELECT * FROM sj_prs_pledge WHERE mb_id = '".$member['mb_id']."' ";
$result = sql_fetch($sql);
#echo $result['mb_id'];
if($member['mb_profile'] == '서진오토모티브' && !$result['mb_id']) {
#if($member['mb_id'] == 'admin') {
	?>
<!-- 여기에 작업해주세요 -->
<style>
.pledge-modal{
	position: fixed;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	z-index: -1;
	display: flex;
	align-items: center;
	justify-content: center;
	opacity: 0;
}
.pledge-modal.show{
    z-index: 99999;
    opacity: 1;
    transition: opacity .3s;
}
.pledge-modal--dim{
    position: absolute;
    left: 0;
    right: 0;
    top: 0;
    bottom: 0;
    background-color: rgba(0,0,0,.6);
}
.pledge-modal--con{
    position: relative;
    z-index: 1;
    background-color: #fff;
    width: auto;
    min-width: 480px;
	max-width:700px;
    padding: 30px 20px 20px;
    border-radius: 10px;
    box-shadow: 0 20px 40px rgba(0,0,0,.5);
	color:#000;
	font-family: 'Nanum Myeongjo', serif;
}
.pledge-modal--con .con-wrap{
	border:2px solid #9f9f9f;
    padding: 20px;
    border-radius: 20px;
}
.pledge-modal--con .header {
	text-align: center;
	font-size: 24px; /* Adjust header size as needed */
	margin-bottom: 15px;
	margin-top:5px;
	line-height: 1.5;
	font-weight:700;
}
.pledge-modal--con .header .sub{
	font-size:16px;
	margin-top:20px;
	text-align:left;
}
.pledge-modal--con .content {
	text-align: justify;
	font-size: 14px; /* Adjust content size as needed */
	word-break: keep-all;
}
.pledge-modal--con .content p{
	margin:5px 0 8px 0;
}
.pledge-modal--con .signature-section {
	margin-top: 5px;
	text-align: center;
}
.pledge-modal--con .signature-section input:not(.submit-btn) {
	width: 40px;
	margin: 0 5px;
	outline: none;
	padding: 2px 5px;
	border: 1px solid #999;
	margin-bottom:10px;
}
.pledge-modal--con .signature-section input[type='number'] {
	text-align: center;
	vertical-align: top;
}
.pledge-modal--con .date-line {
	margin-top: 5px;
	text-align:right;
}
.pledge-modal--con .name-line {
	text-align:left;
}
.pledge-modal--con input[type='number']::-webkit-outer-spin-button,
.pledge-modal--con input[type='number']::-webkit-inner-spin-button {
	-webkit-appearance: none;
	margin: 0;
}
.pledge-modal--con .submit-btn {
	background-color: #e83f2e;
	color: #fff;
	border: none;
	display: block;
	margin: 20px auto 0;
	border-radius: 5px;
	width: 95px;
	height: 40px;
	cursor: pointer;
}

.pledge-modal--con .logo{
	position:absolute;
	top:13px;
	left:50%;
	transform:translateX(-50%);
	background-color:#fff;
	padding:0 5px;
}
.pledge-modal--con .logo img{
	width:160px;
}
.pledge-modal--con .content p strong{
	display:block;
	font-weight:800;
}
.pledge-modal--con .bottom-wrap{
	display:flex;
	align-items: center;
	justify-content: center;
	font-size:20px;
}

#header, #svisual-wrap,.cont-top, .login-sub , #subNavi-wrap, #footer {display:none !important; }
.content-ov {width:800px; margin:0 auto;}
</style>
<!--
<div class="pledge-modal show" id="isShowModal">
	<div class="pledge-modal--dim"></div>
	<div class="pledge-modal--con">
		<div>
			<button style="position:fixed;left:50%; margin-left:380px;border:0; background:none; color:#fff; font-size:30px;" onclick="javascript:document.getElementById('isShowModal').classList.toggle('show')">X</button>
		</div>
		<div class="con-wrap">
			<div class="logo">
				<img src="../img/sj_logo.jpg" alt="logo" />
			</div>
			<div class="header">
				윤리경영 실천 서약서<br />
				<div class="sub">
					본인은 서진오토모티브㈜의 일원으로써 당사 경영철학인 "정도경영"의 실천
					과제로 “고객에게는 정직”하고, “협력업체와의 투명하고 공정한 거래를 통해
					상호발전을 추구”하며, “주주와 사회에 책임과 의무”를 다 하고자 
					다음 사항을 준수할 것을 서약합니다.
				</div>
			</div>
			<div class="content">
				<p>
					1. 직무수행과정에서 '윤리헌장' 및 '임직원의 기본윤리'를 준수하도록 하겠습니다.
				</p>
				<p>
					2. 주어진 권한과 책임하에 직무에 최선을 다하며, 제반법규와 규정 제도를 준수하고 개인적 이익을 위해 직권남용, 허위, 과장, 은폐, 누설 행위 등을 하지 않고 임직원 상호간에 인권과 인격을 존중하며 예의 바르고 성실하게 업무에 임 하겠습니다.
				</p>
				<p>
					3. 직무수행과정에서 모든 거래는 투명하고 공정한 거래를 보장하며, 불공정 거래 및 부정·비리행위를 하지 않겠습니다.
				</p>
				<p>
					4. 직무수행과정에 있어 회사 임직원의 불공정 거래 및 부정·비리 행위를 인지 하였거나, 非 윤리적인 행위를 제안 받을 경우 즉시 경영진단팀(사이버 신문고)에 알리겠습니다.
				</p>
				<p>
					5. 윤리경영 위배 여부에 대한 조사 진행 시, 적극 협조하여 사실 대로 이야기 하고, 조사 내용에 대하여 비밀을 지키도록 하겠습니다.
				</p>
				<p>
					6. 향후 이 서약을 위반할 경우에는 회사가 정한 상벌지침규정에 따라 어떠한 처벌도 감수할 것이며, 이러한 처벌에 대해서 본인은 어떠한 이의 제기도 하지 않겠습니다.
				</p>
			</div>
			<form class="signature-section" action="/pledge/pld_update.php" method="post">
				<div class="date-line">
					2024년
					<input type="number" name="month" value="<?php echo date("m")?>" />월 <input type="number" name="day" value="<?php echo date("d")?>" />일
				</div>
				<div class="name-line">
					소속:
					<input type="text" style="width: 100px" name="e_number" /> <br />
					사번:
					<input type="text" style="width: 100px" name="e_number2" /> <br />
					성명:
					<input type="text" style="width: 100px" name="mb_name" />
				</div>
				<div class="bottom-wrap">
					<strong>서진오토모티브㈜ 귀중</strong>
				</div>
				<input
					type="submit"
					class="submit-btn"
					value="제출"
				/>
			</form>
		</div>
	</div>
</div>
-->
		<?php
}
		?>

<div style="text-align:center; margin-top:20px;">
	<img src="../img/sj_logo.jpg">
</div>
<div style="width:800px;margin:0 auto; text-align:right">
	
	<a href="/bbs/logout.php?url=/sj.php">로그아웃</a>
</div>

<?php
// 테마 head.sub.php 파일
if(defined('G5_THEME_PATH') && is_file(G5_THEME_PATH.'/Edu/edu03.php')) {
    require_once(G5_THEME_PATH.'/Edu/edu03.php');


	?>

<div style="width:800px; margin:0 auto; background:#eee; text-align:center; font-size:20px; padding:10px 0;">
	<span style="color:red;font-weight:bold;">ctrl</span> + <span style="color:red;font-weight:bold;">+</span>
또는
	<span style="color:red;font-weight:bold;">ctrl</span> + <span style="color:red;font-weight:bold;">-</span>
	단축키를 반복 사용하여 확대 / 축소가 가능합니다.
</div>
<?php
    return;
}
?>


