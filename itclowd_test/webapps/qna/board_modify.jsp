<%@page import="com.test.board.model.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    BoardBean article = (BoardBean)request.getAttribute("article");
%>
<!DOCTYPE>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/button.css" /> 
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script> 
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script> 
 <script src="assets/js/jquery.min.js"></script>
<!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> -->
<link rel="stylesheet" href="menubarcss.css" />
<link rel="stylesheet" href="assets/css/mainmenu.css" />
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
<title></title>
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
<body id="body">
   <script type="text/javascript">
     function modifyboard() {
    	modifyform.submit(); 
     }  
   
   </script>
   


	<div id="main_header">
		<jsp:include page="/header.jsp" flush="false" />
	</div>
<div id="blog-container"> 
   
   <div class="panel-heading" style="text-align: center;"><h2>&nbsp;&nbsp;&nbsp;Q & A 수정</h2></div> 
  <div class="container"> 
   	<form action="boardModifyPro.bo" method="post" name="modifyform">
    <input type="hidden" name="BOARD_NUM" value="<%=article.getBoard_num()%>" />

			<div class="row"> 
			  <div class="col-md-6"> 
			  <div class="form-group"> 
			   <label for="BOARD_NAME">작성자</label> 
			   <input type="text" class="form-control" name="BOARD_NAME" value="<%=article.getBoard_name()%>" />
			 </div> 
			</div> 
		    	  	
		    <div class="col-md-6"> 
			  <div class="form-group"> 
				<label for="pass">비밀번호</label> 
				<input type="password" class="form-control" name="BOARD_PASS">
		    </div> 
		    </div>
    
     </div> <!--  container end -->

			<div class="form-group"> 
			  <label for="BOARD_SUBJECT">제목</label> 
			  <input type="text" class="form-control" name ="BOARD_SUBJECT" value="<%=article.getBoard_subject()%>"> 
			</div> 
    	  	
			<div class="form-group"> 
			  <label for="BOARD_CONTENT">내용</label> 
			  <textarea class="form-control" rows="10" name="BOARD_CONTENT" ><%=article.getBoard_content()%></textarea>
			</div>  
 
     
	       <td colspan="2">
	         <button class="button btn" type="button" onclick="location.href='javascript:modifyboard()'">수정</button>&nbsp;
	         <button class="button btn" type="button" onclick="location.href='javascript:history.go(-1)'">뒤로</button>
	     	</td>
			
    	  	
   	</form>
   	</div>
   	</div>
   	 <div>
		<jsp:include page="/footer.jsp" flush="false" />
	</div> 
	   
</body>
</html>































