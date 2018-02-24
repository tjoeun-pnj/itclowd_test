<%@page import="java.util.Date"%>
<%@page import="com.test.member.medel.MemberVo"%>
<%@page import="com.test.util.db.PageInfo"%>
<%@page import="com.test.board.model.BoardBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<%
     ArrayList<BoardBean> articleList = (ArrayList<BoardBean>)request.getAttribute("articleList");
     PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
     MemberVo mVo = (MemberVo)request.getSession().getAttribute("authUser");
     boolean isLogin = false;
     if(mVo != null) isLogin = true;
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
<script src="assets/js/jquery.min.js"></script>
<link rel="stylesheet" href="menubarcss.css" />
<link rel="stylesheet" href="assets/css/mainmenu.css" />
<script src="menubar.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
  <script src="pwstrength.js"></script>
  <script src="mainboot.js"></script>
  <link rel="stylesheet" href="mainboot.css">
  <!-- <link rel="stylesheet" href="bootstrap.css"> -->
  <link rel="stylesheet" href="mainCustom.css">
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
<script type="text/javascript">
	function boardDetailGo(board_num, page, bm_no, isSecret){
		if(isSecret) {
			if(<%=isLogin%>){
				if(bm_no == <%if(isLogin){%><%=mVo.getM_no()%><%}else{%>-1<%}%>){
					location.href = 'boardDetail.bo?board_num='+board_num+'&page='+page;
					return;
				}
				alert('비밀글입니다.');
				return;
			}
			alert('비밀글 입니다. 로그인하세요');
			return;
		}
		location.href = 'boardDetail.bo?board_num='+board_num+'&page='+page;
	}
</script>
<body>

<body id="body">

	<div id="main_header">
		<jsp:include page="/header.jsp" flush="false" />
	</div>
	
  <div id="blog-container">
      <center>
    	<input type="checkbox" value="dd">
      <h2>질문게시판</h2>
      	
    <div class="container">
       <div class="row" >
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
	      	  <tbody style="background-color: white;">
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
		      			<a onclick="boardDetailGo(<%=articleList.get(i).getBoard_num() %>, <%=nowPage%>, <%=articleList.get(i).getM_no() %>, <%if(articleList.get(i).getBoard_pass() != null && articleList.get(i).getBoard_pass().equals("")){%>true<%}else{%>false<%}%>);">
		      			    <%= articleList.get(i).getBoard_subject()%>
		      			</a>
		      			<%if(articleList.get(i).getBoard_pass() != null && articleList.get(i).getBoard_pass().equals("")){ %>
		     <img src="//img0001.echosting.cafe24.com/front/type_b/image/common/icon_lock.gif"  alt="비밀글" />
		     			<%} %>
		      			</td>
		      			<% if(articleList.get(i).getIb_img() != null && articleList.get(i).getIb_no() > 0){ %>
		      			<td><a onclick="indieDetail(<%=articleList.get(i).getIb_no()%>);"><img src="/image/<%= articleList.get(i).getIb_img() %>"/></a></td>		
		      			<%}else{ %>
		      			<td></td>		
		      			<%} %>
		      			<td><%= articleList.get(i).getM_name() %></td>
		      			<td><%= articleList.get(i).getBoard_date() %></td>
		      			<td><%= articleList.get(i).getBoard_readcount() %></td>
		      		</tr>
	      		<% } %>
        
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
	      	</tbody>	
	   		<% } else { %>
	   
	   <div class="container">
       <div class="row" style="background-color: white;">
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
	      	</div>
	        </div>
	        <u:isLogin>
	        <a href="boardWriteForm.bo" class="button btn">질문하기</a>
	        </u:isLogin>
	        <u:notLogin>
	        <a onclick="alert('로그인 하세요');return false;" class="button btn" >질문하기</a>
	        </u:notLogin>
		      </center>
		      </div>   
    	<div>
		<jsp:include page="/footer.jsp" flush="false" />
	</div> 
</body>
</html>


















