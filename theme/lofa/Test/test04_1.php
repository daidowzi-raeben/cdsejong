<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

/*if (G5_IS_MOBILE) {
    include_once(G5_THEME_MOBILE_PATH.'/index.php');
    return;
}*/

include_once(G5_THEME_PATH.'/head.php');
add_stylesheet('<link rel="stylesheet" href="'. CD_THEME_CSS_URL .'/poll.css?ver='.G5_CSS_VER.'">', 1);
?>
<style>
	input[type=radio]{
		transform: scale(1.2);
	}
</style>
<div id="svisual-wrap">
	<div class="vistxt">
		<p class="btxt"><span>진단마당</span></p>
		<p class="stxt">진단마당은 임직원의 내부청렴도 조사, <br />윤리의식 자율진단,윤리경영 의식수준 조사 등 주로<br />내부 임직원을 대상으로 진단을 수행하는 과정입니다. </p>
	</div>
	<div class="visimg vis01"></div>
</div>
<div class="content-ov">
	<div id="subNavi-wrap">
		<div id="subNavi">
			<div class="lm-tit">
				<div class="tit">
					<p class="btxt">survey section</p>
					<p class="stxt">진단마당</p>
				</div>
			</div>		
			<div class="leftmenu" id="leftmenu">
				<ul class="depth2">
					<li id="lm01" class='lm_l2'><a href="test01.php"  class='lm_a2'><span class='isTxt'>윤리의식 수준지수 진단 </span></a></li>
					<li id="lm02" class='lm_l2'><a href="test02.php"  class='lm_a2'><span class='isTxt'>윤리 실천자가 진단</span></a></li>
					<li id="lm03" class='lm_l2'><a href="test03.php"  class='lm_a2'><span class='isTxt'>직장 내 괴롭힘 설문조사</span></a></li>
					<li id="lm04" class='lm_l2 over'><a href="test04.php"  class='lm_a2'><span class='isTxt'>인권의식 인식도 설문조사</span></a></li>
				</ul>
			</div>
		</div>
		<? include_once(G5_THEME_PATH.'/help.php');?>
	</div>
	<div id="contents">
            <img src="<?php echo G5_THEME_URL ?>/_Img/Content/poll/title6.png" width="810" height="179" alt="" />
            <div class="cont-top">
                <ul class="path">
                    <li>HOME</li>
                    <li>진단마당</li>
                    <li>인권경영 인식도 설문조사</li>
                </ul>
            </div>
            <!-- page-start // -->
            <div class="table-top-tit">
                <img src="<?php echo G5_THEME_URL ?>/_Img/Content/arrow_right.png" alt="" />
                <span>인권경영 지수측정(17개문항)</span>
            </div>
            <table width="810" class="t_style4" >
                <colspan>
                    <col width="10%" />
                    <col width="40%" />
                    <col width="10%" />
                    <col width="10%" />
                    <col width="10%" />
                    <col width="10%" />
                    <col width="10%" />
                </colspan>
                <thead>
                  <tr class="head">
                    <th>번호</th>
                    <th>질문 문항</th>
                    <th>예</th>
                    <th>보완필요</th>
                    <th>아니요</th>
                    <th>정보없음</th>
                    <th>해당없음</th>
                  </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>①</td>
                        <td class="left">회사는 인권에 대한 UN 인권기본헌장 등 국제기준 및 규범을 지지하고 준수하고 있다.</td>
                        <td><input type="radio" name="q1" id="radio1_1" value="1_1" /></td>
                        <td><input type="radio" name="q1" id="radio1_2" value="1_2" /></td>
                        <td><input type="radio" name="q1" id="radio1_3" value="1_3" /></td>
                        <td><input type="radio" name="q1" id="radio1_4" value="1_4" /></td>
                        <td><input type="radio" name="q1" id="radio1_5" value="1_5" /></td>
                    </tr>
                    <tr>
                        <td>②</td>
                        <td class="left">회사는 인권침해를 사전에 예방하고, 인권이고 침해된 경우 적극적인 구제를 위한 노력을 하고 있다.</td>
                        <td><input type="radio" name="q2" id="radio2_1" value="2_1" /></td>
                        <td><input type="radio" name="q2" id="radio2_2" value="2_2" /></td>
                        <td><input type="radio" name="q2" id="radio2_3" value="2_3" /></td>
                        <td><input type="radio" name="q2" id="radio2_4" value="2_4" /></td>
                        <td><input type="radio" name="q2" id="radio2_5" value="2_5" /></td>
                    </tr>
                    <tr>
                        <td>③</td>
                        <td class="left">회사는 고용에 있어 인종, 종교, 장애, 성별, 학력, 나이, 신체적 조건, 출신 국가, 출신 지 역, 정치적 견해, 고용형태(비정규직 직원) 등의 이유로 차별하지 않는다.</td>
                        <td><input type="radio" name="q3" id="radio3_1" value="3_1" /></td>
                        <td><input type="radio" name="q3" id="radio3_2" value="3_2" /></td>
                        <td><input type="radio" name="q3" id="radio3_3" value="3_3" /></td>
                        <td><input type="radio" name="q3" id="radio3_4" value="3_4" /></td>
                        <td><input type="radio" name="q3" id="radio3_5" value="3_5" /></td>
                    </tr>
                    <tr>
                        <td>④</td>
                        <td class="left">회사는 임직원 상하관계를 불문하고 상호간에 언어·신체적 폭력행위, 직장 내 괴롭힘 등을 하지 않도록 적극적인 인권보호 의무를 실천한다.</td>
                        <td><input type="radio" name="q4" id="radio4_1" value="4_1" /></td>
                        <td><input type="radio" name="q4" id="radio4_2" value="4_2" /></td>
                        <td><input type="radio" name="q4" id="radio4_3" value="4_3" /></td>
                        <td><input type="radio" name="q4" id="radio4_4" value="4_4" /></td>
                        <td><input type="radio" name="q4" id="radio4_5" value="4_5" /></td>
                    </tr>
                    <tr>
                        <td>⑤</td>
                        <td class="left">회사는 소속 직원의 노동조합 결성 및 단체교섭의 자유를 보장한다.</td>
                        <td><input type="radio" name="q5" id="radio5_1" value="5_1" /></td>
                        <td><input type="radio" name="q5" id="radio5_2" value="5_2" /></td>
                        <td><input type="radio" name="q5" id="radio5_3" value="5_3" /></td>
                        <td><input type="radio" name="q5" id="radio5_4" value="5_4" /></td>
                        <td><input type="radio" name="q5" id="radio5_5" value="5_5" /></td>
                    </tr>
                    <tr>
                        <td>⑥</td>
                        <td class="left">회사는 강제노동, 아동노동을 금지하며 보건, 안전 근무시간 등과 관련하여 국제노동기구가 권고하고 국가가 비준한 모든 노동원칙을 준수하고 있다.</td>
                        <td><input type="radio" name="q6" id="radio6_1" value="6_1" /></td>
                        <td><input type="radio" name="q6" id="radio6_2" value="6_2" /></td>
                        <td><input type="radio" name="q6" id="radio6_3" value="6_3" /></td>
                        <td><input type="radio" name="q6" id="radio6_4" value="6_4" /></td>
                        <td><input type="radio" name="q6" id="radio6_5" value="6_5" /></td>
                    </tr>
                    <tr>
                        <td>⑦</td>
                        <td class="left">회사는 임직원에게 위생적이고, 안전한 작업장을 제공할 뿐만 아니라, 이해관계자의 안전을 보장하는 제도 및 환경을 조성하고 있다.</td>
                        <td><input type="radio" name="q7" id="radio7_1" value="7_1" /></td>
                        <td><input type="radio" name="q7" id="radio7_2" value="7_2" /></td>
                        <td><input type="radio" name="q7" id="radio7_3" value="7_3" /></td>
                        <td><input type="radio" name="q7" id="radio7_4" value="7_4" /></td>
                        <td><input type="radio" name="q7" id="radio7_5" value="7_5" /></td>
                    </tr>
                    <tr>
                        <td>⑧</td>
                        <td class="left">회사는 모든 협력사에게 평등한 기회를 보장하고, 투명하고 공정한 거래를 통해 인권침해행위가 발생하지 않도록 하고 있다.</td>
                        <td><input type="radio" name="q8" id="radio8_1" value="8_1" /></td>
                        <td><input type="radio" name="q8" id="radio8_2" value="8_2" /></td>
                        <td><input type="radio" name="q8" id="radio8_3" value="8_3" /></td>
                        <td><input type="radio" name="q8" id="radio8_4" value="8_4" /></td>
                        <td><input type="radio" name="q8" id="radio8_5" value="8_5" /></td>
                    </tr>
                    <tr>
                        <td>⑨</td>
                        <td class="left">회사는 사업 활동이 일어나는 지역에서 현지주민의 생명권, 거주이전의 자유, 개인의 안전 에 대한 권리 및 재산권을 존중하고 보호하고 있다..</td>
                        <td><input type="radio" name="q9" id="radio9_1" value="9_1" /></td>
                        <td><input type="radio" name="q9" id="radio9_2" value="9_2" /></td>
                        <td><input type="radio" name="q9" id="radio9_3" value="9_3" /></td>
                        <td><input type="radio" name="q9" id="radio9_4" value="9_4" /></td>
                        <td><input type="radio" name="q9" id="radio9_5" value="9_5" /></td>
                    </tr>
                    <tr>
                        <td>⑩</td>
                        <td class="left">회사는 국내외 환경관련 법규를 준수하고 환경훼손과 오염발생의 사전예방 등을 위한 환경 친화적인 경영을 하고 있으며, 이와 관련된 정보를 공개하고 있다.</td>
                        <td><input type="radio" name="q10" id="radio10_1" value="10_1" /></td>
                        <td><input type="radio" name="q10" id="radio10_2" value="10_2" /></td>
                        <td><input type="radio" name="q10" id="radio10_3" value="10_3" /></td>
                        <td><input type="radio" name="q10" id="radio10_4" value="10_4" /></td>
                        <td><input type="radio" name="q10" id="radio10_5" value="10_5" /></td>
                    </tr>
                    <tr>
                        <td>⑪</td>
                        <td class="left">회사는 사업을 영위함에 있어 법규 및 규정 준수를 위한 최소한의 개인정보만을 요구하고 기록하며, 모든 이해관계자의 개인정보 보호를 위하여 보안체계를 구축하여 운영하고 있다.</td>
                        <td><input type="radio" name="q11" id="radio11_1" value="11_1" /></td>
                        <td><input type="radio" name="q11" id="radio11_2" value="11_2" /></td>
                        <td><input type="radio" name="q11" id="radio11_3" value="11_3" /></td>
                        <td><input type="radio" name="q11" id="radio11_4" value="11_4" /></td>
                        <td><input type="radio" name="q11" id="radio11_5" value="11_5" /></td>
                    </tr>
                    <tr>
                        <td>⑫</td>
                        <td class="left">회사는 경영활동에 있어서 인간의 존엄과 가치를 보장하기 위하여 인권경영헌장을 선포하고, 임직원은 헌장을 인권경영의 행동규범 및 가치판단 기준으로 삼고 실천하고 있다.</td>
                        <td><input type="radio" name="q12" id="radio12_1" value="12_1" /></td>
                        <td><input type="radio" name="q12" id="radio12_2" value="12_2" /></td>
                        <td><input type="radio" name="q12" id="radio12_3" value="12_3" /></td>
                        <td><input type="radio" name="q12" id="radio12_4" value="12_4" /></td>
                        <td><input type="radio" name="q12" id="radio12_5" value="12_5" /></td>
                    </tr>
                    <tr>
                        <td>⑬</td>
                        <td class="left">회사는 인권경영을 효과적으로 추진하기 위하여 인권경영의 목표 및 기본방향, 인권경영 추진과제 및 실행과제 등 중장기적인 계획을 수립하고 있다.</td>
                        <td><input type="radio" name="q13" id="radio13_1" value="13_1" /></td>
                        <td><input type="radio" name="q13" id="radio13_2" value="13_2" /></td>
                        <td><input type="radio" name="q13" id="radio13_3" value="13_3" /></td>
                        <td><input type="radio" name="q13" id="radio13_4" value="13_4" /></td>
                        <td><input type="radio" name="q13" id="radio13_5" value="13_5" /></td>
                    </tr>
                    <tr>
                        <td>⑭</td>
                        <td class="left">회사는 인권존중 조직문화를 확산시키기 위하여 전 임직원을 대상으로 연 1회 이상의 인 권 관련 교육을 실시하고 있다.</td>
                        <td><input type="radio" name="q14" id="radio14_1" value="14_1" /></td>
                        <td><input type="radio" name="q14" id="radio14_2" value="14_2" /></td>
                        <td><input type="radio" name="q14" id="radio14_3" value="14_3" /></td>
                        <td><input type="radio" name="q14" id="radio14_4" value="14_4" /></td>
                        <td><input type="radio" name="q14" id="radio14_5" value="14_5" /></td>
                    </tr>
                    <tr>
                        <td>⑮</td>
                        <td class="left">회사는 임직원을 포함한 이해관계자의 인권 보호 및 증진, 인권경영의 효율적 추진을 위하여 인권경영위원회를 운영하고 있다.</td>
                        <td><input type="radio" name="q15" id="radio15_1" value="15_1" /></td>
                        <td><input type="radio" name="q15" id="radio15_2" value="15_2" /></td>
                        <td><input type="radio" name="q15" id="radio15_3" value="15_3" /></td>
                        <td><input type="radio" name="q15" id="radio15_4" value="15_4" /></td>
                        <td><input type="radio" name="q15" id="radio15_5" value="15_5" /></td>
                    </tr>
                    <tr>
                        <td>⑯</td>
                        <td class="left">회사는 기관운영, 주요사업 등 임직원과 이해관계자의 인권에 영향을 미치는 사안을 대상으로 연 1회 이상 인권영향평가를 실시하고 있다.</td>
                        <td><input type="radio" name="q16" id="radio16_1" value="16_1" /></td>
                        <td><input type="radio" name="q16" id="radio16_2" value="16_2" /></td>
                        <td><input type="radio" name="q16" id="radio16_3" value="16_3" /></td>
                        <td><input type="radio" name="q16" id="radio16_4" value="16_4" /></td>
                        <td><input type="radio" name="q16" id="radio16_5" value="16_5" /></td>
                    </tr>
                    <tr>
                        <td>⑰</td>
                        <td class="left">회사는 인권침해행위에 대한 상담·처리를 위하여 인권상담센터를 운영할 뿐만 아니라, 인권침해를 구제하기 위해 적극적으로 노력하고 있다.    </td>
                        <td><input type="radio" name="q17" id="radio17_1" value="17_1" /></td>
                        <td><input type="radio" name="q17" id="radio17_2" value="17_2" /></td>
                        <td><input type="radio" name="q17" id="radio17_3" value="17_3" /></td>
                        <td><input type="radio" name="q17" id="radio17_4" value="17_4" /></td>
                        <td><input type="radio" name="q17" id="radio17_5" value="17_5" /></td>
                    </tr>
                </tbody>
            </table>
            
            <p class="btn"><span class="btn_next2"><a href="#"><img src="<?php echo G5_THEME_URL ?>/_Img/Content/poll/btn_sub.png" alt="제출" width="107" height="37" /></a> </span> </p>
            <!-- page-end //-->
	</div>
</div>
<script>
	$('.btn_next2').on('click',function (){


		var chk = true;
		var list = []

		$.each($('tbody tr'),function (index, item){

			if(chk == false){
				return false;
			}

			var _score = $(this).find('input[type=radio]:checked').val()

			if(_score == null){

				alert(index+1 + "번 문항 답해주세요.");
				$(this).find('input[type=radio]').focus();

				chk = false;
				return false;
			}
		})

		if(chk){
			alert("응답이 완료되었습니다.");
			window.location.href='/Test/test04.php'
			//$("form").submit();
		}

		




	})
</script>
<?php
include_once(G5_THEME_PATH.'/tail.php');