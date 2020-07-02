package test.todo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import test.todo.dto.TodoDto;
import test.util.DbcpBean;

public class TodoDao {
	//자신의 참조값을 담을 static 필드
	private static TodoDao dao;
	//외부에서 객체 생성할수 없도록 생성자의 접근 지정자를 private 로
	private TodoDao() {}
	//자신의 참조값을 리턴해주는 static 메소드
	public static TodoDao getInstence() {
		if(dao==null) {// 최초 호출될때는
			//객체를 생성해서 static 필드에 참조값을 저장해 놓는다.
			dao=new TodoDao();
		}
		return dao;
	}
	
	//할일 목록을 리턴해주는 메소드
	public List<TodoDto> getList(){
		//할일 목록을 담을 ArrayList 객체 생성
		List<TodoDto> list=new ArrayList<>();
		//필요한 객체의 참조값을 담을 지역변수 만들기
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			//Connection 객체의 참조값 얻어오기
			conn=new DbcpBean().getConn();
			//실행할 sql 문 준비하기
			String sql="select num, work, regdate"
					+ "	from todo"
					+ "	order by num asc";
			pstmt=conn.prepareStatement(sql);
			//sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고
			
			//select 문 수행하고 결과 받아오기
			rs=pstmt.executeQuery();
			//반복문 돌면서 결과 값 추출하기
			while(rs.next()) {
				//row 하나의 정보를 Dto 객체에 담고
				TodoDto dto=new TodoDto();
				dto.setNum(rs.getInt("num"));
				dto.setWork(rs.getString("work"));
				dto.setRegdate(rs.getString("regdate"));
				//Dto 의 참조값을 ArrayList 객체에 누적 시킨다.
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		//ArrayList 객체의 참조값을 리턴해 준다.
		return list;
	}
	
	//인자로 전달되는 할일 1개를 DB 에 저장하고 성공 여부를 리턴하는 메소드
	public boolean insert(String work) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		int flag=0;
		try {
			conn=new DbcpBean().getConn();
			//실행할 sql 문 준비하기
			String sql="insert into todo"
					+ "	(num, work, regdate)"
					+ "	values (todo_seq.nextval, ?, sysdate)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, work);
			//sql 문 수행하고 update or insert or delete 된 row 의 갯수 리턴받기
			flag=pstmt.executeUpdate();
			System.out.println("새로운 내용이 추가되었습니다.");
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(flag>0) {
			return true;
		}else {
			return false;
		}
	}//insert()
	
	public boolean delete(int num) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		int flag=0;
		try {
			conn=new DbcpBean().getConn();
			//실행할 sql 문 준비하기 
			String sql="delete from todo"
					+ "	where num=?";
			pstmt=conn.prepareStatement(sql);
			//? 에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setInt(1, num);
			//sql  문 수행하고 update or insert or delete 된 row 의 갯수 리턴받기 
			flag=pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e) {}
		}
		if(flag>0) {
			return true;
		}else {
			return false;
		}
	
	}
}
