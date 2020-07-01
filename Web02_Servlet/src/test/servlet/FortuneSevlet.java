package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/sub/fortune") // 반드시 앞에 / 로 시작해야한다. 홈페이지 윗칸 링크에 나오는 대로 써야된다.
public class FortuneSevlet extends HttpServlet{//새로 추가한 servlet 이 있으면 server를 껐다 켜야된다.
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//응답 인코딩 설정
		resp.setCharacterEncoding("utf-8");
		//응답 컨텐트 type 설정//"text/html" 문자열의 형식으로 출력할거야 문자열의 형식은 html 이야
		resp.setContentType("text/html; charset=utf-8");
		
		//클라이언트의 웹브라우저에 문자열을 출력할수 있는 객체의 참조값 얻어오기
		PrintWriter pw=resp.getWriter();// 응답하기 위해 응답객체의 기능을 사용한다. resp
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'/>");
		pw.println("<title>오늘의 운세</title>");
		pw.println("</head>");
		pw.println("<body>");
		////sample 운세 5개를 미리 배열에 준비하기
		//String[] fortune= new String[5];
		//fortune[0]="행운이 대박";
		//fortune[1]="좀 조심하세요";
		//fortune[2]="오늘은 무난한 날이되겠네요.";
		//fortune[3]="최악이네요.";
		//fortune[4]="간간히 좋은일이 있네요.";
		////Random 객체
		//Random ran=new Random();
		////fortune 안에 있는것 랜덤으로 뽑기
		//int r=ran.nextInt(fortune.length);
		//pw.println("<p>오늘의 운세는 : "+ fortune[r]+"</p>");
		
		List<String> list=new ArrayList<String>();
		list.add("행운이 대박!! 로또사세요~");
		list.add("좀 조심하세요");
		list.add("오늘은 무난한 날이되겠네요.");
		list.add("최악이네요.");
		list.add("간간히 좋은일이 있네요.");
		
		Random ran=new Random();
		int r=ran.nextInt(list.size());
		String fortune=list.get(r);
		pw.println("<p>오늘의 운세는 :"+fortune+ "</p>");
		pw.println("<img src='../images/kim1.png'/>");
		pw.println("<img src='/Web02_Servlet/images/kim1.png'/>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
		
		
	}
}
