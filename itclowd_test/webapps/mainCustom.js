
/***********8
 * modal관련 메서드
 * @returns
 */
function myModal() {
	$('#myModal').modal('show');
	$("body").removeClass("is-menu-visible");
}
function myModal1() {
	$('#myModal1').modal('show');
	$("body").removeClass("is-menu-visible");
}

/***********
 *  ajax관련
 */
function joinMember(){
    $.ajax({
        type:"POST",
        url:"./member/join",
        data : $("#joinForm").serialize(),
        dataType : "json",
        success: function(data){
            console.log(data);
            if(data.result) alert("true");
            else alert("false");
        },
        error: function(xhr, status, error) {
            alert(error+status);
        }  
    });
}
