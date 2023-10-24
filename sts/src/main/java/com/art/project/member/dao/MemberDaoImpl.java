package com.art.project.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.art.project.member.dto.MemberDTO;

@Repository
public class MemberDaoImpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	// 아이디 체크
	@Override
	public MemberDTO loginCheck(String id) {
		MemberDTO res = null;
		res = sqlSession.selectOne("member.selectByloginId", id);
		return res;
	}

	// 회원 가입
	@Override
	public void join(MemberDTO dto) {
		sqlSession.insert("member.insertMember", dto);
	}

	// 회원 수정
	@Override
	public void update(MemberDTO dto) {
		sqlSession.update("member.updateMember", dto);
	}

	// 회원 탈퇴
	@Override
	public void delete(int idx) {
		sqlSession.delete("member.deleteMember", idx);
	}

	// 아이디 찾기
	@Override
	public String findId(MemberDTO dto) {
		System.out.println("dto여긴 dao" + dto);
		String loginId = sqlSession.selectOne("member.selectByNameAndEmail", dto);
		System.out.println("loginI d" + loginId);
		return loginId;
	}

	// 회원 검색(아이디, 이메일)
	@Override
	public MemberDTO userCheck(MemberDTO dto) {
		MemberDTO res = null;
		res = sqlSession.selectOne("member.selectByLoginIdAndEmail", dto);
		return res;
	}

	// 비밀번호 변경
	@Override
	public void updatePw(MemberDTO dto) {
		sqlSession.update("member.updatePw", dto);
	}

}
