<?php
include_once('./_common.php');
include_once(G5_THEME_PATH.'/head.php');
?>

<link rel="stylesheet" href="./css/style.css" />
<link
  rel="stylesheet"
  href="./css/swiper-bundle.min.css"
/>
<script src="./js/swiper-bundle.min.js"></script>

		<div class="contents">
			<img
				src="./images/contents_top1.png"
				alt=""
				class="left-image"
			/>
			<img
				src="./images/contents_top2.png"
				alt=""
				class="right-image"
			/>

			<div class="contents-sub">
				지속가능한 기업문화를 위한
			</div>
			<div class="contents-tit">
				직무 윤리 콘텐츠 인큐베이터
			</div>
			<form>
				<div class="search-wrap">
					<input
						type="text"
						placeholder="“신회 윤리” 를 검색해 보세요"
					/>
					<button
						type="button"
						class="btn btn-search"
					></button>
				</div>
			</form>
			<div class="icon-list">
				<div class="tit">추천 서비스</div>
				<div class="list">
					  <button type="button" class="btn icon-7">
						공통
					  </button>
					<button type="button" class="btn icon-1">
						제조업
					</button>
					<button type="button" class="btn icon-2">
						건설업
					</button>
					<button type="button" class="btn icon-3">
						유통업
					</button>
					<button type="button" class="btn icon-4">
						금융업
					</button>
					<!-- 주석 풀어주시고 service_icon5.svg, service_icon6.svg만 넣어주세요 -->
					<button type="button" class="btn icon-5">
						ㅇㅇ업
					  </button>
					  <button type="button" class="btn icon-6">
						ㅇㅇ업
					  </button>
				</div>
			</div>
		</div>
		<div class="my-incu--wrap">
			<div class="my-incu">
				<button type="button" class="btn my-incu--tit" onclick="incuFold()">
					나의 콘텐츠 인큐베이터
					<span class="count"
						><span class="color">1</span>개 /
						<span class="color">15</span>분</span
					>
					<span
						class="btn btn-fold"
						id="foldBtn"
					></span>
				</button>
				<div class="my-incu--con" id="foldCon">
					<div class="my-incu--slide">
						<ul class="my-incu--list swiper-wrapper">
							<li class="item swiper-slide">
								<div class="img-wrap">
									<span class="badge red">#윤리경영</span>
									<img src="./images/thumb.png" alt="" />
								</div>
								<div class="text-wrap">
									<p class="info">제조업 · 5분</p>
									윤리경영이란?
								</div>
								<div class="btn-wrap">
									<button
										type="button"
										class="btn btn-blue"
									>
										미리보기
									</button>
									<button type="button" class="btn btn-red">
										삭제하기
									</button>
								</div>
							</li>
							<li class="item swiper-slide">
								<div class="img-wrap">
									<span class="badge blue">#준법경영</span>
									<img src="./images/thumb2.png" alt="" />
								</div>
								<div class="text-wrap">
									<p class="info">제조업 · 5분</p>
									신뢰 운리 성과
								</div>
								<div class="btn-wrap">
									<button
										type="button"
										class="btn btn-blue"
									>
										미리보기
									</button>
									<button type="button" class="btn btn-red">
										삭제하기
									</button>
								</div>
							</li>
							<li class="item swiper-slide">
								<div class="img-wrap">
									<span class="badge red">#윤리경영</span>
									<img src="./images/thumb.png" alt="" />
								</div>
								<div class="text-wrap">
									<p class="info">제조업 · 5분</p>
									윤리경영이란?
								</div>
								<div class="btn-wrap">
									<button
										type="button"
										class="btn btn-blue"
									>
										미리보기
									</button>
									<button type="button" class="btn btn-red">
										삭제하기
									</button>
								</div>
							</li>
							<li class="item swiper-slide">
								<div class="img-wrap">
									<span class="badge red">#윤리경영</span>
									<img src="./images/thumb.png" alt="" />
								</div>
								<div class="text-wrap">
									<p class="info">제조업 · 5분</p>
									윤리경영이란?
								</div>
								<div class="btn-wrap">
									<button
										type="button"
										class="btn btn-blue"
									>
										미리보기
									</button>
									<button type="button" class="btn btn-red">
										삭제하기
									</button>
								</div>
							</li>
						</ul>
						<div class="swiper-button-prev"></div>
						<div class="swiper-button-next"></div>
					</div>
					<button
						type="button"
						class="btn btn-incu btn-blue"
					>
						나의 콘텐츠 선택 +
					</button>
				</div>
			</div>
		</div>
		<div class="incu-list--top">
			<button
				type="button"
				class="btn btn-select"
				onclick="modalOpen('selectModal')"
			>
				제조업 부문
			</button>
			<div class="list">
				<button type="button" class="btn btn-tag active">
					#전체
				</button>
				<button type="button" class="btn btn-tag">
					#공공
				</button>
				<button type="button" class="btn btn-tag">
					#윤리경영
				</button>
				<button type="button" class="btn btn-tag">
					#청렴경영
				</button>
				<button type="button" class="btn btn-tag">
					#준법경영
				</button>
				<button type="button" class="btn btn-tag">
					#인권경영
				</button>
				<button type="button" class="btn btn-tag">
					#ESG경영
				</button>
				<button type="button" class="btn btn-tag">
					#지속가능경영
				</button>
			</div>
		</div>
		<div class="contents-wrap">
			<ul class="my-incu--list">
				<li class="item" onclick="modalOpen('detailModal')">
					<div class="img-wrap">
						<span class="badge red">#윤리경영</span>
						<img src="./images/thumb.png" alt="" />
					</div>
					<div class="text-wrap">
						<p class="info">제조업 · 5분</p>
						윤리경영이란?
					</div>
				</li>
				<li class="item" onclick="modalOpen('detailModal')">
					<div class="img-wrap">
						<span class="badge blue">#준법경영</span>
						<img src="./images/thumb2.png" alt="" />
					</div>
					<div class="text-wrap">
						<p class="info">제조업 · 5분</p>
						신뢰 운리 성과
					</div>
				</li>
				<li class="item" onclick="modalOpen('detailModal')">
					<div class="img-wrap">
						<span class="badge red">#윤리경영</span>
						<img src="./images/thumb3.png" alt="" />
					</div>
					<div class="text-wrap">
						<p class="info">제조업 · 5분</p>
						데이터 침해 및 개인정보 침해
					</div>
				</li>
			</ul>
		</div>

		<div class="modal" id="selectModal">
			<div
				class="modal-dim"
				onclick="modalClose('selectModal')"
			></div>
			<div class="modal-con">
				<div class="modal-tit">
					분류선택
					<button
						type="button"
						class="btn btn-close"
						onclick="modalClose('selectModal')"
					>
						&times;
					</button>
				</div>
				<div class="category-list">
					<button type="button" class="btn">전체</button>
					<button type="button" class="btn">
						공공 부문
					</button>
					<button type="button" class="btn">
						제조업 부문
					</button>
					<button type="button" class="btn">
						건설업 부문
					</button>
					<button type="button" class="btn">
						의료업 부문
					</button>
					<button type="button" class="btn">
						유통업 부문
					</button>
				</div>
			</div>
		</div>
		<div class="modal" id="detailModal">
			<div
				class="modal-dim"
				onclick="modalClose('detailModal')"
			></div>
			<div class="modal-con">
				<div class="modal-tit type-image">
					<img src="./images/thumb.png" alt="" class="bg" />
					과정 상세보기
					<button
						type="button"
						class="btn btn-close"
						onclick="modalClose('detailModal')"
					>
						&times;
					</button>
					<div class="modal-sub">
						<div class="badge-wrap">
							<span class="badge red">공공부문</span>
							<span class="badge green">윤리경영</span>
							<span class="badge black">15분</span>
						</div>
						윤리적 리더십
					</div>
				</div>
				<div class="course-wrap">
					<div class="course-tit">학습목표</div>
					<div class="course-explain">
						윤리적 리더십(Ethical leadership)이란 리더
						개인이 행동뿐만 아니라 리더가 대인 관계에서
						규범을 지킴은 물론, 조직 구성원들이 그에 걸맞은
						의사결정을 할 수 있도록 장려하고 유도하는
						리더십을 말한다
					</div>
					<div class="course-info">
						<div class="row">
							<div class="tit">학습 내용</div>
							1. 과정(영상종합)<br />
							2. 인트로 영상<br />
							3. 개요<br />
							4. 내용 영상<br />
							5. 퀴즈 영상<br />
							6. 정리 영상
						</div>
						<div class="row">
							<div class="tit">과정소개</div>
							윤리적 리더십(Ethical leadership)이란 리더
							개인이 행동뿐만 아니라 리더가 대인 관계에서
							규범을 지킴은 물론, 조직 구성원들이 그에
							걸맞은 의사결정을 할 수 있도록 장려하고
							유도하는 리더십을 말한다
						</div>
						<div class="row">
							<div class="tit">학습대상</div>
							윤리적 리더십(Ethical leadership)이란 리더
							개인이 행동뿐만 아니라 리더가 대인 관계에서
							규범을 지킴은 물론, 조직 구성원들이 그에
							걸맞은 의사결정을 할 수 있도록 장려하고
							유도하는 리더십을 말한다
						</div>
						<div class="row">
							<div class="tit">내용 전문가</div>
							윤리적 리더십(Ethical leadership)이란 리더
							개인이 행동뿐만 아니라 리더가 대인 관계에서
							규범을 지킴은 물론, 조직 구성원들이 그에
							걸맞은 의사결정을 할 수 있도록 장려하고
							유도하는 리더십을 말한다
						</div>
					</div>
				</div>
				<div class="btn-wrap">
					<button
						type="button"
						class="btn btn-blue btn-add"
					>
						선택하기
					</button>
					<button type="button" class="btn btn-black">
						닫기
					</button>
				</div>
			</div>
		</div>

		<script>
			const swiper = new Swiper('.my-incu--slide', {
				slidesPerView: 3,
				slidesPerGroup: 1,
				spaceBetween: 66,
				autoplay: false,
				loop: false,
				navigation: {
					nextEl: '.swiper-button-next',
					prevEl: '.swiper-button-prev',
				},
			});
			const modalOpen = (id) => {
				document.getElementById(id).classList.add('show');
			};
			const modalClose = (id) => {
				document
					.getElementById(id)
					.classList.remove('show');
			};
			const incuFold = () => {
				document
					.getElementById('foldBtn')
					.classList.toggle('active');
				document
					.getElementById('foldCon')
					.classList.toggle('active');
			};
		</script>

<?php
include_once(G5_THEME_PATH.'/tail.php');	