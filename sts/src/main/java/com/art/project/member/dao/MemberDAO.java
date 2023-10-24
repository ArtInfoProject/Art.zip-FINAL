package com.art.project.member.dao;

import com.art.project.member.dto.MemberDTO;

public interface MemberDAO {

	// selectByLoginId
	public MemberDTO loginCheck(String id);

	// 회원 가입
	public void join(MemberDTO dto);

	// 회원 수정
	public void update(MemberDTO dto);

	// 회원 탈퇴
	public void delete(int idx);

	// 아이디 찾기
	public String findId(MemberDTO dto);

	// selectByLoginIdAndEmail
	public MemberDTO userCheck(MemberDTO dto);

	// 비밀번호 변경
	public void updatePw(MemberDTO dto);

}
