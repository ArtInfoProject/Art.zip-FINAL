package com.art.project.exhibition.service;

import java.util.List;

import com.art.project.exhibition.dto.ExhibitionDTO;

public interface ExhibitionService {

	// 전시회 목록 조회
	public List<ExhibitionDTO> list();

	// 특정 전시회 상세 정보 조회
	public ExhibitionDTO detail(int idx);

	// 전시회 정보 등록
	public void write(ExhibitionDTO exhibitionDTO);

	// 전시회 정보 수정
	public void update(ExhibitionDTO exhibitionDTO);

	// 전시회 정보 삭제
	public void delete(int idx);

	// 전체 전시회 수 조회
	public int count();

	// 목록 조회
	public List<ExhibitionDTO> listPage(int displayPost, int postNum);

	// 전시회 검색
	public List<ExhibitionDTO> exhibitionSearch(int displayPost, int postNum, String searchType, String keyword, String category, String status);

	// 검색 결과 수 조회
	public int searchCount(String searchType, String keyword, String category, String status);
}
