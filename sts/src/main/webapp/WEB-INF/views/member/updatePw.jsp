<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<link rel="stylesheet" href="${path}/resources/css/newLogin.css">
<title>새 비밀번호</title>
<div id="wrap">
	<div class="login-form-wrap">
		<div class="login-form-tit">
			<a href="/"><img src="${path}/resources/img/logo.png"></a>
			<p class="pwd-comment-new">새 비밀번호를 입력해주세요</p>
		</div>
		<div class="login-form-input-box">
			<form action="/member/updatePwPro" method="post">
				<input type="hidden" value="${res.member_idx}" name="member_idx" />
				<input type="hidden" value="${res.member_loginId}"
					name="member_loginId" />
				<div class="id-pass-inputs-box">
					<div class="i-p-input-box">
						<div class="i-p-input-inner">
							<input data-testid="input-box" name="member_password"
								placeholder="새 비밀번호 입력" type="password" class="id-input" />
						</div>
					</div>
					<div class="i-p-input-box">
						<div class="i-p-input-inner">
							<input data-testid="input-box" name="member_passwordCheck"
								placeholder="새 비밀번호 확인" type="password" class="id-input" />
						</div>
					</div>
				</div>
				<div class="login-Btns-box">
					<button class="login-Btn" type="submit">
						<span>변경하기</span>
					</button>
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		</div>
	</div>
</div>