
<%@page import="java.sql.*"%>
<%@page import="pack_Member.DBConnectionMgr"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="NewFile.html"/>

    
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
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="../style/style_Reset.css">
<link rel="stylesheet" href="../style/style.css">

</head>
<body>
<div id ="wrap">







	

	




<script >

$(function(){
    $("span#topBtn").click(function(){
          $(window).scrollTop(0);
    }); 
 });
</script>



</div>
<!-- div#wrap -->

<div id="topbutton">

<span id="topBtn"><i class="fas fa-angle-up"></i></span>

</div>
<script src="https://kit.fontawesome.com/944a9f839e.js"
		crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="script/script.js"></script>

</body>
</html>