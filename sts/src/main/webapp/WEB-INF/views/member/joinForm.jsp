<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
<meta id="_csrf_header" name="_csrf_header"
	content="${_csrf.headerName}" />
<link rel="stylesheet" href="${path}/resources/css/reset.css" />
<link rel="stylesheet" href="${path}/resources/css/main.css" />
<link rel="stylesheet" href="${path}/resources/css/signup.css" />
<link rel="stylesheet" href="${path}/resources/css/modal_style.css" />

<title>회원가입 - 아트소다</title>

<script src="https://code.jquery.com/jquery-3.7.0.js"
	integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
	crossorigin="anonymous">
   
</script>
<script src="<c:url value="/resources/js/joinForm.js"/>"></script>
<!-- <script src="joinForm.js"></script> -->

<form action="/member/join" id="joinForm" method="post">
	<div id="l-main-content">
		<div class="signup-con-tit">회원가입</div>
		<!-- 회원가입 입력 폼 -->
		<div class="signup-form-box">
			<div class="si-fo-f_blank">
				<span class="essential-red">*</span> 필수입력사항
			</div>
			<div class="signup-form-space">
				<!-- 아이디 입력 -->
				<div class="signup-form-ele">
					<div class="signup-form-ele-la-box">
						<label class="form-ele-label"> 아이디 <span
							class="essential-red">*</span>
						</label>
					</div>
					<div class="form-input-box">
						<div class="form-input-inner-box">
							<input type="text" placeholder="아이디를 입력해주세요"
								class="su-form-input-sy" id="member_loginId"
								name="member_loginId" oninput="initCheck()" />
						</div>
					</div>
					<sec:csrfMetaTags />
					<div class="form-input-Btn-box">
						<button class="form-input-Btn-tex-st" type="button"
							onclick="CheckId()">
							<span>중복확인</span>
						</button>
					</div>
				</div>
				<!-- 비번입력 -->
				<div class="signup-form-ele">
					<div class="signup-form-ele-la-box">
						<label class="form-ele-label"> 비밀번호 <span
							class="essential-red">*</span>
						</label>
					</div>
					<div class="form-input-box">
						<div class="form-input-inner-box">
							<input type="password" placeholder="비밀번호를 입력해주세요"
								class="su-form-input-sy" id="member_password"
								name="member_password" />
						</div>
					</div>
				</div>
				<!-- 비번확인 -->
				<div class="signup-form-ele">
					<div class="signup-form-ele-la-box">
						<label class="form-ele-label"> 비밀번호확인 <span
							class="essential-red">*</span>
						</label>
					</div>
					<div class="form-input-box">
						<div class="form-input-inner-box">
							<input type="password" placeholder="비밀번호를 한번 더 입력해주세요"
								class="su-form-input-sy" id="member_password_check"
								name="member_passwordCheck" />
						</div>
					</div>
				</div>
				<!-- 이름 -->
				<div class="signup-form-ele">
					<div class="signup-form-ele-la-box">
						<label class="form-ele-label"> 이름 <span
							class="essential-red">*</span>
						</label>
					</div>
					<div class="form-input-box">
						<div class="form-input-inner-box">
							<input type="text" placeholder="이름을 입력해주세요"
								class="su-form-input-sy" id="member_name" name="member_name" />
						</div>
					</div>
				</div>
				<!-- 이메일 -->
				<div class="signup-form-ele">
					<div class="signup-form-ele-la-box">
						<label class="form-ele-label"> 이메일 <span
							class="essential-red">*</span>
						</label>
					</div>
					<div class="form-input-box">
						<div class="form-input-inner-box">
							<input type="text" placeholder="예: art_soda@art.com"
								class="su-form-input-sy" id="member_email" name="member_email" />
						</div>
					</div>
				</div>
				<!-- 휴대폰 -->
				<div class="signup-form-ele">
					<div class="signup-form-ele-la-box">
						<label class="form-ele-label"> 휴대폰 <span
							class="essential-red">*</span>
						</label>
					</div>
					<div class="form-input-box">
						<div class="form-input-inner-box">
							<input type="text" placeholder="숫자만 입력해주세요"
								class="su-form-input-sy" id="member_tel" name="member_tel" />
						</div>
					</div>
				</div>
				<!-- 회원유형 -->
				<div class="signup-form-ele">
					<div class="signup-form-ele-la-box">
						<label class="form-ele-label"> 가입유형 </label>
					</div>
					<div class="form-input-box">
						<div class="form-input-inner-box">
							<div class="gender-radio-box">
								<label class="gender-radio-la" for="member_category_regular">
									<input data-testid="member_category_regular"
									id="member_category_regular" name="member_category"
									type="radio" class="gender-radio-input" value="regular" checked />
									<span class="radio-Btn-style">
										<div class="radio-Btn-select-circle"></div>
								</span> <span class="radio-Btn-tex">일반회원</span>
								</label> <label class="gender-radio-la" for="member_category_company">
									<input data-testid="member_category_company"
									id="member_category_company" name="member_category"
									type="radio" class="gender-radio-input" value="company"
									disabled /> <span class="radio-Btn-style">
										<div class="radio-Btn-select-circle"></div>
								</span> <span class="radio-Btn-tex">기업회원</span>
								</label>
							</div>
							<span class="radio-description">기업으로 등록하실 회원은 관리자에게
								문의해주세요.</span>
						</div>
					</div>
				</div>
				<!-- 폼 영역 나눔 선 -->
				<div class="form-border-bottom"></div>
				<!-- 이용약관동의 -->
				<div class="use-agree-fo-bx">
					<div class="signup-form-ele-la-box">
						<label class="form-ele-label"> 이용약관동의 <span
							class="essential-red">*</span>
						</label>
					</div>
					<div class="use-agree-r-box">
						<div class="use-agree-r-ele">
							<label class="use-agree-r-ele-la-sty" for="TermsAgreeAll">
								<input id="TermsAgreeAll" type="checkbox"
								class="use-agree-r-ele-input-sty" />
								<div class="use-agree-Btn-cir-icon">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
										xmlns="http://www.w3.org/2000/svg">
                    <path
											d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
											stroke="#ddd" fill="#fff"></path>
                    <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
											stroke-width="1.5" stroke-linecap="round"
											stroke-linejoin="round"></path>
                  </svg>
								</div> <span class="use-agree-r-ele-la-all">전체 동의합니다.</span>
							</label>
							<p class="agree-sub-text">선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를
								이용할 수 있습니다.</p>
						</div>
						<div class="use-agree-r-ele-fir">
							<label class="use-agree-r-ele-la-sty" for="TermsAgreeAll">
								<input id="TermsAgreeAll" type="checkbox"
								class="use-agree-r-ele-input-sty" />
								<div class="use-agree-Btn-cir-icon">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
										xmlns="http://www.w3.org/2000/svg" class="clickable">
                    <path
											d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
											stroke="#ddd" fill="#fff" id="path3"></path>
                    <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
											stroke-width="1.5" stroke-linecap="round"
											stroke-linejoin="round" id="path4"></path>
                  </svg>
								</div> <span class="use-agree-r-ele-la-nor">이용약관 동의</span> <span
								class="use-agree-r-ele-la-nor-esse">(필수)</span> <a href="#"
								class="pop-term-Btn">약관보기</a>
							</label>
						</div>
						<div class="use-agree-r-ele">
							<label class="use-agree-r-ele-la-sty" for="TermsAgreeAll">
								<input id="TermsAgreeAll" type="checkbox"
								class="use-agree-r-ele-input-sty" />
								<div class="use-agree-Btn-cir-icon">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
										xmlns="http://www.w3.org/2000/svg" class="clickable">
                    <path
											d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
											stroke="#ddd" fill="#fff" id="path1"></path>
                    <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
											stroke-width="1.5" stroke-linecap="round"
											stroke-linejoin="round" id="path2"></path>
                  </svg>
								</div> <span class="use-agree-r-ele-la-nor">개인정보 수집·이용 동의</span> <span
								class="use-agree-r-ele-la-nor-esse">(필수)</span> <a href="#"
								class="pop-term-Btn">약관보기</a>
							</label>
						</div>
						<!-- 약관보기 모달창 -->
						<!-- 모달 팝업 배경 -->
						<div class="modal-bg" id="modalBg">
							<!-- 모달 팝업 내용 -->
							<div class="modal-content" id="modalContent">
								<!-- 약관 상세 내용 -->
								<div class="wrapper">
									<h1>이용약관(필수)</h1>
									<div class="scroll_wrapper">
										<strong class="tit_main">총칙</strong>
										<div class="terms_view">
											<strong class="tit_main">제1조 [정의]</strong> 아트소다 ( '
											Artsoda::아트소다 ' 이하 ' http://artsoda.com ' ) 은(는) 개인정보보호법에 따라
											이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과
											같은 처리방침을 두고 있습니다. <br /> 아트소다 ( ' Artsoda::아트소다 ' 이하 '
											http://artsoda.com ' ) 은(는) 회사는 개인정보처리방침을 개정하는 경우 웹사이트 공지사항
											(또는 개별공지)을 통하여 공지할 것입니다. <strong class="tit_main">제2조
												[개인정보의 처리목적]</strong> 아트소다 ( ' Artsoda::아트소다 ' 이하 '
											http://artsoda.com ' ) 은(는) 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는
											다음의 목적이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다. <br />
											가. 홈페이지 회원가입 및 관리 회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격
											유지·관리, 만14세 미만 아동 개인정보 수집 시 법정대리인 동의 여부 확인 <br /> 나. 마케팅 및
											광고에의 활용 이벤트 및 광고성 정보 제공 및 참여기회 제공 , 서비스의 유효성 확인, 접속빈도 파악 또는
											회원의 서비스 이용에 대한 통계 <br /> <strong class="tit_main">제3조
												[개인정보 파일 현황]</strong> 아트소다 ( ' Artsoda::아트소다 ' 이하 '
											http://artsoda.com ' ) 가(이) 개인정보 보호법 제32조에 따라 등록, 공개하는
											개인정보파일의 처리목적은 다음과 같습니다. 1. 개인정보 파일명 : 아트소다 개인정보처리방침 - 개인정보 항목
											: 이메일, 휴대전화번호, 비밀번호, 로그인ID, 성별, 서비스 이용 기록, 쿠키 - 수집방법 : 홈페이지 -
											보유근거 : . - 보유기간 : 3년 - 관련법령 : ※ 기타 < 아트소다 > ( ' Artsoda::아트소다
											' 이하 ' http://artsoda.com ' ) 의 개인정보파일 등록사항 공개는 행정안전부 개인정보보호
											종합지원 포털 (www.privacy.go.kr) > 개인정보민원 > 개인정보열람등 요구 > 개인정보파일
											목록검색 메뉴를 활용해주시기 바랍니다. <br /> <strong class="tit_main">II.
												회사의 서비스</strong> <strong class="tit_main">제4조 [개인정보처리 위탁]</strong> ①
											아트소다 ( ' Artsoda::아트소다 ' ) 은(는) 원활한 개인정보 업무처리를 위하여 다음과 같이
											개인정보 처리업무를 위탁하고 있습니다. <br /> 1.
											<아트집> - 위탁받는 자 (수탁자) : 아트집 - 위탁하는 업무의 내용 : 회원제 서비스 이용에
											따른 본인확인, 불만처리 등 민원처리, 고지사항 전달, 이벤트 및 광고성 정보 제공 및 참여기회 제공 -
											위탁기간 : 준영구 <br />
											② 아트소다 ( ' Artsoda::아트소다 ' 이하 ' http://artsoda.com ' ) 은(는)
											위탁계약 체결시 개인정보 보호법 제25조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적․관리적
											보호조치, 재위탁 제한, 수탁자에 대한 관리․감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에
											명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다. <br />
											③ 위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.
											<strong class="tit_main">제5조 [정보주체의 권리,의무 및 그 행사방법]</strong>
											① 정보주체는 '아트소다'('http://artsoda.com'이하 'Artsoda::아트소다') 에 대해
											언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다. <br />
											- 1. 개인정보 열람요구 - 2. 오류 등이 있을 경우 정정 요구 - 3. 삭제요구 - 4. 처리정지 요구
											<br />
											② 제1항에 따른 권리 행사는 '아트소다'('http://artsoda.com'이하
											'Artsoda::아트소다') 에 대해 개인정보 보호법 시행규칙 별지 제8호 서식에 따라 서면, 전자우편,
											모사전송(FAX) 등을 통하여 하실 수 있으며 '아트소다'('http://artsoda.com'이하
											'Artsoda::아트소다') 은(는) 이에 대해 지체 없이 조치하겠습니다. <br />
											③ 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는
											'아트소다'('http://artsoda.com'이하 'Artsoda::아트소다') 은(는) 정정 또는 삭제를
											완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다. <br />
											④ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다.
											이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다 <strong
												class="tit_main">III. 회원가입 계약</strong> <strong
												class="tit_main">제6조 [회원가입]</strong> ① 이용자는 아트소다가 정한 가입 양식에
											따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다. <br />
											② 아트소다는 전항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로
											등록합니다. <br />
											1. 가입신청자가 이 약관 제7조항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조에 의한
											회원자격 상실 후 3년이 경과한 자로서 "아트소다"의 회원재가입 승낙을 얻은 경우에는 예외로 합니다. <br />
											2. 회원의 요청에 의하여 탈퇴한 때로부터 1개월이 지나지 아니한 경우 <br />
											3. 가입신청자가 기입한 등록 내용에 허위, 기재 누락 또는 오기가 있는 경우 <br />
											4. 가입신청자가 만 14세 미만인 경우 <br />
											5. 기타 회원으로 등록하는 것이 아트소다의 기술상 또는 서비스 운영 관점에서 현저히 지장이 있거나
											부적절하다고 판단되는 경우 <br />
											③ 회원가입계약의 성립 시기는 아트소다의 승낙이 회원에게 도달한 시점으로 합니다. <br />
											④ 회원은 회원가입 시 등록한 사항에 변경이 있는 경우, 상당한 기간 이내에 아트소다에 대하여 회원정보 수정
											등의 방법으로 그 변경사항을 알려야 하며, 변경을 하지 아니하여 발생하는 불이익은 회원이 부담합니다. <strong
												class="tit_main">제7조 [회원 탈퇴 및 자격 상실 등]</strong> ① 회원은 아트소다에
											언제든지 탈퇴를 요청할 수 있으며 아트소다는 회원의 요청을 받을 경우 사이버몰을 통하여 아트소다가 고지한
											방법에 따라 신속하게 회원 탈퇴를 처리합니다. 단, 회원이 아트소다에 대한 채무를 부담하고 있는 경우 탈퇴가
											제한될 수 있습니다. <br />
											② 회원이 다음 각 호의 어느 하나의 사유에 해당하는 경우, 아트소다는 회원 자격을 제한, 정지 또는 상실시킬
											수 있습니다. <br />
											1. 가입 신청 시에 타인의 정보 또는 허위의 정보를 입력하거나 가입 내용에 정보의 누락, 오기가 있는 경우
											<br />
											2. 아트소다를 이용하여 구입한 상품 등의 대금, 기타 아트소다 이용과 관련하여 회원이 부담하는 채무를 기일에
											지급하지 않는 경우 <br />
											3. 다른 사람의 아트소다 이용을 방해하거나 그 정보를 도용하는 등 건전한 거래 질서를 위협하는 경우 <br />
											4. 아트소다를 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우 <br />
											5. 아트소다가 제공하는 서비스 이용방법을 따르지 않고 비정상적인 방법으로 서비스를 이용하거나 시스템에
											접근하는 경우 <br />
											6. 기타 다음과 같은 행위를 통해 아트소다의 건전한 운영을 해하거나 컬리의 업무를 방해하는 경우 <br />
											가. 아트소다의 운영과 관련하여 근거 없는 사실 또는 허위의 사실을 적시하거나 유포하여 컬리의 명예를
											실추시키거나 아트소다의 신뢰도를 해하는 경우 <br />
											나. 아트소다의 이용과정에서 직원에게 폭언, 협박 또는 음란한 언행, 이에 준하는 행동 등으로 컬리의 운영을
											방해하는 경우 <br />
											다. 아트소다를 통하여 상품 등을 구매한 후 정당한 이유 없이 상습 또는 반복적으로 취소·반품하거나 이의를
											제기하는 등으로 아트소다의 업무를 방해하는 경우 <br />
											라. 아트소다가 본인 확인 절차를 실시할 경우 본인 확인이 되지 않거나 본인이 아님이 확인된 경우 <br />
											마. 이미 가입된 아트소다의 회원과 개인정보(이름, 전화번호, 주소 등)가 동일하거나, 여러 정보/사정을
											종합하여 볼 때 동일인으로 합리적으로 인정되는 기존 회원이 중복 가입한 경우 <br />
											바. 재판매 목적 등으로 컬리에서 상품 등을 중복 구매하는 등 부정한 용도 또는 영리를 추구할 목적으로
											서비스를 이용하거나 그와 같은 사정이 합리적으로 의심되는 경우 <br />
											사. 동일/유사한 ID, 전화번호, 주소 등의 회원정보를 통하여 부정한 사용을 하는 것으로 의심되는 경우 <br />
											아. 매크로, 다수 생성 ID 사용 등 부정한 방법을 통해 서비스를 이용(어뷰징)하는 경우 <br />
											자. 아트소다로부터 서비스 제한, 회원 자격 정지 조치 등을 받은 회원이 그 조치기간 중에 이용계약을
											임의해지하고 재회원가입 등을 통해 서비스를 이용하는 경우 <br />
											차. 무단으로 아트소다가 판매하는 상품 등에 관한 정보, 사이버몰에 게시된 콘텐츠 등 자료를 수집하여 외부에
											제출, 게시, 유용하는 등으로 컬리의 저작권, 상표권 등 지식재산권을 비롯한 아트소다의 권리를 침해하는 경우
											<br />
											카. 개별 상품 등 또는 이벤트 등과 관련하여 사전 고지된 정책이나 거래 조건을 위계 기타 부정한 방법으로
											회피하여 건전한 거래질서를 해하는 경우 <br />
											③ 회원이 전항의 어느 하나에 해당하는 경우, 컬리는 별도의 사전 통지 없이 회원에게 기존에 제공한
											혜택(적립금, 쿠폰 등)을 회수하거나 서비스 이용 제한(주문 취소, 배송 취소 등)의 조치를 취할 수
											있습니다. 또한, 아트소다가 회원에 대하여 보유하는 채권(손해배상 등)이 있을 경우 회원에 대한 채무와 상계할
											수 있습니다. <br />
											④ 아트소다가 회원 자격을 상실시키는 경우에는 회원 등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원
											등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다. <strong
												class="tit_main">제8조 [회원에 대한 통지]</strong> ① 아트소다가 회원에 대한 통지를
											하는 경우, 회원이 컬리와 미리 약정하여 지정한 전자우편(또는 우편), 문자, 전화, 팩스 등의 방법으로 할
											수 있습니다. <br />
											② 아트소다는 불특정다수 회원에 대한 통지의 경우 7일 이상 사이버몰에 게시함으로써 개별 통지에 갈음할 수
											있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별 통지합니다. <strong
												class="tit_main">제9조 [이용자의 서비스 이용]</strong> ① 마켓플레이스 서비스와
											관련하여 아트소다는 통신판매중개자로서 통신판매의 당사자가 아니며, 이용자와 판매자 간의 자유로운 상품 등의
											거래를 위한 시스템을 제공할 뿐이므로, 이용자는 상품 등을 구매하기 전에 반드시 판매자가 사이버몰 내에 작성한
											상품 등의 상세 내용과 거래의 조건을 정확하게 확인해야 합니다. 구매하려는 상품 등의 내용과 거래의 조건을
											확인하지 않고 구매하여 발생한 모든 손해는 이용자 본인이 부담합니다. <br />
											② 이용자는 이 약관 및 아트소다가 사이버몰 등을 통해 공지하는 내용을 준수하여야 하고, 이 약관 및 공지
											내용을 위반하거나 이행하지 않아 발생하는 모든 손해에 대하여 책임을 부담합니다. <br />
											③ 이용자는 판매자와 상품 등 매매 절차에서 분쟁이 발생하면 분쟁의 해결을 위하여 성실히 임해야 하며,
											분쟁해결 과정에서 이용자의 불성실 등 이용자의 귀책사유로 판매자와 아트소다에 발생한 손해에 대하여는 이용자가
											책임을 부담합니다. <br />
											④ 이용자는 대금의 결제와 관련하여 이용자가 입력한 정보 및 그 정보와 관련하여 발생하는 제반 문제에 대한
											모든 책임을 부담합니다. <br />
											⑤ 아트소다는 이용자에게 서비스가 안전하게 제공될 수 있도록 각종 설비와 자료를 관리하고, 서비스가 제공
											목적에 맞게 이용되고 있는지 여부를 확인합니다. 만약 이용자가 이 약관 제7조 제2항, 제29조 및 기타
											서비스 이용 목적을 위반한 것으로 확인되면 아트소다는 그에 대한 소명을 이용자에게 요청할 수 있고, 주문 취소
											등 필요한 조치를 할 수 있습니다. <br />
											⑥ 이용자는 아트소다가 이용자의 서비스 이용 편의를 위하여 판매자 등으로부터 제공 받은 상품 등 관련 정보와
											기타 콘텐츠를 사이버몰을 통하여 제공하는 경우에도 상품 등의 구매 여부는 이용자 본인의 판단과 책임으로
											결정합니다. <br />
											⑦ 대금지급 수단과 관련한 제11조 내지 제13조의 규정은 마켓플레이스 서비스를 이용하는 경우에도 적용됩니다.
											<br />
											⑧ 미성년자가 아트소다를 통하여 상품 등을 구매하는 경우에 법정대리인이 해당 계약에 대하여 동의하지 아니하면,
											미성년자 본인 또는 법정대리인은 그 계약을 취소할 수 있습니다. <strong class="tit_main">제10조
												[아트소다의 의무]</strong> ① 아트소다는 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이
											약관이 정하는 바에 따라 지속적이고, 안정적으로 상품 등 제공하기 위하여 최선을 다하여야 합니다. <br />
											② 아트소다는 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한
											보안 시스템을 갖추어야 합니다. <br />
											③ 아트소다가 상품이나 용역에 대하여 표시·광고의 공정화에 관한 법률 제3조 소정의 부당한 표시/광고행위를
											함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다. <br />
											④ 아트소다는 이용자가 동의하지 않은 영리목적의 광고성 전자우편을 발송하지 않습니다. <strong
												class="tit_main">제11조 [회원의 ID 및 비밀번호에 대한 의무]</strong> ① ID와
											비밀번호에 관한 관리책임은 회원에게 있습니다. <br />
											② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다. <br />
											③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 컬리에
											통보하고 컬리의 안내가 있는 경우에는 그에 따라야 합니다. <strong class="tit_main">VII.
												기타</strong> <strong class="tit_main">제12조 [이용자의 의무]</strong> 이용자는 다음
											행위를 하여서는 안 됩니다. <br />
											1. 회원등록 신청 또는 변경시 허위 내용의 등록 <br />
											2. 타인의 정보 도용 <br />
											3. 아트소다에 게시된 정보의 변경 <br />
											4. 아트소다가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시 <br />
											5. 아트소다 기타 제3자의 저작권 등 지식재산권에 대한 침해 <br />
											6. 아트소다 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위 <br />
											7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 사이버몰에 공개 또는 게시하는
											행위 <br />
											8. 회원이 아트소다가 제공하는 서비스를 이용하지 아니하고 판매자와 직접 거래하는 행위(이하 “직거래”라 함)
											또는 이를 유도하는 행위 <br />
											9. 아트소다 또는 판매자의 판매 활동을 방해하거나 아트소다를 이용하여 부당한 이득을 취하는 등 통상적인
											전자상거래 관행에 부합하지 않는 거래상의 부정 행위 <strong class="tit_main">제13조
												[지식재산권] </strong> ① 아트소다가 작성한 콘텐츠, 상품페이지(사진 포함)를 비롯한 일체의 저작물에 대한 저작권
											기타 지식재산권은 아트소다가 보유하며, 회원이 등록 또는 게시한 상품 후기, 콘텐츠 등 게시물(이하
											“게시물”이라 함)에 대한 저작권 기타 지식재산권은 회원이 보유합니다. <br />
											② 이용자는 아트소다의 서비스를 이용하는 과정에서 얻은 정보나 자료 중 아트소다에게 지식재산권이 귀속된 정보나
											자료를 아트소다의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 다른 목적(특히 영리
											목적)으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다. <br />
											③ 아트소다는 회원과 타인의 지식재산권이 서로 존중되고 보호받을 수 있도록 노력할 책임이 있고, 특히 타인에
											의해 회원의 지식재산권 침해가 확인될 경우 즉시 회원의 권리 보호를 위하여 필요한 조치를 취하고 이를 회원에게
											통지하는 등 회원이 게시한 게시물의 보호를 위하여 최선을 다하겠습니다. <br />
											④ 회원은 본인이 사이버몰 내에 등록 또는 게시한 게시물과 관련하여 합리적인 범위 내에서의 다음 각 호의
											사용행위를 허락합니다(기존 회원의 경우 이 약관 개정 전 게시한 게시물을 포함합니다). <br />
											1. 다른 회원의 동 게시물 사용 <br />
											2. 아트소다가 동 게시물을 검색결과로 사용 <br />
											⑤ 회원은 본인이 사이버몰 내에 등록 또는 게시한 게시물(기존 회원의 경우 이 약관 개정 전 게시한 게시물을
											포함합니다)을 회사가 국내 또는 국외에서 다음 각 호의 목적에 따라 필요한 범위 내에서 해당 게시물을
											편집(수정, 복제, 배포 등을 의미하며 이에 한정하지 아니함) 및 사용하는 것을 허락합니다. <br />
											1. 서비스 내에서 게시물을 사용하거나, 서비스를 홍보 또는 마케팅하기 위한 목적으로 인터넷, 모바일,
											SNS를 포함한 온ᆞ오프라인 채널을 통해 게시물의 내용을 보도, 방영하는 경우 <br />
											2. 게시물을 복제ᆞ전송ᆞ전시하는 방법으로 제휴서비스에서 게시물을 제공하는 경우 <br />
											⑥ 전항에도 불구하고 회원은 언제든지 컬리에게 자신이 게시한 게시물에 대한 삭제, 비공개, 사용중단 등을
											요청할 수 있고, 컬리는 제8조에 정한 방법으로 회원에게 콘텐츠의 사용 내용을 통지할 수 있습니다. <strong
												class="tit_main">제14조 [게시물 정책]</strong> ① 회원이 사이버몰에 등록 또는
											게시한 게시물에 대한 모든 책임은 회원에게 있습니다. 회원은 본인이 등록 또는 게시한 게시물이 다음 각호의
											어느 하나에 해당하지 아니함을 보증하며, 아트소다는 회원의 게시물이 다음 각호의 어느 하나에 해당한다고
											판단되는 경우에 사전통지 없이 삭제할 수 있습니다. <br />
											1. 타인을 모욕, 비방, 비하하거나 타인의 명예를 훼손하는 게시물 <br />
											2. 범죄 및 불법 행위에 악용될 수 있는 정보를 담고 있는 게시물 <br />
											3. 타인의 초상권, 저작권, 상표권 등 권리를 침해하는 게시물 <br />
											4. 음란성 및 혐오성 게시물(그러한 내용이 담긴 웹사이트, 앱 등으로 연결될 수 있는 게시물을 포함) <br />
											5. 어린이와 청소년의 정신적, 신체적 건강을 해칠 우려가 있는 선정적인 내용을 담은 게시물 <br />
											6. 특정인의 개인정보가 노출된 게시물 <br />
											7. 특정 상품 등을 소개하여 판매하거나, 이를 구매, 사용하도록 권하거나 연락을 유도하는 등 직∙간접적으로
											영리추구를 위한 내용을 담고 있는 게시물 <br />
											8. 사이버몰의 이용 목적에 부합하지 않거나, 해당 서비스 또는 게시판의 취지와 무관한 내용의 게시물 <br />
											9. 특정 단어나 문구를 단순 반복하는 등의 비정상적인 게시물 <br />
											10. 악성코드나 스파이웨어 등이 실행되어 다른 이용자, 컬리, 판매자 기타 제3자의 시스템 성능 저하,
											개인정보 유출 등의 피해를 줄 수 있는 악의적인 코드를 담고 있는 게시물 <br />
											11. 컬리의 영업을 방해하는 내용의 게시물 <br />
											12. 기타 이 약관 또는 법령에 위배되거나 공서양속에 반하는 내용의 게시물 <br />
											② 회원의 게시물이 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보 보호법 및 저작권법 등 관련
											법령에 위반되는 내용을 포함하는 경우, 권리자는 관련 법령이 정한 절차에 따라 해당 게시물의 게시중단 및 삭제
											등을 요청할 수 있으며, 아트소다는 관련 법령에 따라 조치를 취하여야 합니다. <br />
											③ 아트소다는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 컬리 정책
											및 관련 법령에 위반되는 경우에는 관련 법령에 따라 해당 게시물에 대해 임시조치 등을 취할 수 있습니다. <br />
											④ 이 조에 따른 세부절차는 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보 보호법 및 저작권법 등
											관련 법령이 규정한 범위 내에서 아트소다가 정하는 정책에 따릅니다. <strong
												class="tit_main">제15조 [면책조항]</strong> ① 아트소다는 천재지변 또는 이에 준하는
											불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다. <br />
											② 아트소다는 이용자의 귀책사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 않습니다. <br />
											③ 아트소다는 이용자가 서비스를 이용하여 기대하는 수익을 얻지 못하거나 상실한 것에 대하여 책임을 지지
											않으며, 그 밖의 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다. <br />
											④ 아트소다는 이용자가 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관해서는 책임을 지지 않습니다.
											<br />
											⑤ 아트소다는 이용자 간 또는 이용자와 제3자 상호간에 서비스를 매개로 하여 거래 등을 한 경우에는 책임을
											지지 않습니다. <br />
											⑥ 아트소다의 고의 또는 중과실로 인한 손해에 대해서는 제1항, 제3항 내지 제5항에 불구하고 아트소다가
											책임을 부담합니다. 제2항의 경우에는 아트소다의 고의 또는 과실로 인한 손해에 대해 위와 같습니다. <strong
												class="tit_main">* 부칙</strong> 1. 이 약관은 2022년 9월 5일부터 시행됩니다.
											<br />
											2. 2021년 6월 22일부터 시행되던 종전의 약관은 이 약관으로 대체됩니다. 
										</div>
									</div>
								</div>

								<div class="modal-close-Btn-box">
									<button id="closeModalBtn" class="modal-close-Btn"
										type="button">
										<span>확인</span>
									</button>
								</div>
							</div>
						</div>

						<div class="use-agree-r-ele">
							<label class="use-agree-r-ele-la-sty" for="TermsAgreeAll">
								<input id="TermsAgreeAll" type="checkbox"
								class="use-agree-r-ele-input-sty" />
								<div class="use-agree-Btn-cir-icon">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
										xmlns="http://www.w3.org/2000/svg">
                    <path
											d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
											stroke="#ddd" fill="#fff"></path>
                    <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
											stroke-width="1.5" stroke-linecap="round"
											stroke-linejoin="round"></path>
                  </svg>
								</div> <span class="use-agree-r-ele-la-nor">개인정보 수집·이용 동의</span> <span
								class="use-agree-r-ele-la-nor-esse">(선택)</span> <a href="#"
								class="pop-term-Btn">약관보기</a>
							</label>
						</div>

						<div class="use-agree-r-ele">
							<label class="use-agree-r-ele-la-sty" for="TermsAgreeAll">
								<input id="TermsAgreeAll" type="checkbox"
								class="use-agree-r-ele-input-sty" />
								<div class="use-agree-Btn-cir-icon">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
										xmlns="http://www.w3.org/2000/svg" class="clickable">
                    <path
											d="M23.5 12C23.5 18.3513 18.3513 23.5 12 23.5C5.64873 23.5 0.5 18.3513 0.5 12C0.5 5.64873 5.64873 0.5 12 0.5C18.3513 0.5 23.5 5.64873 23.5 12Z"
											stroke="#ddd" fill="#fff" id="path5"></path>
                    <path d="M7 12.6667L10.3846 16L18 8.5" stroke="#ddd"
											stroke-width="1.5" stroke-linecap="round"
											stroke-linejoin="round" id="path6"></path>
                  </svg>
								</div> <span class="use-agree-r-ele-la-nor">본인은 만 14세 이상입니다.</span> <span
								class="use-agree-r-ele-la-nor-esse">(필수)</span>
							</label>
						</div>
					</div>
				</div>
				<div class="signup-Btn-box-wrap">
					<button class="signup-Btn-subm" type="button" width="240"
						height="56" radius="3" onclick="joinMember()">
						<span class="signup-Btn-subm-tex"> 가입하기 </span>
					</button>
				</div>
			</div>
		</div>
		<script>
    <!-- 모달창 팝업 -->
    const popTermBtn = document.querySelector(".pop-term-Btn");
    const modalBg = document.getElementById("modalBg");
    const modalContent = document.getElementById("modalContent");
    const closeModalBtn = document.getElementById("closeModalBtn");
    
    popTermBtn.addEventListener("click", () => {
      modalBg.style.display = "flex";
      document.body.style.overflow = 'hidden';
    });
    
    closeModalBtn.addEventListener("click", () => {
      closeModal();
    });
    
    modalBg.addEventListener("click", (event) => {
      if (event.target === modalBg) {
        closeModal();
      }
    });
    
    function closeModal() {
      modalBg.style.display = "none";
      document.body.style.overflow = 'auto';
    }
    
    function handleSVGClick(event) {
        const clickedSVG = event.target;
        const pathElements = clickedSVG.querySelectorAll("path");
        
        // 클릭한 SVG 내에 있는 모든 path 요소의 stroke를 red로 변경
        pathElements.forEach(function (path) {
          path.setAttribute("stroke", "red");
        });
      }

      // 모든 class가 "clickable-svg"인 SVG 요소에 클릭 이벤트 리스너 등록
      const svgElements = document.querySelectorAll(".clickable");
      svgElements.forEach(function (svg) {
        svg.addEventListener("click", handleSVGClick);
      });
  </script>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
</form>