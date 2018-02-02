/*****************8
 * 윈도우 시작시 input 감시
 */
$(document).ready(function(){
	$('#join_id').focusout(function(){
		checkJoin(this, "idchk");
	});
	$('#join_name').focusout(function(){
		checkJoin(this, "namechk");
	});
});

/***********8
 * modal관련 메서드
 * @returns
 */
function myModal() {
	$('#myModal').modal('show');
	$("body").removeClass("is-menu-visible");
	setTimeout(function(){
		$('#join_id').focus();
	}, 600);
	
}
function myModal1() {
	$('#myModal1').modal('show');
	$("body").removeClass("is-menu-visible");
}

/************************8
 * 중복검사 ajax들
 */
function checkJoin(inputObj, req){
	$.ajax({
        type:"POST",
        url:"./member/"+req,
        data : inputObj.name+'='+$('#'+inputObj.id).val(),
        dataType : "json",
        success: function(data){
        	resultJoinChk(data);
        },
        error: function(xhr, status, error) {
        	console.log();
        }  
    });
}

function resultJoinChk(data){
	var span; 
	if(data.type == 'email') span = document.getElementById("emailChk");
	else if(data.type == '닉네임') span = document.getElementById("nameChk");
	if(!data.result){
		span.innerHTML = data.type+'이 중복되지 않습니다.';
		span.style.color = 'blue';
	} else {
		span.innerHTML = data.type+'이 중복됩니다.';
		span.style.color = '#f00';
	}
}

/***********
 *  회원가입 관련 ajax
 */
function joinMember(){
    $.ajax({
        type:"POST",
        url:"./member/join",
        data : $("#joinForm").serialize(),
        dataType : "json",
        success: function(data){
        	joinSuccess(data);
        },
        error: function(xhr, status, error) {
            joinFail();
        }  
    });
   
}
/*************
 * ajax 후 실패와 성공처리
 * @returns
 */
function joinFail(){
	alert("죄송합니다. 연결오류로 가입이 실패하였습니다. 잠시후 다시 실행해 주세요.");
}

function joinSuccess(success){
	if(success){
		$('#myModal').modal('hide');
		$('#join_id').val('');
		$('#join_name').val('');
		$('#join_pass').val('');
		$('#join_pass_chk').val('');
		$("body").addClass("is-menu-visible");
		setTimeout(function(){
			$('#log_id').focus();
		}, 600);
	}
	else ;
}
