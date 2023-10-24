<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet" href="${path}/resources/css/newLogin.css" />
<script
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
	charset="utf-8"></script>
<title>로그인</title>
<div id="wrap">
	<div class="login-form-wrap">
		<div class="login-form-tit">
			<img src="${path}/resources/img/logo.png">
			<p>로그인</p>
		</div>
		<div class="login-form-input-box">
			<form action="/login" method="post">
				<div class="id-pass-inputs-box">
					<div class="i-p-input-box">
						<div class="i-p-input-inner">
							<input data-testid="input-box" name="member_loginId"
								placeholder="아이디를 입력해주세요" type="text" class="id-input" />
						</div>
					</div>
					<div class="i-p-input-box">
						<div class="i-p-input-inner">
							<input data-testid="input-box" name="member_password"
								placeholder="비밀번호를 입력해주세요" type="password" class="id-input" />
						</div>
					</div>
				</div>
				<div class="find-id-pass-wrap">
					<a href="#" onClick="location.href='/member/findId'" class="">아이디
						찾기</a> <span class="find-id-slash"></span> <a href="#"
						onClick="location.href='/member/findPw'">비밀번호 찾기</a>
				</div>
				<div class="login-Btns-box">
					<button class="login-Btn">
						<span>로그인</span>
					</button>
					<button class="signup-Btn" type="button" onClick="join()">
						<span>회원가입</span>
					</button>
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		</div>
	</div>
</div>

<script>
	function join() {
		location.href = "/member/joinPage"
	}
</script>