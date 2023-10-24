package com.art.project.exhibition.dto;

import java.sql.Date;
import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ExhibitionDTO {

	private int exhibition_idx; // 전시회 번호(PK)

	private String exhibition_title; // 전시회 제목

	private String exhibition_writer; // 작성자

	private LocalDateTime exhibition_registDate; // 전시회 등록일

	private Date exhibition_start; // 전시 시작 날짜

	private Date exhibition_end; // 전시 종료 날짜

	private String exhibition_region; // 전시 지역

	private String exhibition_location; // 전시 장소

	private String exhibition_img; // 전시 이미지

	private String exhibition_contents; // 전시 내용

	private String exhibition_url; // 링크

	private String exhibition_category; // 카테고리(개인/단체)

	private int exhibition_hits; // 조회수

	private String exhibitionThumbImg; // 썸네일 이미지
}
