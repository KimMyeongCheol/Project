<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <jsp:include page="Login.html"></jsp:include>
     
<%
String memberId = (String)session.getAttribute("memID");   // 쿠키에 저장된 내용을 임시 보관할 변수, 사용자의 ID 저장됨


if (memberId == null) {
	%>
	
	
	<script>
		alert("로그인 되지않았습니다.");
		location.href = "CookieMemberLogin.jsp";	
	</script>
<% } %>		
		



<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><%=memberId %> 님 환영합니다.</title>
    <link rel="stylesheet" href="../style/style.css">
      <link rel="stylesheet" href="../style/style_Reset.css">
    
    <style>
    
div#topbutton span#topBtn{
    width: 40px;
    height: 40px;
    border: 1px solid #abc;
    text-align: center;
    line-height: 40px;
      position: fixed;
      right: 20px;
      bottom: 10px;
      cursor: pointer;
}


html{
    scroll-behavior: smooth;
}
    
    </style>
</head>
<body>
	<div id="wrap">

	

<div id="topbutton">

<span id="topBtn"><i class="fas fa-angle-up"></i></span>

</div>


<script >

$(function(){
    $("span#topBtn").click(function(){
          $(window).scrollTop(0);
    }); 
 });
</script>
	

	</div>
	<!-- div#wrap -->
	
<script src="https://kit.fontawesome.com/944a9f839e.js"
		crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="script/script.js"></script>    
</body>
</html>