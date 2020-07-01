package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dto.MemberDto;
@WebServlet("/users/login")
public class UsersLoginServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		req.setCharacterEncoding("utf-8");
		
		PrintWriter pw=resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'/>");
		pw.println("<title>로그인 결과 페이지</title>");
		pw.println("<link rel='stylesheet' href='/Web02_Servlet/css/bootstrap.css'/>");
		pw.println("<script src='/Web02_Servlet/js/jquery-3.5.1.js'></script>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<div class='container'>");
			//폼 전송되는 아이디와 비밀번호 읽어내기
			String id=req.getParameter("id");//name="id"
			String pwd=req.getParameter("pwd");//name="pwd"
			
			if(id.equals("gura") && pwd.equals("1234")) {//로그인 정보가 맞는경우
				pw.write("<p class='alert alert-success'>"+id+"님 로그인 되었습니다. <a class='alert-link' href='../index.html'>확인</a></p>");
				pw.write("<script>alert ('"+id+"님 로그인 되었습니다.')</script>");
			}else {//로그인 정보가 틀린경우
				pw.write("<p class='alert alert-danger'>아이디 혹은 비밀번호가 틀려요.<a class='alert-link' href='../index.html'>확인</a></p>");
				pw.write("<script>alert ('아이디 혹은 비밀번호가 틀려요')</script>");
			}
		pw.println("</div>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}
