<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
	UPLOADCARE_PUBLIC_KEY = "ebb95ce1aa3130ddf33d";
</script>
<title>MVC Model2 게시판</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="/menubarcss.css" />
<link rel="stylesheet" href="/assets/css/mainmenu.css" />
<script src="/menubar.js"></script>
<script src="/assets/js/skel.min.js"></script>
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
		<h2>판매할 책 등록</h2>
		<form action="insertBookPro.bk" method="post">
			<table border="1">
				<tr>
					<td>제목</td>
					<td>
						<input type="text" name="ib_title" id="ib_title" required="required" />
					</td>
				</tr>
				<tr>
					<td>장르</td>
					<td>
						<select name="c_no">
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
					<td><input type="text" name="ib_writer" id="ib_writer" required="required" /></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><input type="text" name="ib_price" id="ib_price" required="required" /></td>
				</tr>
				<tr>
					<td>출판년도</td>
					<td><input type="text" name="ib_date" id="ib_date" required="required" /></td>
				</tr>
				<tr>
					<td>출판사 번호</td>
					<td><input type="text" name="ip_no" id="ip_no" value="0" /></td>
				</tr>
				<tr>
					<td>책 소개</td>
					<td><textarea name="ib_intro" id="ib_intro" required="required" ></textarea></td>
				</tr>
				<tr>
					<td>총 페이지 수</td>
					<td><input type="text" name="ib_page" id="ib_page" required="required" /></td>
				</tr>
				<tr>
					<td>크기</td>
					<td><input type="text" name="ib_size" id="ib_size" required="required" /></td>
				</tr>		
				<tr>
					<td>책 표지</td>
					<td><input type="hidden" role="uploadcare-uploader" name="my_file" required="required"/></td>
				</tr>
				<tr>
					<td>1. 책소개 이미지</td>
					<td><input type="hidden" role="uploadcare-uploader" name="my_file1" /></td>
				</tr>
				<tr>
					<td>2. 책소개 이미지</td>
					<td><input type="hidden" role="uploadcare-uploader" name="my_file2" /></td>
				</tr>
				<tr>
					<td>3. 책소개 이미지</td>
					<td><input type="hidden" role="uploadcare-uploader" name="my_file3" /></td>
				</tr>				
				<tr>
					<td>재고량</td>
					<td>
						<select name="ib_stock">
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
						<input type="submit" value="등록" />&nbsp; &nbsp;
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