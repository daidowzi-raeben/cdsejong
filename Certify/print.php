<?php
include_once('./_common.php');

//로그인 체크
if(!$is_member) {
	alert(CD_LOGIN_MSG);
}

$sql_common = " from {$g5['certify_table']} as c ";

$sql_search = " where (1) and c.cer_uid = '{$id}' ";

$sql = " select * {$sql_common} {$sql_search} {$sql_order}";
$result = sql_fetch($sql);

if(!$result) {
	alert_close("잘못된 접근입니다");
}

$str_number = $result['cer_num'];
$str_name = $result['cer_name'];
?>
<!doctype html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>수료증</title>
    <link rel="stylesheet" href="//fonts.googleapis.com/earlyaccess/nanummyeongjo.css">
    <style>
        body{margin:0;padding:0;font-family:'Nanum Myeongjo', sans-serif;line-height: 1em;font-weight:600;}
        p, ul, li{margin: 0;list-style: none;padding: 0;}
        .wrapper{width: 525px;height: 744px;background:url('./img/background.png') no-repeat center;background-size:100% 100%;border:1px solid #ccc;position:relative}
        .number{font-size: 13px;left:80px;top:55px;position:absolute;}
        .info{position:absolute;left:80px;top: 225px;}
        .info li{font-size: 16px;line-height: 30px;display:flex;}
        .info li span{width:70px;text-align:justify;display:flex;justify-content: space-between;font-style:normal;margin-right: 5px;}
        .info li span i{font-style:normal;}
        .description{position:absolute;left:80px;top:365px;font-size: 19px;line-height: 35px;padding-right: 80px;text-indent:1em;text-align:justify}
        .date{position:absolute;top:525px;left:0;width:100%;text-align:center;font-size:19px;}
    </style>
</head>
<body>
<div class="wrapper">
    <p class="number">제<?php echo $str_number; ?>호</p>
    <ul class="info">
        <li>
            <span>
                <i>소</i>
                <i> </i>
                <i>속</i>
            </span> : ㈜디아크
        </li>
		<li>
            <span>
                <i>성</i>
                <i> </i>
                <i>명</i>
            </span> : <?php echo $str_name; ?>
        </li>
		<li>
            <span>
                <i>교</i>
                <i>육</i>
                <i>시</i>
				<i>간</i>
            </span> : 2시간
        </li>
        </li>
        <li>
            <span>
                <i>교</i>
                <i>육</i>
                <i>과</i>
				<i>정</i>
            </span> : 나와 조직을 지키는 윤리경영 가이드라인
        </li>
		
    </ul>

    <p class="description">
        위 사람은 세종교육원이 개설한「나와 조직을 지키는 윤리경영 가이드라인」윤리경영 교육 과정을 마쳤으므로 본 증서를
        수여 합니다.
    </p>

    <p class="date">
        2022년 10월 31일
    </p>
</div>
</body>
</html>