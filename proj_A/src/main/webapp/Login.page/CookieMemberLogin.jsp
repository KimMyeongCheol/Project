<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="pack_Logina.*"%>
  
<%@page import="java.sql.*"%>
<%@page import="proj_A_DBCP.DBConnectionMgr"%>
<%@page import="pack_Logina.*" %>

<%
String memberId = (String)session.getAttribute("memID");     


if (memberId != null) {
	
		
%>		
	<script>
		alert("로그인 되었습니다.");
		location.href = "CookieLoginConfirm.jsp";	
	</script>
		
<%

	} // end if		
	
%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>쿠키로그인</title>
<link rel="stylesheet" href="style/style_Reset.css">
<link rel="stylesheet" href="style/style.css">
  <style>
  
  
  
  div#wrap{
  
  border: 1px solid #abc;
  }
  
  
 div#wraap{
 padding: 30px auto;
  width: 400px;
	height: 515px;
    margin: 10px auto;
    justify-content: center;
  }
   
   
   
   h1{
   font-size: 40px;
   font-weight: bold;
	margin: 60px 0 30px 0;
	text-align: center;
   
   }
   
   
input {
    width: 330px;
    height: 40px;
    font-size: 14px;
    padding: 16px;
    border: 1px solid #d3d3d3;
    margin-bottom: 6px;
    display: block;
}

 button {
    color: #fff;
    width: 100%;
    font-size: 16px;
    padding: 14px;
    border: none;
    margin-top: 20px;
    background-color: #46579b;
    cursor:pointer;
}

    </style>
</head>
<body>
	<div id="wrap">
		<h1> 로그인 페이지</h1>
		
		
		<div id="wraap">
		<form action="CookieMemberLoginOk.jsp">
		
			<table>
				
				<tbody>
					<tr>
						<td>ID</td>
						<td>
							<input type="text" name="memberId"
							maxlength="15" autofocus placeholder="아이디">
						</td>
					</tr>
					<tr>
						<td>PW</td>
						<td>
							<input type="password" name="memberPw"
							maxlength="15" placeholder="비밀번호">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<button>Login</button>
							<button type="reset">Reset</button>											
						</td>
					</tr>
				</tbody>
			</table>
		
		
		</form>  <!--  form 끝 -->

		</div>

	</div>
	<!-- div#wrap -->
	<script src="https://kit.fontawesome.com/944a9f839e.js"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="script/script.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="script/script.js"></script>    
</body>
</html>