<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>독립책</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
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
<script src="https://ucarecdn.com/libs/widget/3.2.1/uploadcare.full.min.js" charset="utf-8"></script>
<script>
	UPLOADCARE_PUBLIC_KEY = "ebb95ce1aa3130ddf33d";
</script>
<style>
	#blog-container {
		width: 50%; position: absolute; left: 30%; margin-left: -200px;
	}
</style>
</head>
<body id="body">
	<div id="main_header">
		<jsp:include page="/header.jsp" flush="false" />
	</div>
	<div id="blog-container"> 
		<h2>판매할 책 등록</h2>
		<form action="insertBookPro.bo" method="post">
			<table border="1">
				<tr>
					<td>
						<h4>제목</h4>
						<input type="text" name="ib_title" id="ib_title" required="required" />
					</td>
				</tr>
				<tr>
					<td>
						<h4>장르</h4>
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
					<td>
						<h4>작가</h4>
						<input type="text" name="ib_writer" id="ib_writer" required="required" />
					</td>
				</tr>
				<tr>
					<td>
						<h4>가격</h4>
						<input type="text" name="ib_price" id="ib_price" required="required" />
					</td>
				</tr>
				<tr>
					<td>
						<h4>출판년도</h4>
						<input type="date" name="ib_date" id="ib_date" required="required" />
					</td>
				</tr>
				<tr>
					<td>
						<h4>출판사 번호</h4>					
						<input type="text" name="ip_no" id="ip_no" value="0" />
					</td>
				</tr>
				<tr>
					<td>
						<h4>책 소개</h4>
						<textarea name="ib_intro" id="ib_intro" required="required" ></textarea>
					</td>
				</tr>
				<tr>
					<td>
						<h4>총 페이지 수</h4>
						<input type="text" name="ib_page" id="ib_page" required="required" />
					</td>
				</tr>
				<tr>
					<td>
						<h4>크기</h4>
						<input type="text" name="ib_size" id="ib_size" required="required" />
					</td>
				</tr>		
				<tr>
					<td>
						<h4>책 표지</h4>					
						<input type="hidden" role="uploadcare-uploader" name="my_file" required="required"/>
					</td>
				</tr>
				<tr>
					<td>
						<h4>1. 책소개 이미지</h4>
						<input type="hidden" role="uploadcare-uploader" name="my_file1" />
					</td>
				</tr>
				<tr>
					<td>
						<h4>2. 책소개 이미지</h4>
						<input type="hidden" role="uploadcare-uploader" name="my_file2" />
					</td>
				</tr>
				<tr>
					<td>
						<h4>3. 책소개 이미지</h4>
						<input type="hidden" role="uploadcare-uploader" name="my_file3" />
					</td>
				</tr>				
				<tr>
					<td>
						<h4>재고량</h4>
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
	</div>
	<div id="footer">
		풋터
	</div>
</body>
</html>