<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	int board_num = (Integer)request.getAttribute("board_num");
	String nowPage = (String)request.getAttribute("page");
%>
<!DOCTYPE>
<html>
<head>
<link rel="stylesheet" href="css/button.css" />
 <script src="assets/js/jquery.min.js"></script>
<!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> -->
<link rel="stylesheet" href="menubarcss.css" />
<link rel="stylesheet" href="assets/css/mainmenu.css" />
<link rel="stylesheet" href="what2.css" />
<script src="menubar.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
<script src="assets/js/main.js"></script>
  <script src="mainboot.js"></script>
  <script src="pwstrength.js"></script>
  <link rel="stylesheet" href="mainboot.css">
  <link rel="stylesheet" href="mainCustom.css">
  <!-- <link rel="stylesheet" href="bootstrap.css"> -->
  <!-- <script src="bootstrap.js"></script> -->
  <script src="mainCustom.js"></script> 
<title>게시글 삭제하기</title>

<style>
#body{
  background-color: #f5f0ef;
  background-size: auto;
}

@media (min-width: 992px) {
  .container {
    width: 900px;
  }
} 


</style>
</head>
<body>

<body id="body">

	<div id="main_header">
		<jsp:include page="/header.jsp" flush="false" />
	</div>
<div id="blog-container">
   <center>
   	<form action="boardDeletePro.bo?board_num=<%=board_num%>" method="post">
   	<input type="hidden" name="page" value="<%=nowPage%>"/>
   		<table border="1">
   			<tr>
   				<td>비밀번호 확인</td>
   				<td><input type="password" name="BOARD_PASS"/></td>
   			</tr>
   	
   			<tr >
   				<td colspan="2">   	
   				 <center>
   				 <input type="submit" class="button btn" value="삭제" />
   				  <input type="button" class="button btn" value="돌아가기" onClick="javascript:history.go(-1)"/>
   				 </center>
   				
   				</td>
   			</tr>

   		</table>
   	</form>
   </center>
   </div>

   
    	<div>
		<jsp:include page="/footer.jsp" flush="false" />
	</div> 
</body>
</html>