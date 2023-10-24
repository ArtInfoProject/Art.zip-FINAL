package com.art.project.community.dto;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class CommunityDTO {

	private int community_idx; // 게시물 번호(PK) 

	private int member_idx; // 회원 번호(FK) 

	private LocalDateTime community_registDate;	// 등록일
 
	private String community_title;	// 제목 

	private String member_name;	// 작성자(FK) 

	private String community_contents;	// 내용 

	private String community_category;	// 카테고리 

	private String community_file;	// 첨부파일 

	private String community_url;	// 관련링크

	private int community_hits;	// 조회수

	private String communityThumbImg;	// 썸네일 이미지
}
