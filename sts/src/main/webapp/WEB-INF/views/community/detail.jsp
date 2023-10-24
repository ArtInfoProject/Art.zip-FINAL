<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="${path}/resources/css/com_detail.css" />

<meta charset="UTF-8">
<title>커뮤니티 상세</title>
</head>
<body>
	<div class="com_detail_header">
		<p>${detail.community_title}</p>
		<p>✍🏻${detail.member_name}</p>
		<p>${detail.community_registDate}</p>
	</div>
	<div class="edit">
		<sec:authorize access="isAuthenticated()">
			<a href="/community/update?community_idx=${detail.community_idx}"
				role="button">수정</a>
			<a href="/community/delete?community_idx=${detail.community_idx}"
				role="button">삭제</a>
		</sec:authorize>
	</div>
	<div class="com_detail_content">
		<p class="com_detail_content_long">${detail.community_contents}</p>
		<button>🙌🏻 SNS 공유</button>
	</div>
	<div class="files">
		<table>
			<tr>
				<td colspan="2" class="file">첨부파일 or 이미지</td>
			</tr>
			<tr>
				<c:choose>
					<c:when test="${not empty detail.community_file}">
						<td><a href="${detail.community_file}" download>
						<img src="${detail.community_file}" class="oriImg"></a></td>
					</c:when>
					<c:otherwise>
						<td>N/A</td>
					</c:otherwise>
				</c:choose>
			</tr>
		</table>
		<table>
			<c:set var="linkExists" value="${not empty detail.community_url}" />
			<tr>
				<td class="link">관련링크</td>
			</tr>
			<tr>
				<c:choose>
					<c:when test="${linkExists}">
						<td><a href="${detail.community_url}">${detail.community_url}</a></td>
					</c:when>
					<c:otherwise>
						<!-- 링크가 존재하지 않는 경우 -->
						<td>N/A</td>
					</c:otherwise>
				</c:choose>
			</tr>
		</table>

	</div>
	<div class="article">
		<table>
			<c:forEach var="data" items="${list}">
				<c:if
					test="${fn:length(list) == 1 and data.community_idx < detail.community_idx}">
					<tr>
						<td>다음글</td>
						<td>마지막 글입니다.</td>
					</tr>
				</c:if>
				<c:if test="${data.community_idx < detail.community_idx}">
					<tr>
						<td>이전글</td>
						<td><a
							href="/community/detail?community_idx=${data.community_idx}">${data.community_title}</a></td>
					</tr>
				</c:if>
				<c:if test="${data.community_idx > detail.community_idx}">
					<tr>
						<td>다음글</td>
						<td><a
							href="/community/detail?community_idx=${data.community_idx}">${data.community_title}</a></td>
					</tr>
				</c:if>
				<c:if
					test="${fn:length(list) == 1 && data.community_idx > detail.community_idx}">
					<tr>
						<td>이전글</td>
						<td>이전글이 없습니다.</td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
	</div>
	<div class="list">
		<a href="/community/communityList?listPageNum=1">목록</a>
	</div>
</body>
</html>
