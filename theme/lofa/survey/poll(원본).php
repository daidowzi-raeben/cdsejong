<?php
  $db_host = "localhost";
  $db_user = "sejongsurvey";
  $db_pass = "sejongdb21";
  $database = "sejongsurvey";

  ob_start();
  $connection = mysql_connect($db_host, $db_user, $db_pass) or die("Cannot establish connection to MySql Server.");
  $db = mysql_select_db($database, $connection) or die("Cannot select the database.");

  $end_time = date('Y-m-d H:i:s');
  $department = iconv("UTF-8", "EUC-KR", $_POST['department']);

  $ip = $_SERVER['REMOTE_ADDR'];

  if (mysql_num_rows(mysql_query("SELECT * FROM `poll` WHERE `ip` = '$ip'")) > 0) {
    echo "<meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
    <script>
    alert('중복 참여는 불가능 합니다.');
    window.open('about:blank','_self').close();
    window.close();
    self.close();
    </script>";
    exit;
  }

  mysql_query("INSERT INTO  `poll` (  `ip`, `department` ,  `start_time` ,  `end_time` ,  `q1` ,  `q2` ,  `q3` ,  `q4` ,  `q5` ,  `q6` ,  `q7` ,  `q8` ,  `q9` ,  `q10` ,  `q11` ,  `q12` ,  `q13` ,  `q14` ,  `q15` ,  `q16` ,  `q17` ,  `q18` ,  `q19` ,  `q20` ,  `q21` ,  `q22` ,  `q23` ,  `q24` ,  `q25` ,  `q26` ,  `q27` ,  `q28` ,  `q29` ,  `q30` ) 
VALUES ('$ip', '$department', '{$_POST['start_time']}',  '$end_time',  '{$_POST['q1']}',  '{$_POST['q2']}',  '{$_POST['q3']}',  '{$_POST['q4']}',  '{$_POST['q5']}',  '{$_POST['q6']}',  '{$_POST['q7']}',  '{$_POST['q8']}',  '{$_POST['q9']}',  '{$_POST['q10']}',  '{$_POST['sq1']}',  '{$_POST['sq2']}',  '{$_POST['sq3']}',  '{$_POST['sq4']}',  '{$_POST['sq5']}',  '{$_POST['sq6']}',  '{$_POST['sq7']}',  '{$_POST['sq8']}',  '{$_POST['sq9']}',  '{$_POST['sq10']}',  '{$_POST['sq11']}',  '{$_POST['sq12']}',  '{$_POST['sq13']}',  '{$_POST['sq14']}',  '{$_POST['sq15']}',  '{$_POST['sq16']}',  '{$_POST['sq17']}',  '{$_POST['sq18']}',  '{$_POST['sq19']}',  '{$_POST['sq20']}');");
?>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
<script>
alert('설문 조사가 완료 되었습니다.');
window.open('about:blank','_self').close();
window.close();
self.close();
</script>