<?php
include_once("./_common.php");

$srvy_code  = trim($_POST['srvy_code']);	//설문지 코드
$srvd_count  = trim($_POST['srvy_count']);	//설문지 문항 개수

#설문지 정보 가져오기
$srvy = get_survey($srvy_code);

if(!$srvy['srvy_code'])
	alert('존재하지 않는 데이터입니다.');

for( $i=1; $i<=$srvd_count; $i++ )
{
	//echo $i . "=" . ${"q".$i} . "<br />";
	//$arr_data[] = ${"q".$i} ? ${"q".$i} : "_";
	$arr_data[] = ${"q".$i};
}

$srvy_data = implode("#",$arr_data);
$user_name = $_POST['username'];
$user_num = $_POST['usernumber'];

//echo $srvy_data;
//echo $user_num . " / " . $user_name;
//exit;
$sql_common = "  
				srvy_code 		= '{$srvy_code}',
				srvy_name 		= '{$srvy['srvy_name']}',
				srvy_point 		= '{$srvy['srvy_point']}',
				srvy_type 		= '{$srvy['srvy_type']}',
				srvy_year 		= '{$srvy['srvy_year']}',
				srvd_ex 		= '{$srvy_data}',
				srvd_count 		= '{$srvd_count}'";

//echo (" insert into {$g5['survey_data_table']} set srvd_uid = '{$member['mb_id']}', srvd_rdate = '".G5_TIME_YMDHIS."', {$sql_common} ");
//exit;
sql_query(" insert into {$g5['survey_data_table']} set srvd_uid = '{$member['mb_id']}', srvd_rdate = '".G5_TIME_YMDHIS."', {$sql_common} ");

?>
<script type="text/javascript">
	alert("설문 조사가 완료되었습니다");
	window.close();
</script>