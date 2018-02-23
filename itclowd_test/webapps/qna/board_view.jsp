<%@page import="com.test.board.model.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
       BoardBean article = (BoardBean)request.getAttribute("article");
       String nowPage = (String)request.getAttribute("page");
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
 

         <table class="type04" sytle="width: 70% align:center;">
         <tr>
    	 	<th>제목 </th>
    	 	<td><%=article.getBoard_subject() %></td>
    	 </tr>
    	  <tr>
    	 	<th>작성자</th>
    	 	<td><%=article.getBoard_name() %></td>
    	 </tr>
    	 

          <tr>
    	 	<td colspan="2"><textarea name="Board_CONTENT" id="" cols="100" rows="10" readonly="readonly"><%=article.getBoard_content()%>
    	 	</textarea>
    	 	</td>
    	 </tr>
    	
    	<tr align="center">
    	   <td colspan = "2">
    	   <button class="button btn" type="button" onclick="location.href='boardReplyForm.bo?board_num=<%=article.getBoard_num()%>&page=<%=nowPage%>'">답변</button>
    	   <button class="button btn" type="button" onclick="location.href='boardModifyForm.bo?board_num=<%=article.getBoard_num()%>&page=<%=nowPage%>'">수정</button>
    	   <button class="button btn" type="button" onclick="location.href='boardDeleteForm.bo?board_num=<%=article.getBoard_num()%>&page=<%=nowPage%>'">삭제</button>
    	   <button class="button btn" type="button" onclick="location.href='boardList.bo?page=<%=nowPage%>'">목록</button>&nbsp;&nbsp;
    	   </td>
    	 </tr>
 
     	</table>
  

</div>

 	<div>
		<jsp:include page="/footer.jsp" flush="false" />
	</div> 
</body>    

</html>












