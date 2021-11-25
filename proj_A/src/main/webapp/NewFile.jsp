
<%@page import="java.sql.*"%>
<%@page import="proj_A_DBCP.DBConnectionMgr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="NewFile.html"></jsp:include>
    
    <%
    DBConnectionMgr pool = DBConnectionMgr.getInstance();
    // 위에 페이지 임포트해야함 
    //다른방법으로 bean으로 <jsp: bean해서 페이징해도되지만 임포트하는게 더 편함.
    
    Connection objConn =pool.getConnection();
    Statement objStmt = objConn.createStatement();
    String sql ="select * from beanInfo order by num desc";
    ResultSet objRs     =  objStmt.executeQuery(sql);
    
    
    
    
    
    %>
    
    
    
    
    
    
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="style/style_Reset.css">
<link rel="stylesheet" href="style/style.css">
</head>
<body>
<div id ="wrap">


     <table>
<tbody>
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>주민번호(앞)</th>
			<th>주민번호(뒤)</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>우편번호</th>
			<th>주소</th>
			<th>직업</th>
		</tr>
		<%
		if(objRs !=null){
			
			while(objRs.next()){
				
		
		%>
		
		<tr>
		<td><%= objRs.getInt("Num") %></td>
		<td><%=  objRs.getString("Id") %></td>
		<td><%=  objRs.getString("Passwd") %></td>
		<td><%=  objRs.getString("Name") %></td>
		<td><%=  objRs.getString("Num1") %></td>
		<td><%=  objRs.getString("Num2") %></td>
		<td><%=  objRs.getString("Email") %></td>
		<td><%=  objRs.getString("Phone") %></td>
		<td><%=  objRs.getString("Zipcode") %></td>
		<td><%=  objRs.getString("Address") %></td>
		<td><%=  objRs.getString("Job") %></td>
               
		</tr>
		
		<%
		
			}
		}
		%>
	

</tbody>
         </table>
		<!-- 데이터 출력 끝 -->
	

</div>
<!-- div#wrap -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="script/script.js"></script>

</body>
</html>