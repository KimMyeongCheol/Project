<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
String memberId = "";      // 쿠키에 저장된 내용을 임시 보관할 변수, 사용자의 ID 저장됨
Cookie[] cookies = request.getCookies();

if (cookies != null) {
	for (int i=0; i<cookies.length; i++) {
		if (cookies[i].getName().equals("memID")) {
			memberId = cookies[i].getValue();
		}  // end if
	}  // end for
	
	if (memberId.equals("")) {  // 
		
%>		
	<script>
		alert("로그인 되었습니다.");
		location.href = "CookieMemberLogin.jsp";	
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
	<title><%=memberId %> 님 환영합니다.</title>
    <link rel="stylesheet" href="style/style.css">
    
    <style>
    	body {
    		background-color: #f8f8f8;
    	}
    	
    	div#wrap {
    		width: 600px;
    		padding: 10px;
    		margin: 20px auto;
    	}
    	
    	table {
    		width: 100%;
    		border: 1px solid #000;
    	}
    	caption {
    		font-size: 26px;
    		padding: 20px;
    	}
    	
    	td {
    		font-size: 22px;
    		text-align: center;
    		padding: 10px;    	
    	}
    	a {
    		font-size: 22px;
    		font-weight: bold;
    	}
    	
    
    </style>
    
</head>
<body>
	<div id="wrap">

		<h1>쿠키&Bean 로그인</h1>
		
		
			<table>
				<caption><%=memberId %>님 로그인 상태입니다.</caption>
				<tbody>
					<tr>
						<td>
							<a href="CookieLogOut.jsp">로그아웃</a>
						</td>
					</tr>
				</tbody>
			</table>
		
		

	</div>
	<!-- div#wrap -->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="script/script.js"></script>    
</body>
</html>