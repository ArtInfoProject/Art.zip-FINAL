<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<link rel="stylesheet" href="${path}/resources/css/reset.css" />
<link rel="stylesheet" href="${path}/resources/css/main.css" />
<link rel="stylesheet" href="${path}/resources/css/myPage.css" />
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>마이페이지 - 아트소다</title>
<script src="https://code.jquery.com/jquery-3.7.0.js"
	integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
	crossorigin="anonymous">
	
</script>
<script type="text/javascript">
	function updateMember() {
		var updateConfirm = confirm('수정하시겠습니까?');
		if (updateConfirm) {
			$('#myPage').submit();
		}
	}
	function deleteMember() {
		var deleteConfirm = confirm('탈퇴를 하시겠습니까?');
		if (deleteConfirm) {
			location.href = "/member/auth/delete";
		}
	}
</script>
<div id="l-main-content">
	<div class="signup-con-tit">마이페이지</div>
	<!-- 회원가입 입력 폼 -->
	<div class="signup-form-box">
		<div class="si-fo-f_blank">회원정보를 확인하고 수정 하실 수 있습니다</div>
		<div class="signup-form-space">
			<form id="myPage" action="/member/auth/update" method="post">
				<input type="hidden"
					value="<sec:authentication property="principal.member.member_idx"/>"
					id="member_idx" name="member_idx" />
				<!-- 아이디 입력 -->
				<div class="signup-form-ele">
					<div class="signup-form-ele-la-box">
						<label class="form-ele-label"> 아이디 <span
							class="essential-red">*</span>
						</label>
					</div>
					<div class="form-input-box">
						<div class="form-input-inner-box">
							<input placeholder="test01" id="usr_id" name="member_loginId"
								readonly="readonly" type="text" class="su-form-input-sy"
								value="<sec:authentication property="principal.member.member_loginId"/>" />
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
							<input class="su-form-input-sy" id="name" name="member_name"
								title="성명" readonly="readonly" type="text" value="아트집"
								value="<sec:authentication property="principal.member.member_name"/>" />
						</div>
					</div>
				</div>
				<!-- 비번입력 -->
				<div class="signup-form-ele">
					<div class="signup-form-ele-la-box">
						<label class="form-ele-label"> 비밀번호 </label>
					</div>
					<div class="form-input-box">
						<div class="form-input-inner-box">
							<input type="text" placeholder="비밀번호를 입력해주세요"
								class="su-form-input-sy" />
						</div>
					</div>
				</div>
				<!-- 비번확인 -->
				<div class="signup-form-ele">
					<div class="signup-form-ele-la-box">
						<label class="form-ele-label"> 비밀번호확인 </label>
					</div>
					<div class="form-input-box">
						<div class="form-input-inner-box">
							<input type="text" placeholder="비밀번호를 한번 더 입력해주세요"
								class="su-form-input-sy" />
						</div>
					</div>
				</div>
				<!-- 이메일 -->
				<div class="signup-form-ele">
					<div class="signup-form-ele-la-box">
						<label class="form-ele-label"> 이메일 </label>
					</div>
					<div class="form-input-box">
						<div class="form-input-inner-box">
							<input type="text" placeholder="art_soda@art.com"
								name="member_email" class="su-form-input-sy"
								value="<sec:authentication property="principal.member.member_email"/>" />
						</div>
					</div>
				</div>
				<!-- 휴대폰 -->
				<div class="signup-form-ele">
					<div class="signup-form-ele-la-box">
						<label class="form-ele-label"> 휴대폰 </label>
					</div>
					<div class="form-input-box">
						<div class="form-input-inner-box">
							<input type="text" name="member_tel" placeholder="숫자만 입력해주세요"
								class="su-form-input-sy"
								value="<sec:authentication property="principal.member.member_tel"/>" />
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
								<sec:authentication var="category"
									property="principal.member.member_category" />
								<c:choose>
									<c:when test="${category eq 'regular'}">
										<label class="gender-radio-la" for="additional-recommender">
											<input data-testid="radio-RECOMMEND"
											id="additional-recommender" name="joinExtraInputType"
											type="radio" class="gender-radio-input" value="RECOMMEND"
											checked onclick="return(false);" /> <span
											class="radio-Btn-style">
												<div class="radio-Btn-select-circle"></div>
										</span> <span class="radio-Btn-tex">개인회원</span>
										</label>

										<label class="gender-radio-la" for="additional-event">
											<input data-testid="radio-EVENT" id="additional-event"
											name="joinExtraInputType" type="radio"
											class="gender-radio-input" value="EVENT"
											onclick="return(false);" /> <span class="radio-Btn-style">
												<div class="radio-Btn-select-circle"></div>
										</span> <span class="radio-Btn-tex">기업회원</span>
										</label>
									</c:when>
									<c:otherwise>
										<label class="gender-radio-la" for="additional-recommender">
											<input data-testid="radio-RECOMMEND"
											id="additional-recommender" name="joinExtraInputType"
											type="radio" class="gender-radio-input" value="RECOMMEND"
											onclick="return(false);" /> <span class="radio-Btn-style">
												<div class="radio-Btn-select-circle"></div>
										</span> <span class="radio-Btn-tex">개인회원</span>
										</label>
										<label class="gender-radio-la" for="additional-event">
											<input data-testid="radio-EVENT" id="additional-event"
											name="joinExtraInputType" type="radio"
											class="gender-radio-input" value="EVENT" checked
											onclick="return(false);" /> <span class="radio-Btn-style">
												<div class="radio-Btn-select-circle"></div>
										</span> <span class="radio-Btn-tex">기업회원</span>
										</label>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
				<div class="signup-Btn-box-wrap">
					<button class="signup-Btn-subm" type="button" width="240"
						height="56" radius="3" onclick="updateMember()">
						<span class="signup-Btn-subm-tex"> 수 정 </span>
					</button>
					<button class="delete-Btn-subm" type="button" width="240"
						height="56" radius="3" onclick="deleteMember()">
						<span class="signup-Btn-subm-tex"> 탈 퇴 </span>
					</button>
				</div>
		</div>
	</div>
	</form>