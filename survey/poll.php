<?php
	include_once('./_common.php');
	
	//srvy_type = O >> 객관식
	
	$srvy_code = 5;		//설문지 코드 : 5
	$srvd_count = 20;	//설문지 문항 개수 : 20
	#설문지 정보 가져오기
	$srvy = get_survey($srvy_code);

	if(!$srvy['srvy_code'])
		alert('존재하지 않는 진단입니다.');	
	
	for( $i=1; $i<=$srvd_count; $i++ )
	{
		if($i < 11)
			$arr_data[] = ${"q".$i};
		else
			$arr_data[] = ${"sq".$i};
	}
	
	$srvy_data = implode("#",$arr_data);
	//print_r($srvy_data);
	
	$sql_common = "  
				srvy_code 		= '{$srvy_code}',
				srvy_name 		= '{$srvy['srvy_name']}',
				srvy_point 		= '{$srvy['srvy_point']}',
				srvy_type 		= '{$srvy['srvy_type']}',
				srvy_year 		= '{$srvy['srvy_year']}',
				srvd_ex 		= '{$srvy_data}',
				srvd_count 		= '{$srvd_count}'";

	sql_query(" insert into {$g5['survey_data_table']} set srvd_uid = '{$member['mb_id']}', srvd_rdate = '".G5_TIME_YMDHIS."', {$sql_common} ");
?>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
<script>
alert('설문 조사가 완료 되었습니다.');
window.open('about:blank','_self').close();
window.close();
self.close();
</script>