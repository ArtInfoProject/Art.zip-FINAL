<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<link rel="stylesheet" href="${path}/resources/css/newLogin.css">
<title>아이디찾기</title>
<div id="wrap">

	<div class="login-form-wrap">
		<div class="login-form-tit">
			<a href="/"><img src="${path}/resources/img/logo.png"></a>
			<p class="id-comment">찾고자하는 아이디의 이메일을 입력해주세요.</p>
		</div>
		<div class="login-form-input-box">
			<form action="/member/findIdPro" method="post">
				<div class="id-pass-inputs-box">
					<div class="i-p-input-box">
						<div class="i-p-input-inner">
							<input data-testid="input-box" name="member_name"
								placeholder="이름을 입력해주세요" type="text" class="id-input" />
						</div>
					</div>
					<div class="i-p-input-box">
						<div class="i-p-input-inner">
							<input data-testid="input-box" name="member_email"
								placeholder="이메일을 입력해주세요" type="text" class="id-input" />
						</div>
					</div>
				</div>
				<div class="login-Btns-box">
					<button class="login-Btn">
						<span>다 음</span>
					</button>
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		</div>
	</div>
</div>