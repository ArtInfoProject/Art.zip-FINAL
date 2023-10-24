package com.art.project.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;

import com.art.project.member.dto.MemberDTO;

@Component
public class LoginUtil {
	// 로그인 여부
	public boolean isLogin(HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO) session.getAttribute("res");

		if (dto != null) { // 로그인이 되어있다면
			return true;
		} else {
			return false;
		}
	}

}
