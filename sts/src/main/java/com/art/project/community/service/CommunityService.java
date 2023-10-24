package com.art.project.community.service;

import java.util.List;

import com.art.project.community.dto.CommunityDTO;

//Service 계층에서는 비즈니스 로직을 처리합니다.
//Controller에서 요청을 받고, Service에서 비즈니스 로직을 처리한 후,
//데이터베이스 접근은 DAO를 통해 수행하고,
//DTO 객체를 이용해 데이터를 전달하며 결과를 반환합니다.
public interface CommunityService {

	// 게시물 목록 조회
	public List<CommunityDTO> list();

	// 게시물 작성
	public void write(CommunityDTO communityDTO);

	// 특정 게시물 조회
	public CommunityDTO detail(int idx);

	// 게시물 수정
	public void update(CommunityDTO community);

	// 게시물 삭제
	public void delete(int idx);

	// 조회수 증가
	public void incrementHitCount(int idx);

	// 전체 게시물 수 조회
	public int count();

	// 페이징된 게시물 목록 조회
	public List<CommunityDTO> listPage(int displayPost, int postNum);

	// 페이징된 게시물 목록 + 검색
	public List<CommunityDTO> communitySearch(int displayPost, int postNum, String searchType, String keyword,
			String category);

	// 검색 결과 수 조회
	public int searchCount(String searchType, String keyword, String category);

	// 이전/다음 게시물 정보 조회
	public List<CommunityDTO> getPrevNext(int idx);
}
