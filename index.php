<?php
include_once('./_common.php');

define('_INDEX_', true);
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

$sql = " SELECT * FROM sj_prs_pledge WHERE mb_id = '".$member['mb_id']."' and pld_year = '2025' ";
$result = sql_fetch($sql);
#echo $result['mb_id'];
if($member['mb_profile'] == '금호건설' && !$result['mb_id']) {
#if($member['mb_id'] == 'admin') {
	?>
<!-- 여기에 작업해주세요 -->
<div class="pledge-modal show" id="isShowModal">
	<div class="pledge-modal--dim"></div>
	<div class="pledge-modal--con">
		<div>
			<button style="position:fixed;left:50%; margin-left:370px;border:0; background:none; color:#fff; font-size:30px;" onclick="javascript:document.getElementById('isShowModal').classList.toggle('show')">X</button>
		</div>
		<div class="con-wrap">
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
					<input type="number" name="month" />월 <input type="number" name="day"/>일
				</div>
				<div class="name-line">
					소속:
					<input type="text" style="width: 150px" name="e_number" /> <br />
					호칭:
					<input type="text" style="width: 100px" name="e_number2" /> <br />
					성명:
					<input type="text" style="width: 100px" name="mb_name" />
					<input type="hidden" style="width: 100px" name="lssn" value="88" />
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





		<?php
}




		$sql = " SELECT * FROM sj_prs_pledge WHERE mb_id = '".$member['mb_id']."' and pld_year = '2025' ";
$result = sql_fetch($sql);
#echo $result['mb_id'];
if($member['mb_profile'] == '엘에스오토모티브' && !$result['mb_id']) {


	?>


<div class="pledge-modal show" id="isShowModal">
	<div class="pledge-modal--dim"></div>
	<div class="pledge-modal--con">
		<div>
			<button style="position:fixed;left:50%; margin-left:370px;border:0; background:none; color:#fff; font-size:30px;" onclick="javascript:document.getElementById('isShowModal').classList.toggle('show')">X</button>
		</div>
		<div class="con-wrap">
			<div class="header">
				윤리강령 준수 실천 서약서<br />
				<div class="sub">
					본인은 LS오토모티브㈜의 일원으로써 당사 경영철학인 "정도경영"의 실천
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
			</div>
			<form class="signature-section" action="./pledge/pld_update.php" method="post">
				<div class="date-line">
					2025년
					<input type="number" name="month" />월 <input type="number" name="day"/>일
				</div>
				<div class="name-line">
					소속:
					<input type="text" style="width: 150px" name="e_number" /> <br />
					사번:
					<input type="text" style="width: 100px" name="e_number2" /> <br />
					성명:
					<input type="text" style="width: 100px" name="mb_name" />
					<input type="hidden" style="width: 100px" name="lssn" value="89" />
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


		<?
}
if(defined('G5_THEME_PATH')) {
    require_once(G5_THEME_PATH.'/index.php');
    return;
}

if (G5_IS_MOBILE) {
    include_once(G5_MOBILE_PATH.'/index.php');
    return;
}

include_once(G5_PATH.'/head.php');

?>

<h2 class="sound_only">최신글</h2>

<div class="latest_top_wr">
    <?php
    // 이 함수가 바로 최신글을 추출하는 역할을 합니다.
    // 사용방법 : latest(스킨, 게시판아이디, 출력라인, 글자수);
    // 테마의 스킨을 사용하려면 theme/basic 과 같이 지정
    echo latest('pic_list', 'free', 4, 23);			// 최소설치시 자동생성되는 자유게시판
	echo latest('pic_list', 'qa', 4, 23);			// 최소설치시 자동생성되는 질문답변게시판
	echo latest('pic_list', 'notice', 4, 23);		// 최소설치시 자동생성되는 공지사항게시판
    ?>
</div>
<div class="latest_wr">
    <!-- 사진 최신글2 { -->
    <?php
    // 이 함수가 바로 최신글을 추출하는 역할을 합니다.
    // 사용방법 : latest(스킨, 게시판아이디, 출력라인, 글자수);
    // 테마의 스킨을 사용하려면 theme/basic 과 같이 지정
    echo latest('pic_block', 'gallery', 4, 23);		// 최소설치시 자동생성되는 갤러리게시판
    ?>
    <!-- } 사진 최신글2 끝 -->
</div>

<div class="latest_wr">
<!-- 최신글 시작 { -->
    <?php
    //  최신글
    $sql = " select bo_table
                from `{$g5['board_table']}` a left join `{$g5['group_table']}` b on (a.gr_id=b.gr_id)
                where a.bo_device <> 'mobile' ";
    if(!$is_admin)
	$sql .= " and a.bo_use_cert = '' ";
    $sql .= " and a.bo_table not in ('notice', 'gallery') ";     //공지사항과 갤러리 게시판은 제외
    $sql .= " order by b.gr_order, a.bo_order ";
    $result = sql_query($sql);
    for ($i=0; $row=sql_fetch_array($result); $i++) {
		$lt_style = '';
    	if ($i%3 !== 0 ) $lt_style = "margin-left:2%";
    ?>
    <div style="float:left;<?php echo $lt_style ?>" class="lt_wr">
        <?php
        // 이 함수가 바로 최신글을 추출하는 역할을 합니다.
        // 사용방법 : latest(스킨, 게시판아이디, 출력라인, 글자수);
        // 테마의 스킨을 사용하려면 theme/basic 과 같이 지정
        echo latest('basic', $row['bo_table'], 6, 24);
        ?>
    </div>
    <?php
    }
    ?>
    <!-- } 최신글 끝 -->
</div>
<?php
include_once(G5_PATH.'/tail.php');