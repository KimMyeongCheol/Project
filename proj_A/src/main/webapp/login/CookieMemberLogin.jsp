<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="pack_Logina.*"%>
  
<%@page import="java.sql.*"%>
<%@page import="proj_A_DBCP.DBConnectionMgr"%>
    <jsp:include page="login.html"></jsp:include>

<%
String cookieName = "";    // CookieMemberLoginOk.jsp 에서 생성한 쿠키 체크
String memberId = "";      // 쿠키에 저장된 내용을 임시 보관할 변수, 사용자의 ID 저장됨
Cookie[] cookies = request.getCookies();

if (cookies != null) {
	for (int i=0; i<cookies.length; i++) {
		if (cookies[i].getName().equals("memID")) {
			cookieName = cookies[i].getName();
			memberId = cookies[i].getValue();
		}  // end if
	}  // end for
	
	if (!memberId.equals("")) {  // 
		
%>		
	<script>
		alert("로그인 되었습니다.");
		location.href = "CookieLoginConfirm.jsp";	
	</script>
		
<%

	} // end if		
	
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
    	body {
    	background-color: #d3f2fe;
    	}
    	
    	div#wrap {
    		width: 800px;
    		padding: 5px;
    		margin: 20px auto;
    		    		background-color: #d3f2fe;
    	}
    	
    	table {
    		width: 100%;
    		border: 2px solid #8a8dff;
    	}
    	caption {
    		font-size: 24px;
    		padding: 5px;
    	}
    	
    	table td:first-child {
    		width: 220px;
    		text-align: center;
    	}
    	td, button, input {
    	
    	text-align: center;
    		font-size: 22px;
    		padding: 10px; 
    		margin-right: 20px;   	
    		 color:#827bff;	
    	}
    	
   div#wrap  h1{
    text-align: center;
    margin-bottom: 20px;
    padding-bottom: 70px;
    padding-top: 40px;
    color:#ae9ced;
    }
    
    
    button{
    border-radius:50%;
    border-color:#bd84f7;
    
    
    }
    </style>
</head>
<body>
	<div id="wrap">
		<h1> 로그인</h1>
		
		<form action="CookieMemberLoginOk.jsp">
		
			<table>
				
				<tbody>
					<tr>
						<td>ID</td>
						<td>
							<input type="text" name="memberId"
							maxlength="15" autofocus>
						</td>
					</tr>
					<tr>
						<td>PW</td>
						<td>
							<input type="password" name="memberPw"
							maxlength="15">
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