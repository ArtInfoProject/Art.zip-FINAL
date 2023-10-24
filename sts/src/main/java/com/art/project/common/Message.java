package com.art.project.common;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;

@Component
public class Message {
	
	// HttpServletResponse를 이용하여 클라이언트에게 메시지를 오류 전송하는 메서드
	public void alert(HttpServletResponse response, String message) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter(); // 응답 스트림을 얻어와 PrintWriter로 래핑
		out.println("<script>"); 
		out.println(message); // 전달된 메시지를 출력
		out.println("</script>"); 
		out.flush(); // 출력 버퍼 비우기
		out.close(); // 출력 스트림 닫기
	}
}
