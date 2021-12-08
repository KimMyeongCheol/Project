<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean  class="pack_Logina.RegisterMgr" id="memMgr" scope="page" />    
    
    
<%
String memberId = "";
String memberPw = "";


if(request.getParameter("memberId") != null) {
	memberId = request.getParameter("memberId");
}
if(request.getParameter("memberPw") != null) {
	memberPw = request.getParameter("memberPw");
}

if (memMgr.passCheck(memberId, memberPw)) {
	// DB에 실제 존재하는 데이터인지 체크 = 실제 회원이 맞는지 확인
	session.setAttribute("memID", memberId);
	
%>

	<script>
		let memberId = '<%=memberId %>'; 
		alert( memberId + "님께서 로그인 하셨습니다." );
		// JS alert 함수와 JSP 코드 함께 사용 금지;  변수로 분리가 필요함!
		location.href = "CookieLoginConfirm.jsp";
	</script>

<%
}  else {
%>

	<script>
		alert("로그인 정보를 확인해 주세요.");
		location.href = "CookieMemberLogin.jsp";
	</script>

<%	
}
%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
	<div id="wrap">


	</div>
	<!-- div#wrap -->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="script/script.js"></script>    
</body>
</html>