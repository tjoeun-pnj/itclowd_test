<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<head> 
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<link rel="stylesheet" href="css/button.css" /> 
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script> 
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
 <script src="assets/js/jquery.min.js"></script>
<link rel="stylesheet" href="menubarcss.css" />
<link rel="stylesheet" href="assets/css/mainmenu.css" />
<link rel="stylesheet" href="what2.css" />
<script src="menubar.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
  <script src="mainboot.js"></script>
  <script src="pwstrength.js"></script>
  <link rel="stylesheet" href="mainboot.css">
  <link rel="stylesheet" href="mainCustom.css">
  <script src="mainCustom.js"></script> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<title>Q & A</title> 
<style>
#body{
  background-color: #f5f0ef;
  background-size: auto;
}

</style>

</head>


 <body id="body">
 
 	<div id="main_header">
		<jsp:include page="/header.jsp" flush="false" />
	</div>
	
    
    <div id="blog-container"> 
 <div class="guideBook">
        <div class="center-box">
    <div class="panel-heading"><h2>&nbsp;&nbsp;&nbsp;Q & A</h2></div> 

    <div class="container"> 
    	<form action="boardWrtiePro.bo" method="post" name="boardform">			
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
			  <label for="BOARD_CONTENT">내용:</label> 
			  <textarea class="form-control" rows="10" name="BOARD_CONTENT" id="BOARD_CONTENT" required="required"></textarea>
			</div>  
			
			 <div class="form-group"> 
			  <label for="BOARD_FILE">파일</label> 
			  <input type="file" name="BOARD_FILE" class="button btn" id="BOARD_FILE"> 
			 </div> 
    	  	
    	  	
    	  		  	
         <div class="center-block" > 
            <input type="submit" class="button btn"  value="등록">
            <input type="reset" class="button btn" value="다시쓰기"> 
            <input type="button" class="button btn" value="Back" onclick="history.back(1)">
    	</div>
    	    	
     </form>
     
     </div>
     </div>
    	</div></div>
     <div>
		<jsp:include page="/footer.jsp" flush="false" />
	</div> 
	
</body>
</html>










