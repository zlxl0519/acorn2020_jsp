package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dto.MemberDto;
@WebServlet("/send")
public class SendServlet extends HttpServlet{
	@Override//req 가 클라이언트가 보낸 정보를 읽어온다. //resp 는 서버에서 출력해준다.
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//한글 개지지 않도록 요청 인코딩 설정
		req.setCharacterEncoding("utf-8");
		
		//name="msg" 에 입력한 문자열(value) 읽어오기
		String result=req.getParameter("msg");
		//전송된 value 값을 콘솔창에 출력해보기
		System.out.println("msg:"+result);
		
		//최대한 간단히 응답 하기
		PrintWriter pw=resp.getWriter();
		pw.println("ok~");
		pw.close();
	}
}
