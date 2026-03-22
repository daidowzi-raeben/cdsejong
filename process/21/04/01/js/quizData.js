var quizType = "multiple";
//<font color='#0036ff'><span style='border-bottom:2px solid #0036ff;'>않는</span></font>
var quizData = [];

quizData[0]={
	question :
		"기술 유출이 발생하기 어려운 상황은 무엇인가요?",
	answer : 2,
	bogiGap: 65,

	example_1 :"퇴직 후 경쟁사에 취업한 임원이 기술을 활용하는 경우",
	example_2 :"내부 회의에서 보안이 강화된 공간에서 논의하는 경우",
	example_3 :"협력업체 직원이 기술 정보를 촬영하여 유출하는 경우",
	example_4 :"지인과의 사적 술자리에서 신제품 정보를 무심코 언급하는 경우",

	explain : 
		"기술 유출 경로로 자주 발생하는 실제 사례입니다. 유출은 사소한 대화에서도 발생할 수 있습니다."
};

quizData[1]={
	question :
		"기밀 유출 상황에서 개인이 취해야 할 올바른 대응 방법은 무엇인가요?",
	answer : 3,
	bogiGap: 65,
	bogiStartY: 245,

	example_1 :"애매하게 넘기며 대화 주제를 바꾼다",
	example_2 :"회사에 알리지 않고 개인적으로 처리한다",
	example_3 :"명확히 거절하고, 필요 시 증거를 확보한 후 회사에 보고한다",
	example_4 :"상황이 심각해지면 그때 가서 조치한다",

	explain : 
		"보안 위협을 느꼈을 때는 즉각적인 거절, 증거 확보, 내부 보고가 핵심 대응 절차입니다. 유보하거나 애매하게 넘기는 것은 더 큰 문제로 이어질 수 있습니다."
};

quizData[2]={
	question :
		"기술 유출이 개인에게 미칠 수 있는 영향으로 가장 적절하지 않은 것은 무엇인가요?",
	answer : 4,
	bogiGap: 65,
	bogiStartY: 245,

	example_1 :"법적 처벌 및 취업 제한",
	example_2 :"조직 내 신뢰 상실과 대기발령",
	example_3 :"인간관계와 정신적 안정의 훼손",
	example_4 :"성과급 인센티브 지급 대상자 선정",

	explain : 
		"기술 유출은 신뢰 상실, 법적 처벌, 경력 훼손 등 심각한 부작용을 낳지만, 보안 위반자는 보상 대상이 될 수 없습니다. 오히려 불이익이 따릅니다."
};