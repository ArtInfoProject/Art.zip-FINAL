package com.art.project.artist.dao;

import java.util.List;

import com.art.project.artist.dto.ArtistDTO;

public interface ArtistDAO {

	// 목록 조회
	List<ArtistDTO> list();

	// 아티스트 조회
	ArtistDTO listArtist(ArtistDTO artistDTO);
	
	// 아티스트의 그림 목록 조회
	List<ArtistDTO> listPicture(ArtistDTO artistDTO);

	// 아티스트 삭제
	void artistDelete(int idx);
	
	// 그림 삭제
	void pictureDelete(int idx, int artist_idx);

	// 아티스트 등록
	void write(ArtistDTO artistDTO);

	// 아티스트 정보 수정
	void update(ArtistDTO artistDTO);

	// 아티스트 작품 등록
	void registrationWork(ArtistDTO artistDTO);

	// 작품 정보 수정
	void updatePicture(ArtistDTO artistDTO);
	
	// 특정 아티스트의 하나의 그림 조회
	ArtistDTO listOnePicture(ArtistDTO artistDTO);

	// 게시물 수 조회
	public int count();
	
	// 페이징된 목록 조회
	public List<ArtistDTO> listPage(int displayPost, int postNum);
	
	public List<ArtistDTO> artistSearch(
			   int displayPost, int postNum, String searchType, String keyword);

	// 아티스트 검색
	int searchCount(String searchType, String keyword);

}
