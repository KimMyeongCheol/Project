<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String uId = (String)session.getAttribute("idKey");
%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>로그인 페이지</title>
	
	<style>
	* {
		box-sizing: border-box;
	}
	div#wrap {
		width: 460px;
		padding: 10px;
		border: 1px solid #000;
		margin: 10px auto;
	}
	
	table {
		width: 100%;
		/*border: 1px solid #000;*/
	}
	th, td {
		padding: 10px 6px;
/*		border: 1px solid #000;  */
	}
	table>caption {
		font-size: 24px;
		font-weight: bold;
		padding: 20px;
		border-bottom: 2px solid #ddd;
	}
	
	tr:last-child td {
		text-align: center;
	}
	td:first-child {
		width: 120px;
		text-align: right;
	}
	input {
		font-size: 15px;
		padding: 4px 10px;
		 border: 1px solid #d3d3d3;
		  margin-bottom: 6px;
    display: block;
	}
	
	
	
	
 button {
    color: #fff;
    width: 100%;
    font-size: 16px;
   		padding: 4px 10px;
    border: none;
    margin-top: 20px;
     
    background-color: #46579b;
    cursor:pointer;
	transform: translateY(1px);
}
	button> a{
	 color: #fff;
	 font-size: 18px;
	 text-decoration-line : none;
	 
	}
	</style>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>
		$(function(){
			
			function fnLogin() {
				
				
				let uId = $("#uId").val().trim();
				let uPw = $("#uPw").val().trim();
				
				if (uId == "") {     // 비밀번호 검사 시작
					alert("아이디를 입력하세요.");
					$("#uId").focus();
				} else if (uPw == "") {     // 비밀번호 검사 시작
					alert("비밀번호를 입력하세요.");
					$("#uPw").focus();
				} else {					
					$("#loginFrm").submit();
				}
			}
			
			
			
			
			
			
			$("#loginBtn").click(function(){
				
				fnLogin();


			});
           
			//엔터 이벤트 적용 시작
			$("input.loginInput").keyup(function () {
				let code = event.keyCode;
				if(code ==13){
					fnLogin();
				}
			});
			
			$("#joinBtn").click(function(){   // 회원가입으로 이동				
				location.href="Member.jsp";				
			});
			
			
		});
	</script>
	
</head>
<body>
	<div id="wrap">
	
	      
	
	
	<% if (uId != null) {   // 현재 로그인 상태라면  %>
		
		 <h1><%=uId %>님 환영합니다.</h1>
		<button type="button"><a href="CookieLoginConfirm.jsp">페이지로</a></button> 
		 
		 <button type="button"><a href="Logout.jsp">로그아웃</a>	</button> 
		 <button type="button"><a href="Member_Mod.jsp">회원정보수정</a>	</button> 	
		 <button type="button"><a href="Member_Del.jsp">회원탈퇴</a>	</button> 	
		
	<% } else { %>
	
		<form action="LoginProc.jsp" id="loginFrm" name="loginFrm">
			<table>
				<caption>로그인</caption>
				<tbody>
					<tr>
						<td>아이디</td>
						<td>
							<input type="text" class="loginInput" name="uId" id="uId"
							placeholder="아이디" maxlength="20">
						</td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td>
							<input type="password" class="loginInput" name="uPw" id="uPw"
							placeholder="비밀번호" maxlength="15">
						</td>
					</tr>
					<tr>
						<td colspan="2">						
							<button type="button" id="loginBtn">로그인</button>
							<button type="button" id="joinBtn">회원가입</button>
						</td>						
					</tr>
				</tbody>
			</table>
		
		</form>


    <% } %>
	</div>
	<!-- div#wrap -->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="script/script.js"></script>    
</body>
</html>