package com.art.project.member.dto;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class MemberDTO {

	private int member_idx; // 순번

	private String member_loginId; // 아이디

	private String member_password; // 비밀번호

	private String member_passwordCheck; // 비밀번호 확인

	private String member_name; // 이름

	private String member_tel; // 전화번호

	private String member_email; // 이메일

	private String member_category; // 가입 유형

	private LocalDate member_joinDate; // 회원 가입일

	private String member_role; // 권한

	private LocalDate member_withdrawDate; // 회원 탈퇴일
}