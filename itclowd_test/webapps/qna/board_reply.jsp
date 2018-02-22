<%@page import="com.test.board.model.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	BoardBean article = (BoardBean)request.getAttribute("article");
	String nowPage = (String)request.getAttribute("page");
%>
<!DOCTYPE>
<html>
<head>
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<link href="css/bootstrap.min.css" rel="stylesheet"> 
<link rel="stylesheet" href="css/button.css" />
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script> 
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script> 
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
<title>게시판 답변글 등록</title>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script src="js/bootstrap.min.js"></script> 

<div class="panel-heading"><h2>&nbsp;&nbsp;&nbsp;Q & A 답변</h2></div> 

	<div id="main_header">
		<jsp:include page="/header.jsp" flush="false" />
	</div>
  
   <div id="blog-container"> 

    <div class="container"> 
		<form action="boardReplyPro.bo" method="post" name="replyform">
			
			<input type="hidden" name="page" value="<%=nowPage%>"/>
			<input type="hidden" name="BOARD_NUM" value="<%=article.getBOARD_NUM()%>"/>
			<input type="hidden" name="BOARD_RE_REF" value="<%=article.getBOARD_RE_REF()%>"/>
			<input type="hidden" name="BOARD_RE_LEV" value="<%=article.getBOARD_RE_LEV()%>"/>
			<input type="hidden" name="BOARD_RE_SEQ" value="<%=article.getBOARD_RE_SEQ()%>"/>
	  	 
	  	 <div class="row"> 
			 <div class="col-md-6"> 
			  <div class="form-group"> 
			   <label for="BOARD_NAME">작성자</label> 
			   <input type="text" class="form-control" name="BOARD_NAME" id="BOARD_NAME" placeholder="Enter name" required="required"> 
			 </div> 
			</div> 
		    	  	
		    <div class="col-md-6"> 
			  <div class="form-group"> 
				<label for="pass">비밀번호</label> 
				<input type="password" class="form-control" name="BOARD_PASS" id="BOARD_PASS" placeholder="Enter password" required="required"> 
			  </div> 
		    </div> 
    
     </div> <!--  container end -->
     
     	   <div class="form-group"> 
			  <label for="BOARD_SUBJECT">제목</label> 
			  <input type="text" class="form-control" name ="BOARD_SUBJECT" id="BOARD_SUBJECT" placeholder="Enter title" required="required"> 
			</div> 
    	  	
			<div class="form-group"> 
			  <label for="BOARD_CONTENT">내용</label> 
			  <textarea class="form-control" rows="10" name="BOARD_CONTENT" id="BOARD_CONTENT" required="required"></textarea>
			</div>  
     
        <div class="center-block" style='width:200px'> 
            <input type="submit" class="button btn" value="등록">
            <input type="reset" class="button btn" value="다시쓰기"> 
         </div> 
    	
		</form>
		</div>
		</div>
		
     <div>
		<jsp:include page="/footer.jsp" flush="false" />
	</div> 

</body>
</html>









