package pack_Logina;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;
import java.util.Vector;


public class RegisterMgr {
	
	Connection			objConn 		=		null;
	Statement			objStmt			=		null;	
	ResultSet			objRs				=		null;  
		// getMemberList(), 회원목록 조회용
	
	PreparedStatement objPstmt 	=		null; 
		//  passCheck(), 로그인 체크용
	
	public static void main(String[] args) {
		new RegisterMgr();
	}
	
		
	public RegisterMgr() {
		try {
			DBConnectionMgr pool = DBConnectionMgr.getInstance();
			objConn = pool.getConnection();			
			
			System.out.println("MyDB 연동 확인!");
			
		} catch (ClassNotFoundException e) {
			System.out.println("DB 접속 이슈 : " + e.getMessage());
		} catch (Exception e) {
			System.out.println("DB 기타 이슈 : " + e.getMessage());
		}
	}
	// 생성자를 사용하여 커스텀클래스(RegisterMgr)의 객체가 
	// 생성되는 것과 동시에 DB접속이 자동으로 이루어짐
	// 그러므로 클래스의 객체가 유지되는 동안에는 DB접속이 유지됨



	public boolean passCheck(String memberId, String memberPw) {
	
		boolean rowChk = false;    // DB에서 데이터(=row, 행) 존재여부
		        // 입력한  ID, PW가 일치하는 데이터가 존재하는지 여부 체크
		

		

		try {
				String sql = "select count(*) as cnt from loginInfo where uid = '"+ memberId +"' and upw = '" + memberPw + "'";
				System.out.println("sql : " + sql);
				objStmt = objConn.createStatement();
				objRs = objStmt.executeQuery(sql);
				
				if (objRs != null) {
					while (objRs.next()) {
						if (objRs.getInt("cnt") > 0)  rowChk = true;
					}
				} 
			} catch (SQLException e) {
				
				System.out.println("쿼리오류 이슈 : " + e.getMessage());
				
			}
				
		return rowChk;
	}
	
	

	public Vector getMemberList() {

		//DBCP 를 사용하기 위해 객체로 생성해야 함.
		// getInstance() 메서드에 new 키워드를 사용한 객체생성 프로세스를 실행	
		// 메서드 영역에 생성해야 하는 대상
		
		Vector vlist = null;
		
		try {
			
			objStmt = objConn.createStatement();
			String sql = "select * from loginInfo order by num desc";
			objRs = objStmt.executeQuery(sql);
			
			vlist = new Vector();
			
			if (objRs != null) {
				
				while(objRs.next()) {
					RegisterBean regBean = new RegisterBean();
						
					regBean.setNum(objRs.getInt("num"));
					regBean.setUid(objRs.getString("uid"));
					regBean.setUpw(objRs.getString("upw"));
					regBean.setName(objRs.getString("Name"));
					
					
					vlist.add(regBean);
					
				}   // end while
				
			} // end if
			
			
		} catch (SQLException e) {
			System.out.println("DB SQL 이슈 : " + e.getMessage());
		} 
								
		return vlist;
	}
	
	
	
	
	
	
}
