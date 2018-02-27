<%@page import="com.minu.book.vo.BookBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	BookBean book = (BookBean)request.getAttribute("book");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ucarecdn.com/libs/widget/3.2.1/uploadcare.full.min.js" charset="utf-8"></script>
<script>
	UPLOADCARE_PUBLIC_KEY = "ebb95ce1aa3130ddf33d";
</script>
<title>책 정보 수정</title>
  <script src="/assets/js/jquery.min.js"></script>
<link rel="stylesheet" href="/menubarcss.css" />
<link rel="stylesheet" href="/assets/css/mainmenu.css" />
<link rel="stylesheet" href="/what2.css" />
<script src="/menubar.js"></script>
<script src="/assets/js/util.js"></script>
<script src="/assets/js/main.js"></script> 
  <script src="/mainboot.js"></script>
  <script src="/pwstrength.js"></script>
  <link rel="stylesheet" href="/mainboot.css">
 	<link rel="stylesheet" href="/mainCustom.css">
  <script src="/mainCustom.js"></script>
<script src="https://ucarecdn.com/libs/widget/3.2.1/uploadcare.full.min.js" charset="utf-8"></script>
</head>
<body id="body">
<div id="main_header">
		<jsp:include page="/header.jsp" flush="false" />
	</div>
	<div id="blog-container">
	<center>
		<h2>책 정보 수정</h2>
		<form action="modiFyBookPro.bk" method="post">
			<table border="1">
				<input type="hidden" name="ib_no" id="ib_no" value="<%=book.getIb_no() %>" />
				<tr>
					<td>제목</td>
					<td>
						<input type="text" name="ib_title" id="ib_title" value="<%=book.getIb_title()%>" required="required" />
					</td>
				</tr>
				<tr>
					<td>장르</td>
					<td>
						<select name="c_no" value="<%=book.getC_no() %>">
							<option value="1">에세이/시</option>
							<option value="2">소설</option>
							<option value="3">비즈니스/경제</option>
							<option value="4">자기계발</option>
							<option value="5">역사/문화</option>							
							<option value="6">여행/가정</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>작가명</td>
					<td><input type="text" name="ib_writer" id="ib_writer" value="<%=book.getIb_writer() %>" required="required" /></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><input type="text" name="ib_price" id="ib_price" value="<%=book.getIb_price() %>" required="required" /></td>
				</tr>
				<tr>
					<td>출판년도</td>
					<td><input type="text" name="ib_date" id="ib_date" value="<%=book.getIb_date() %>" required="required" /></td>
				</tr>
				<tr>
					<td>출판사 번호</td>
					<td><input type="text" name="ip_no" id="ip_no" value="<%=book.getIp_no() %>" /></td>
				</tr>
				<tr>
					<td>책 소개</td>
					<td><textarea name="ib_intro" id="ib_intro" required="required" ><%= book.getIb_intro() %></textarea></td>
				</tr>
				<tr>
					<td>총 페이지 수</td>
					<td><input type="text" name="ib_page" id="ib_page" value="<%= book.getIb_page() %>" required="required" /></td>
				</tr>
				<tr>
					<td>크기</td>
					<td><input type="text" name="ib_size" id="ib_size" value="<%=book.getIb_size() %>" required="required" /></td>
				</tr>		
				<tr>
					<td>책 표지</td>
					<td>
							<img src="<%= book.getIb_img() %>" alt="등록된 이미지 없음" />
							<input type="hidden" name="temp_img0" value="<%= book.getIb_img() %>"/>
							<input type="hidden" role="uploadcare-uploader" name="my_file0" required="required"/>				
					</td>
				</tr>
				<tr>
					<td>
						1. 책소개 이미지
					</td>
					<td>
							<img src="<%=book.getIb_img1() %>" alt="등록된 이미지 없음" />
							<input type="hidden" name="temp_img1" value="<%= book.getIb_img1() %>"/>
					  		<input type="hidden" role="uploadcare-uploader" name="my_file1" required="required" />
					</td>
				</tr>
				<tr>
					<td>
						2. 책소개 이미지
					</td>
					<td>
							<img src="<%=book.getIb_img2() %>" alt="등록된 이미지 없음" />
							<input type="hidden" name="temp_img2" value="<%= book.getIb_img2() %>"/>						
							<input type="hidden" role="uploadcare-uploader" name="my_file2" required="required" />										
					</td>
				</tr>
				<tr>
					<td>
						3. 책소개 이미지
					</td>
					<td>
							<img src="<%=book.getIb_img3() %>" alt="등록된 이미지 없음" />
							<input type="hidden" name="temp_img3" value="<%= book.getIb_img3() %>"/>
							<input type="hidden" role="uploadcare-uploader" name="my_file3" required="required"/>				
					</td>					
				</tr>				
				<tr>
					<td>재고량</td>
					<td>
						<select name="ib_stock" value="<%= book.getIb_stock()%>">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>							
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
						</select>						
					</td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<input type="submit" value="수정" />&nbsp; &nbsp;
						<input type="reset" value="다시쓰기"/>
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