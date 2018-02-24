<%@page import="com.test.member.medel.MemberVo"%>
<%@page import="com.test.board.model.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
       BoardBean article = (BoardBean)request.getAttribute("article");
       String nowPage = (String)request.getAttribute("page");
       MemberVo mVo = (MemberVo)request.getSession().getAttribute("authUser");
%>
<!DOCTYPE>
<html>
<head>
<meta name="viewport" content="width=device-width", initial-scale="1"/>
<link rel="stylesheet" href="/css/view.css" />
<link rel="stylesheet" href="/css/button.css" />
<script src="/assets/js/jquery.min.js"></script>
<link rel="stylesheet" href="menubarcss.css" />
<link rel="stylesheet" href="assets/css/mainmenu.css" />
<script src="/menubar.js"></script>
<script src="/assets/js/skel.min.js"></script>
<script src="/assets/js/util.js"></script>
<script src="/assets/js/main.js"></script>
  <script src="/mainboot.js"></script>
  <script src="/pwstrength.js"></script>
  <link rel="stylesheet" href="mainboot.css">
  <link rel="stylesheet" href="mainCustom.css">
  <script src="/mainCustom.js"></script> 
<title>Q & A</title>
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

	<div id="main_header">
		<jsp:include page="/header.jsp" flush="false" />
	</div>
<div id="blog-container"> 
   
   <div class="panel-heading"><h2>&nbsp;&nbsp;&nbsp;Q & A</h2></div> 
  <div class="container"> 

			<div class="row"> 
			  <div class="col-md-6"> 
			  <div class="form-group"> 
			   <label for="BOARD_Title">제목</label> 
			   <input type="text" class="form-control" name="BOARD_Title" value="<%=article.getBoard_subject() %>" readonly="readonly" /></div> 
			</div> 
		    	  	
		    <div class="col-md-6"> 
			  <div class="form-group"> 
				<label for="BOARD_NAME">작성자</label> 
				<input type="password" class="form-control" name="BOARD_PASS" value="<%=article.getBoard_name() %>" readonly="readonly">
		    </div> 
		    </div>
    
     </div> <!--  container end -->

    	  	
			<div class="form-group"> 
			  <label for="BOARD_CONTENT">내용</label> 
			  <textarea class="form-control" rows="10" name="BOARD_CONTENT" readonly="readonly"><%=article.getBoard_content()%></textarea>
			</div>  
 
     
    	<tr align="center">
    	   <td colspan = "2">
    	   <% if(mVo != null) { if(mVo.getM_grade() == 0){%>
    	   <button class="button btn" type="button" onclick="location.href='boardReplyForm.bo?board_num=<%=article.getBoard_num()%>&page=<%=nowPage%>'">답변</button>
    	   <%}if(article.getM_no() == mVo.getM_no()) { %>
    	   <button class="button btn" type="button" onclick="location.href='boardModifyForm.bo?board_num=<%=article.getBoard_num()%>&page=<%=nowPage%>'">수정</button>
    	   <button class="button btn" type="button" onclick="location.href='boardDeleteForm.bo?board_num=<%=article.getBoard_num()%>&page=<%=nowPage%>'">삭제</button>
    	   <%}}%>
    	   <button class="button btn" type="button" onclick="location.href='boardList.bo?page=<%=nowPage%>'">목록</button>&nbsp;&nbsp;
    	   </td>
    	 </tr>
    	 
       <h1>&nbsp;</h1>
 
   	</div>
   	</div>
   
   	 <div>
		<jsp:include page="/footer.jsp" flush="false" />
	</div> 
	
		   
</body>
</html>