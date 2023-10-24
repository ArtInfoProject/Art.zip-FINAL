<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<link rel="stylesheet" href="${path}/resources/css/newLogin.css">
<title>비밀번호 찾기</title>
<div id="wrap">
	<div class="login-form-wrap">
		<div class="login-form-tit">
			<a href="/"><img src="${path}/resources/img/logo.png"></a>
			<p class="pwd-comment">비밀번호를 찾고자하는 아이디와 이메일을 입력해주세요.</p>
		</div>
		<div class="login-form-input-box">
			<form action="/member/findPwPro" method="post">
				<div class="id-pass-inputs-box">
					<div class="i-p-input-box">
						<div class="i-p-input-inner">
							<input data-testid="input-box" name="member_loginId"
								placeholder="아이디를 입력해주세요" type="text" class="id-input" />
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
					<button class="login-Btn" type="submit">
						<span>다 음</span>
					</button>
				</div>
				<div class="find-id-pass-wrap">
					<a>아이디가 기억나지않는다면? </a> <span class="find-id-br"></span> <a
						class="id-search" onClick="location.href='/member/findId'">
						아이디 찾기</a>
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		</div>
	</div>
</div>

<script>
	
</script>