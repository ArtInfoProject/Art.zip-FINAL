package com.art.project.artist.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ArtistDTO {
	
	// artist_board 테이블 
	private int artist_idx; // 아티스트 번호(PK)

	private String artist_name; // 이름

	private String artist_note; // 아티스트 소개

	private String artist_career; // 경력/이력

	private String artist_photo; // 아티스트 사진

	private String artist_nationality; // 아티스트 국적

	private String artist_edu; // 아티스트 학력

	private String artistThumbImg; // 썸네일 이미지

	// artist_pictures 테이블 
	private int picture_idx; // 작품 번호(PK)

	private String picture_title; // 작품 제목

	private String picture_file; // 작품 파일

	private String picture_size; // 작품 크기

	private String picture_supplies; // 작품 소재

	private String pictureThumbImg; // 썸네일 이미지

}

