<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${path}/resources/css/newLogin.css">
<title>아이디 결과</title>
<div id="wrap">

	<div class="login-form-wrap">
		<div class="login-form-tit">
			<a href="/"><img src="${path}/resources/img/logo.png"></a>
			<p class="id-comment">요청하신 ID 찾기 결과는 다음과 같습니다.</p>
		</div>
		<div class="login-form-input-box">
			<div class="id-pass-inputs-box">
				<div class="i-p-input-box">
					<div class="id-input-result">
						<p class="result-comment">${loginId}</p>
					</div>
				</div>
			</div>
			<div class="login-Btns-box">
				<button class="login-Btn" onClick="home()">
					<span>닫 기</span>
				</button>
			</div>
		</div>
	</div>
</div>
<script>
	function home() {
		location.href = '/'
	}
</script>