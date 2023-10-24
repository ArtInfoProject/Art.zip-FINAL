package com.art.project.artist.service;

import java.util.List;

import com.art.project.artist.dto.ArtistDTO;

public interface ArtistService {

	// 아티스트 목록 조회
	List<ArtistDTO> list();

	// 아티스트 상세 정보 조회
	ArtistDTO detailArtist(ArtistDTO artistDTO);
	
	// 작품 상세 정보 조회
	List<ArtistDTO> detailPicture(ArtistDTO artistDTO);

	// 작품 추가
	void write(ArtistDTO artistDTO);

	// 작품 수정
	void update(ArtistDTO artistDTO);

	// 작품 등록
	void registrationWork(ArtistDTO artistDTO);

	// 작품 사진 수정
	void updatePicture(ArtistDTO artistDTO);
	
	// 특정 작품 조회
	ArtistDTO listOnePicture(ArtistDTO artistDTO);

	// 아티스트 삭제
	void artistDelete(int idx);
	
	// 작품 삭제
	void pictureDelete(int idx, int artist_idx);
	
	// 게시물 수 조회
	public int count();
	
	// 게시물 목록 + 페이징
	public List<ArtistDTO> listPage(int displayPost, int postNum);
	 
	// 아티스트 검색
	public List<ArtistDTO> artistSearch(
			   int displayPost, int postNum, String searchType, String keyword);
	
	// 검색
	public int searchCount(String searchType, String keyword);
}
