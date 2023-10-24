package com.art.project.community.dao;

import java.util.List;

import com.art.project.community.dto.CommunityDTO;

public interface CommunityDAO {

	// 게시물 목록 조회
	public List<CommunityDTO> list();

	// 게시물 작성
	public void write(CommunityDTO communityDTO);

	// 특정 게시물 조회
	public CommunityDTO detail(int idx);

	// 게시물 수정
	public void update(CommunityDTO communityDTO);

	// 게시물 삭제
	public void delete(int idx);

	// 조회수 증가
	public void incrementViewCount(int idx);

	// 전체 게시물 수 조회
	public int count();

	// 페이징된 게시물 목록 조회
	public List<CommunityDTO> listPage(int displayPost, int postNum);

	// 게시물 검색
	public List<CommunityDTO> communitySearch(int displayPost, int postNum, String searchType, String keyword,
			String category);

	// 검색 결과 조회
	public int searchCount(String searchType, String keyword, String category);

	// 이전/다음 게시물 정보 조회
	public List<CommunityDTO> getPrevNext(int idx);

}
