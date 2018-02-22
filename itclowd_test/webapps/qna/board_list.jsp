<%@page import="com.test.util.db.PageInfo"%>
<%@page import="com.test.board.model.BoardBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<%
     ArrayList<BoardBean> articleList = (ArrayList<BoardBean>)request.getAttribute("articleList");
     PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
     int listCount = pageInfo.getListCount();
     int nowPage = pageInfo.getPage();
     int maxPage = pageInfo.getMaxPage();
     int startPage = pageInfo.getStartPage();
     int endPage = pageInfo.getEndPage();
     
%>
<!DOCTYPE>
<html>
<head>
<meta name="viewport" content="width=device-width", initial-scale="1"/>
<!-- <link rel="stylesheet" href="css/button.css" />  -->
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
  <script src="pwstrength.js"></script>
  <script src="mainboot.js"></script>
  <link rel="stylesheet" href="mainboot.css">
  <link rel="stylesheet" href="mainCustom.css">
  <!-- <link rel="stylesheet" href="bootstrap.css"> -->
  <!-- <script src="bootstrap.js"></script> -->
  <script src="mainCustom.js"></script>
<title>Q & A</title>
</head>
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
<body>

<body id="body">

	<div id="main_header">
		<jsp:include page="/header.jsp" flush="false" />
	</div>
	
  <div id="blog-container">
      <center>
    
      <h2></h2>
    <div class="container">
       <div class="row">
        <table class="table table-striped" style="text-align: center; border:1px solid #dddddd">
      	   <% if(articleList != null && listCount > 0) { %>
      		<thead>
      		<tr align="center">
                 <th style="background-color: #eeeeee; text-align: center;">번호</th>
                 <th style="background-color: #eeeeee; text-align: center;">제목</th>
                 <th style="background-color: #eeeeee; text-align: center;">상품</th>
                 <th style="background-color: #eeeeee; text-align: center;">작성자</th>
                 <th style="background-color: #eeeeee; text-align: center;">작성일</th>
                 <th style="background-color: #eeeeee; text-align: center;">조회수</th>
	      		</tr>
	      	  </thead>
	      	  <tbody>
	      		<% 
	      		int listNum = listCount-((nowPage-1)*10);
	      		for(int i=0; i<articleList.size() ; i++) { %>
		      		<tr>
<%-- 		      			<td><%= articleList.get(i).getROWNUM()%></td>
 --%>		      			<td><%= listNum--%></td>  <!-- 역순을 의미 -->
		      			<td>
		      			   <% if(articleList.get(i).getBoard_re_lev() != 0) {%>
		      			      <% for(int j=0; j<=articleList.get(i).getBoard_re_lev()*2; j++) { %>
		      			        &nbsp; 
		      			      <% } %>
       <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_re.gif"  alt="답변" /> 

		      			    <% } else { %>
      <!-- <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_re.gif"  alt="답변" />  -->
		      			      <% } %>
		      			<a href="boardDetail.bo?board_num=<%=articleList.get(i).getBoard_num() %>&page=<%=nowPage%>">
		      			    <%= articleList.get(i).getBoard_subject()%>
		      			</a>
		     <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_lock.gif"  alt="비밀글" />
		      			</td>
		      			<td><%= articleList.get(i).getIb_img() %></td>		
		      			<td><%= articleList.get(i).getM_name() %></td>
		      			<td><%= articleList.get(i).getBoard_date() %></td>
		      			<td><%= articleList.get(i).getBoard_readcount() %></td>
		      		</tr>
	      		<% } %>
         </tbody>	
	      		<tr align="center">
	      		    <td colspan="6">
	      		         <% if(nowPage<=1) { %> 
	      		          <&nbsp;
	      		         <%} else { %> 
	      		         <a href="boardList.bo?page=<%=nowPage-1%>"><</a>&nbsp; 
	      		         <%} %>
	      		         
	      		         <%for(int i=startPage; i<= endPage; i++) {%>
	      		         
	      		         <%if(i==nowPage) {%>
	      		           [<%=i%>]
	      		          <%} else {%>
	      		             <a href="boardList.bo?page=<%=i%>"><%=i%></a>&nbsp;
	      		          <%} %>
	      		         <%} %>
	      		         
	      		         <% if(nowPage>=maxPage) { %>
                              >
	      		         <%} else { %>
	      		          <a href="boardList.bo?page=<%=nowPage+1%>" >></a>
	      		         <%} %>
	      		    </td>
	      		</tr>
	   		<% } else { %>
	   
	   <div class="container">
       <div class="row">
        <table class="table table-striped" style="text-align: center; border:1px solid #dddddd">

    		<tr align="center">
                 <th style="background-color: #eeeeee; text-align: center;">번호</th>
                 <th style="background-color: #eeeeee; text-align: center;">제목</th>
                 <th style="background-color: #eeeeee; text-align: center;">상품</th>
                 <th style="background-color: #eeeeee; text-align: center;">작성자</th>
                 <th style="background-color: #eeeeee; text-align: center;">작성일</th>
                 <th style="background-color: #eeeeee; text-align: center;">조회수</th>
            </tr>
            </table>
          </div>
          </div>
		<% } %> 

      	</table>
      	
<%--        <a
       <%
        	if(session.getAttribute("isLogin") != null && (boolean)session.getAttribute("isLogin")){
        %>
        href="boardWriteForm.bo" 
     <%}else{ %>
       	onclick="alert('로그인하셈')" 
         href="boardWriteForm.bo" 
        <%} %>
        class="btn btn-default">글쓰기</a> --%>
        <u:isLogin>
        <a href="boardWriteForm.bo" class="button btn" >글쓰기</a>
        </u:isLogin>
        <u:notLogin>
        <a onclick="alert('로그인 하세요');return false;" class="button btn" >글쓰기</a>
        </u:notLogin>
        
      </center>
      
      </div>   
      

    	<div>
		<jsp:include page="/footer.jsp" flush="false" />
	</div> 
</body>
</html>


















