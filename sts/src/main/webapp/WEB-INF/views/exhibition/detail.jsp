<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/resources/css/exi_detail.css" />

<meta charset="UTF-8">
<title>전시회 상세</title>
</head>
<body>
	<div class="ex_detail_header">
		<p>${detail.exhibition_title}</p>
		<p>작성일자: ${detail.exhibition_registDate}</p>
		<div class="edit">
			<sec:authorize access="isAuthenticated() and hasRole('ROLE_ADMIN')">
				<a href="/exhibition/update?exhibition_idx=${detail.exhibition_idx}"
					role="button">수정</a>
				<a href="/exhibition/delete?exhibition_idx=${detail.exhibition_idx}"
					role="button">삭제</a>
			</sec:authorize>
		</div>
	</div>
	<div class="ex_detail_contents">
		<div class="whysomndiv">
			<img src="${detail.exhibition_img}" alt="Image 1">
		</div>
		<div class="ex_details">
			<table>
				<tr>
					<th>작가명
					<td>| ${detail.exhibition_writer}</td>
				</tr>
				<tr>
					<th>전시기간
					<td>| ${detail.exhibition_start} ~ ${detail.exhibition_end}</td>
				</tr>
				<tr>
					<th>전시지역
					<td>| ${detail.exhibition_region}</td>
				</tr>
				<tr>
					<th>전시장소
					<td>| ${detail.exhibition_location}</td>
				</tr>
				<tr>
					<th>관련링크</th>
					<td>| <c:choose>
							<c:when test="${empty detail.exhibition_url}"> N/A
        </c:when>
							<c:otherwise>
								<a href="${detail.exhibition_url}">${detail.exhibition_url}</a>
							</c:otherwise>
						</c:choose></td>
				</tr>
			</table>
		</div>
		<p class="ex_detail_content_long">${detail.exhibition_contents}</p>
		<div class="rcm_container">
			<span>이런 전시는 어떠세요?</span>
			<div class="rmd">
				<div class="rmd2">
					<div class="grid-container" id="myrcm">
						<div class="grid-item">
							<img src="https://neolook.com/archives/2023061501b.jpg" />
							<p class="item-label">제14회 畵歌 물,길 Traces of Water</p>
						</div>
						<div class="grid-item">
							<img src="https://neolook.com/archives/2023101201a.jpg" />
							<p class="item-label">길상화사吉祥畵社, 겸재를 기리다e</p>
						</div>
						<div class="grid-item">
							<img src="https://neolook.com/archives/2023040404d.jpg" />
							<p class="item-label">검은 먹, 한 점 A Speck of Black Ink</p>
						</div>
						<div class="grid-item">
							<img src="https://neolook.com/archives/2023030901h.jpg" />
							<p class="item-label">뒤틀린 데이터 Data Distorted</p>
						</div>
						<div class="grid-item">
							<img src="https://neolook.com/archives/2023072007c.jpg" />
							<p class="item-label">Lands and Legends</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="list">
			<a href="<c:url value='/exhibition/exhibitionList?listPageNum=1'/>">목록</a>
		</div>
	</div>
	<script>
		window.onload = function () {
		    var exhibitionTitle = document.querySelector(".ex_detail_header p").innerText;
		    var recommendationsDiv = document.getElementById('myrcm');
		    fetch('http://127.0.0.1:5002/recommendations', {
		        method: 'POST',
		        headers: {
		            'Content-Type': 'application/json'
		        },
		        body: JSON.stringify({ exhibition_title: exhibitionTitle })
		    })
		    .then(response => response.json())
		    .then(data => {
		        console.log(data);
		        recommendationsDiv.innerHTML = '';
		        data.forEach(recommendation => {
		            var gridItem = document.createElement('div');
		            gridItem.className = 'grid-item';
		            var imgElement = document.createElement('img');
		            imgElement.src = recommendation.exhibition_img;
		            var titleElement = document.createElement('p');
		            titleElement.className = 'item-label';
		            titleElement.textContent = recommendation.exhibition_title;

		            gridItem.appendChild(imgElement);
		            gridItem.appendChild(titleElement);
		            recommendationsDiv.appendChild(gridItem);
		        });
		     })
		     .catch(error => {
		         console.error('Error:', error);
		     });
		}
	</script>
</body>
</html>