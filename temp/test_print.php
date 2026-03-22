<?php
	include_once('./_common.php');
		
	$sql2 = " select * from sj_prs_pledge where mb_id = '{$pid}' ";
	$row2 = sql_fetch($sql2);
	?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="Generator" content="EditPlus®" />
		<meta name="Author" content="" />
		<meta name="Keywords" content="" />
		<meta name="Description" content="" />
		<title>윤리경영을 위한 실천 서약서</title>
		<style>
			body {
				font-family: 'Arial', sans-serif; /* Adjust the font-family as needed */
				margin: 0 auto;
				max-width: 620px;
				width: 100%;
				line-height: 1.5; /* Adjust line spacing as needed */
				word-break: keep-all;
			}
			.header {
				text-align: center;
				margin-top: 50px;
				font-size: 24px; /* Adjust header size as needed */
				margin-bottom: 20px;
				line-height: 1.5;
			}
			.content {
				text-align: justify;
				font-size: 14px; /* Adjust content size as needed */
			}
			.signature-section {
				margin-top: 50px;
				text-align: center;
			}
			.signature-section input:not(.submit-btn) {
				width: 40px;
				margin: 0 5px;
				outline: none;
				padding: 2px 5px;
				border: 1px solid #999;
			}
			.signature-section input[type='number'] {
				text-align: center;
				vertical-align: top;
			}
			.date-line {
				margin-top: 30px;
			}
			.name-line {
				margin-top: 10px;
			}
			input[type='number']::-webkit-outer-spin-button,
			input[type='number']::-webkit-inner-spin-button {
				-webkit-appearance: none;
				margin: 0;
			}
			.submit-btn {
				background-color: #e83f2e;
				color: #fff;
				border: none;
				display: block;
				margin: 50px auto 0;
				border-radius: 5px;
				width: 95px;
				height: 40px;
				cursor: pointer;
			}
			@charset "utf-8";
@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);


.msec-cont{overflow:hidden; position:Relative;;}
.msec-cont.msec-01{padding-left:30%;}

.msec-cont .msec-member{ position:Absolute ;left:0; top:0; width:29%; box-sizing:border-box; border:1px solid #ccc; height:175px;}
.msec-cont .msec-member h3{position:Relative;background:#2b559a ; line-height:40px; color:#fff; font-size:16px; font-weight:600; padding:0 20px;}
.msec-cont .msec-member .login-input{margin:20px auto 0 auto; padding-bottom:22px;padding-right:92px;box-sizing:border-box; font-size:0; width:268px; position:Relative;}
.msec-cont .msec-member .login-input button{width:86px;background:url(../_Img/Main/msec-login.png) no-repeat center 20px #2b559a; padding-top:40px;box-sizing:border-box; height:90px;display:block;font-weight:600; text-align:center;  font-size:16px; color:#fff; border:none; position:absolute; right:0; top:0;}
.msec-cont .msec-member .login-input li input[type="text"],.msec-cont .msec-member .login-input li input[type="password"]{border:1px solid #ccc; height:40px; font-size:15px; box-sizing:border-box; width:100%; padding:0 5px;}
.msec-cont .msec-member .login-input li input[type="text"]:focus,.msec-cont .msec-member .login-input li input[type="password"]:focus{border:1px solid #333; color:#333 !important}
.msec-cont .msec-member .login-input li {margin-top:10px}
.msec-cont .msec-member .login-input li:first-child{margin-top:0;}

.msec-cont .msec-member .logout-input{margin:20px auto 0 auto; padding-bottom:37px;padding-right:92px;box-sizing:border-box; font-size:0; background:url(../_Img/Main/login_img.gif) no-repeat; width:268px; position:Relative;}
.msec-cont .msec-member .logout-input button{width:86px;background:url(../_Img/Main/msec-login.png) no-repeat center 20px #2b559a; padding-top:40px;box-sizing:border-box; height:90px;display:block;font-weight:600; text-align:center;  font-size:16px; color:#fff; border:none; position:absolute; right:0; top:0;}
.msec-cont .msec-member .logout-input p{ line-height:25px; font-size:16px;  text-align:left; padding-left:67px; letter-spacing:-0.03em; color:#555;}
.msec-cont .msec-member .logout-input p span{font-weight:600; color:#111 }
.msec-cont .msec-member .logout-input p a.btn{ font-size:16px; font-weight:600; color:#111 }

.msec-cont .msec-member .login-other{border-top:1px dashed #ccc; margin:0 auto 0 auto; font-size:0; width:268px; text-align:center; padding-top:15px;}
.msec-cont .msec-member .login-other li{display:inline-block; vertical-align:top;  position:relative;}
.msec-cont .msec-member .login-other li a{display:block; line-height:130%; color:#218080; font-size:14px; margin-left:20px;}
.msec-cont .msec-member .login-other li span{display:block; color:#218080; font-size:14px; margin-left:10px;}
.msec-cont .msec-member .login-other li img{margin-right:5px;}
.msec-cont .msec-member .login-other li span.name{color:#666666; font-size:15px; font-weight:bold; background:url(../_Img/Main/icon_mileage.gif) no-repeat; padding-left:28px; height:24px;}
.msec-cont .msec-member .login-other li span.num{color:#f08200; font-size:22px; font-weight:bold; }
.msec-cont .msec-member .login-other li a.line:nth-child(odd):after{ position:Absolute; right:-10px; width:1px; height:14px; background:#ccc; display:block; content:""; top:50%; margin-top:-7px}
.msec-cont .msec-member .login-other li.login span{background:url(../_Img/Main/icon_attention.gif) no-repeat; padding-left:29px; height:24px;}
.msec-cont .msec-member .login-other li.logout{display:none;}



.msec-cont .msec-safe{position:Absolute ;left:0; top:190px; width:29%; height:144px;}
.msec-cont .msec-safe span.mileage{position:Absolute ;left:150; bottom:0; width:29%; height:144px;}

.msec-cont .msec-report span.list_01{position:Absolute; left:0; bottom:149px; width:29%; height:65px;}
.msec-cont .msec-report span.list_02{position:Absolute; left:0; bottom:74px; width:29%; height:65px;}
.msec-cont .msec-report span.list_03{position:Absolute; left:0; bottom:0px; width:29%; height:65px;}

.msec-cont .msec-visual{ border:1px solid #ccc;}
.msec-cont .msec-visual .item{position:Relative;}
.msec-cont .msec-visual .item a{display:block}
.msec-cont .msec-visual .item img{width:100%;}

.msec-visual .slick-dots{height:15px; margin:0; padding:0; display:block; position:absolute; right:0; bottom:15px; text-align:center;}
.msec-visual .slick-dots li{width:14px; height:14px;padding:0; margin:0 0 0 5px;}
.msec-visual .slick-dots li button{position:relative;margin:0; padding:0; width:14px; height:14px; background:#fff; display:inline-block; vertical-align:top;border-radius:100%;}
.msec-visual .slick-dots li.slick-active button{ background:#2b559a;}





.msec-cont.msec-02{margin-top:15px;}

.msec-cont .msec-help{float:left; width:29%; box-sizing:border-box; padding:20px; height:248px;border:1px solid #ccc;position:relative;}
.msec-cont .msec-help h3{ font-size:22px; font-weight:600; color:#111; border-bottom:2px solid #ccc ;padding-bottom:13px; margin-bottom:10px;}
.msec-cont .msec-help h3 span{font-size:18px; padding-left:7px; color:#666}
.msec-cont .msec-help .info{width:288px; height:73px; margin:10px auto 0px auto;; box-sizing:border-box;letter-spacing:-0.03em;;padding-left:70px;background:url(../_Img/Main/msec-cs.gif) no-repeat;background-size:59px auto; }
.msec-cont .msec-help .info .btxt{font-size:20px; color:#666; font-weight:bold; line-height:120%; padding-top:10px}
.msec-cont .msec-help .info .stxt{font-size:27px; color:#579635; line-height:120%; font-weight:bold;}
.msec-cont .msec-help .ctxt{font-size:15px; line-height:150%; color:#333;}
.msec-cont .msec-help .ctxt.mg30t{margin-top:15px}

.msec-cont .msec-notice{float:left; width:70%; box-sizing:border-box; padding:20px;height:248px;border:1px solid #ccc;margin:0 0 0 1%;position:relative;}
.msec-cont .msec-notice h3{ font-size:22px; font-weight:600; color:#111;border-bottom:2px solid #ccc;padding-bottom:15px; margin-bottom:10px;}
.msec-cont .msec-notice .more{ width:24px; height:28px; background:url(../_Img/Main/more-btn.jpg) no-repeat center center; position:Absolute; right:20px; top:17px;}
.msec-cont .msec-notice li{border-top:1px solid #e1e1e1}
.msec-cont .msec-notice li a{display:block; position:relative; padding:8px 100px 8px 10px;  line-height:120%;}
.msec-cont .msec-notice li a:before{width:3px; height:3px; border-radius:100%; position:absolute; left:0; top:15px; display:block; content:"";background:#555;}
.msec-cont .msec-notice li .tit{white-space: nowrap; overflow: hidden; text-overflow: ellipsis;display:block;  color:#111;}
.msec-cont .msec-notice li .date{position:absolute; right:0; top:12px; line-height:120%; color:#555;font-size:15px; }
.msec-cont .msec-notice li:first-child{border-top:none;}


.msec-cont .msec-quick{ float:right;box-sizing:border-box;}
.msec-cont .msec-quick a{display:block; width:305px; height:248px; background:url(../_Img/Main/b_info.jpg) no-repeat center center;}

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
	margin:10px 0;
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
	/* margin: 10px 0 10px auto; */
	border-radius: 5px;
	width: 95px;
	height: 40px;
	cursor: pointer;
	position: absolute;
    right: 35px;
}

.pledge-modal--con .logo{
	position:absolute;
	top:0px;
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
		</style>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/es6-promise/4.1.1/es6-promise.auto.js"></script>
	<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js"></script>
	</head>
	<body>
<!--	<input type="button" id="printBtn" value="다운로드"/>-->
	<div id="capture">



	<div class="pledge-modal--con">
	<div class="con-wrap">
		<div class="logo">
			<img src="../img/kh_logo.png" alt="logo" />
		</div>
		<div class="header">
			윤리강령 준수 실천 서약서<br />
			<div class="sub">
				금호건설에 소속된 본인은 모든 업무 수행 시 아래의 실천과제를 이행할 것을 약속합니다.
			</div>
		</div>
		<div class="content">
				<strong>1. 윤리경영</strong><br />
				<p>주어진 권한과 책임 하에 직무에 최선을 다하며, 제반법규와 규정.제도를 준수하고 개인적 이익을 위해 직권남용, 허위, 과장, 은폐, 누설 행위 등을 하지 않겠습니다.</p>
				<strong>2. 준법과 공정경쟁</strong><br />
				<p>사회활동 및 상거래와 관련하여 기업이 지켜야 할 기업윤리 및 상도의 등을 성실히 준수하도록 노력하겠습니다.</p>
				<strong>3. 협력회사와의 공정한 거래</strong><br />
				<p>협력회사와의 모든 거래는 투명하고 공정한 거래를 보장하여야 하며, 우월적 지위를 이용한 어떠한 형태의 부당한 행위도 하지 않겠습니다.</p>
				<strong>4. 환경·안전경영</strong><br />
				<p>안전사고 및 화재 위험진단을 사전 예방하고 각종 사고의 제로화를 추진하여 "환경·안전경영"을 실천 하겠습니다.</p>
				<strong>5. 사회봉사 활동</strong><br />
				<p>생활이 어려운 기초생활 수급자, 독거노인, 소년소녀 가장 등 불우한 이웃들에게 자원봉사를 통하여 소외계층 돕기를 실천 하겠습니다.</p>
				<strong>6. 임직원의 책무 및 보상</strong><br />
				<p>회사의 중요한 자산인 제반 노하우나 정보는 회사의 승인없이 외부로 유출시킬 수 없으며, 이를 보호하기 위하여 최선을 다하겠습니다.</p>
				<strong>7. 주주 및 투자자 존중</strong><br />
				<p>주주와의 상호 신뢰관계 유지를 위해 기업정보를 정해진 법규에 따라 투명하게 공개하여야 하며, 회계자료 등의 처리 및 보고는 회계관련 법규 및 규정 등을 준수하겠습니다.</p>
		</div>
		<form class="signature-section" action="./pledge/pld_update.php" method="post">
			<div class="date-line">
				2025년
				<?php echo $row2['pld_month']?> 월 <?php echo $row2['pld_day']?>일
			</div>
			<div class="name-line">
				소속:
				<?php echo $row2['pld_enb']?> <br />
				사번:
				<?php echo $row2['pld_enb2']?> <br />
				성명:
				<?php echo $row2['pld_name']?>
			</div>
			<div class="bottom-wrap">
				<strong>금호건설 귀중</strong>
			</div>
		</form>
	</div>
	</div>

	</body>
		<script>
		var fileName       = "2025_<?php echo $row2['pld_name']?>";
		var year = new Date().getFullYear();
		var month = new Date().getMonth() + 1;
		var date = new Date().getDate();

	
		$(document).ready(function(){
 	//fn_init();

		 function fn_init() {
    html2canvas($('#capture')[0]).then(function(canvas) {
        // 캔버스를 이미지로 변환
        let imgData = canvas.toDataURL('image/png');

        let margin = 10; // 출력 페이지 여백설정
        let imgWidth = 210 - (10 * 2); // 이미지 가로 길이(mm) A4 기준
        let pageHeight = imgWidth * 1.414;  // 출력 페이지 세로 길이 계산 A4 기준
        let imgHeight = canvas.height * imgWidth / canvas.width;
        let heightLeft = imgHeight;

        let doc = new jsPDF('p', 'mm');
        let position = margin;

        // 첫 페이지 출력
        doc.addImage(imgData, 'PNG', margin, position, imgWidth, imgHeight);
        heightLeft -= pageHeight;

        // 한 페이지 이상일 경우 루프 돌면서 출력
        while (heightLeft >= 20) {
            position = heightLeft - imgHeight;
            doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
            doc.addPage();
            heightLeft -= pageHeight;
        }

        // 파일 저장
        doc.save(fileName);
    });
		 }
});


		

	</script>
</html>