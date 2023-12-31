<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${path}/resources/css/contest.css" />
<title>공모</title>
</head>
<body>
	<div id="board-catetory">
		<p>공모전 소식</p>
	</div>
	<div id="table-container">
		<table>
			<c:forEach items="${list}" var="contest">
				<tr>
					<td rowspan="2"><a
						href="/contest/detail?contest_idx=${contest.contest_idx}"> <img
							src="${contest.contest_file}" alt=""></a></td>
					<td class="contest-title"><span class="conStatus">${contest.contest_status}</span><br>
						<a href="/contest/detail?contest_idx=${contest.contest_idx}">${contest.contest_title}&nbsp;</a>
					</td>
				</tr>
				<tr class="line">
					<td>
						<p>접수기간: ${contest.contest_start} ~ ${contest.contest_end}</p> <br>
						<p>🎨${contest.contest_region} | ${contest.contest_location}</p>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<sec:authorize access="isAuthenticated() and hasRole('ROLE_ADMIN')">
		<div class="list">
			<a href="<c:url value='/contest/write'/>">글쓰기</a>
		</div>
	</sec:authorize>
	<div id="search-comm">
		<select name="searchType" id="searchType">
			<option value="comm-title">제목</option>
			<option value="comm-content">내용</option>
			<option value="comm-writer">글쓴이</option>
		</select> <input type="text" placeholder="검색어를 입력해주세요" name="keyword"
			id="keyword">
		<button type="button" id="searchBtn" class="searchBtn">검색</button>
	</div>

	<div class="pagination">
		<c:if test="${page.prev}">
			<span> <a
				href="/contest/contestList?listPageNum=${page.startPageNum - 1}${page.searchTypeKeyword}">&laquo;</a>
			</span>
		</c:if>
		<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}"
			var="num">
			<span> <c:if test="${selectPageNum != num}">
					<a
						href="/contest/contestList?listPageNum=${num}${page.searchTypeKeyword}">${num}</a>
				</c:if> <c:if test="${selectPageNum == num}">
					<a class="active">${num}</a>
				</c:if>
			</span>
		</c:forEach>
		<c:if test="${page.next}">
			<span> <a
				href="/contest/contestList?listPageNum=${page.endPageNum + 1}${page.searchTypeKeyword}">&raquo;</a>
			</span>
		</c:if>
	</div>
</body>
<script>
	window.onload = function() {
		var statuses = document.getElementsByClassName('conStatus');
		for (var i = 0; i < statuses.length; i++) {
			if (statuses[i].innerText === "예정") {
				statuses[i].style.backgroundColor = "#00C2FF";
			} else if (statuses[i].innerText === "마감") {
				statuses[i].style.backgroundColor = "#C5C5C5";
			} else {
				statuses[i].style.backgroundColor = "#FF5E5E";
			}
		}
	}
	
	document.addEventListener("DOMContentLoaded",function() {
						var pageLinks = document.querySelectorAll(".pagination a:not(:first-child):not(:last-child)");

						pageLinks.forEach(function(link) {
							link.addEventListener("click", function(event) {
								pageLinks.forEach(function(link) {
									link.classList.remove("active");
								});
								// 클릭한 링크에 "active" 클래스를 추가합니다.
								link.classList.add("active");
								event.preventDefault();
							});
						});
					});

	document.addEventListener('DOMContentLoaded', function() {

		document.getElementById("searchBtn").onclick = function() {

			let searchType = document.getElementsByName("searchType")[0].value;
			let keyword = document.getElementsByName("keyword")[0].value;

			location.href = "/contest/contestList?listPageNum=1"
					+ "&searchType=" + searchType + "&keyword=" + keyword;
		};
	});
</script>
</html>
