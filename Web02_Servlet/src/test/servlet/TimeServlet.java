package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//servlet 기준으로는 최상위 경로
@WebServlet("/time")
public class TimeServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//응답 인코딩 설정
		resp.setCharacterEncoding("utf-8");
		//응답 컨텐트 type 설정//"text/html" 문자열의 형식으로 출력할거야 문자열의 형식은 html 이야 
		resp.setContentType("text/html; charset=utf-8");//정해져 있는 형식
		
		PrintWriter pw=resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'/>");
		pw.println("<title>현재 시간 페이지</title>");
		pw.println("</head>");
		pw.println("<body>");
		//Date 객체를 이용해서 현재 날짜 시간을 문자열로 얻어내기
		Date d=new Date();// servlet 은 언어를 써서 특정 부분을 동적으로 나타낼 수 있다는 장점이 있다.
		String now=d.toString();
		//클라이언트 웹브라우저에 응답하기
		pw.println("<p> 현재 시간: "+now+"</p>");// 로딩할때마다 날짜가 달라진다.
		pw.println("<img src='images/kim1.png'/>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}
