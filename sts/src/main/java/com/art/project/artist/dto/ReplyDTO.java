package com.art.project.artist.dto;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class ReplyDTO {

	private int reply_idx;	//댓글 번호(PK)

	private int artist_idx;	//아티스트 번호(=board_idx의 개념)

	private String member_name;	//회원 이름(=writer의 개념)

	private String reply_content;	//댓글 내용

	private LocalDateTime reply_creationDate;	//댓글 작성날짜와시간
}
