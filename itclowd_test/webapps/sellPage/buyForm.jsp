<%@page import="com.minu.basket.vo.SonBean"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.test.member.medel.MemberVo"%>
<%@page import="com.minu.book.vo.BookBean"%>
<%@page import="com.minu.basket.vo.Basket"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	ArrayList<Basket> baskets = (ArrayList<Basket>)request.getAttribute("baskets");
	ArrayList<BookBean> books = (ArrayList<BookBean>)request.getAttribute("books");
	SonBean sonBean = new SonBean();
	sonBean.setBooks(books);
	sonBean.setBaskets(baskets);
	String json = new Gson().toJson(sonBean);
	int point=0;
	int sum=0;
	MemberVo mVo = (MemberVo)request.getSession(false).getAttribute("authUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주문서 작성</title>
</head>
<body>
		<center>
		<form action="buyInBasketPro.ba">
			<table>
				<tr>
					<th>이미지</th>
					<th>상세정보</th>
					<th>판매가</th>
					<th>수량</th>
					<th>적립금</th>
				</tr>
				<% for(int i=0; i<baskets.size(); i++) { %>
				<tr>
					<td><img src="<%= books.get(i).getIb_img() %>" alt="없음" width="70" height="100"/></td>
					<td>
						<%=books.get(i).getIb_title() %>
					</td>
					<td><%=books.get(i).getIb_price() %></td>
					<td><%=baskets.get(i).getC_amount() %></td>
					<td>
						<% 
							int tmp = books.get(i).getIb_price() * baskets.get(i).getC_amount();
							sum+=tmp;
							point =tmp/100;	
						%>
						<%= point %>
					</td>
				</tr>
				<%} %>
				<hr />
				<h6>상품구매금액<%= sum%>+배송비 : 2500 = 합계 : <%= sum+=2500 %></h6></td>	
				<hr />
			</table>
			<table>
				<h4>배송정보</h4>
				<h6>필수 입력 사항 *</h6>
				<tr>
					<td>주문하시는 분 *</td>
					<td>
						<input type="text" name="m_name" value="<%= mVo.getM_name()%>"/>
					</td>
				</tr>

				<tr>
					<td>주소 *</td>
					<td>

<input type="text" id="sample4_postcode" placeholder="우편번호" name="o_addr3" readonly="readonly">
<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
<input type="text" id="sample4_roadAddress" placeholder="도로명주소" name="o_addr2" readonly="readonly">
<input type="text" id="sample4_jibunAddress" placeholder="지번주소" name="o_addr0" readonly="readonly">

				<input type="text" name="o_addr1"/> 상세주소

<span id="guide" style="color:#999"></span>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>

					</td>
				</tr>
				<tr>
					<td>휴대전화 *</td>
					<td>
						<input type="text" name="first_no"/>-<input type="text" name="middle_no"/>-<input type="text" name="last_no"/>
					</td>
				</tr>
				<tr>
					<td>배송 메세지</td>
					<td>
						<textarea name="message" id="message" cols="30" rows="10"></textarea>
					</td>
				</tr>
			</table>
			<div>
				<h4>결제수단</h4>
				<input type="radio" name="radioBuyButton" value="무통장 입금" onclick="Radio_OnOff('Radio_On')" /> 무통장 입금
				<input type="radio" name="radioBuyButton" value="카드 결제" onclick="Radio_OnOff('Radio_Off')"/> 카드 결제
<script>
	var name;
	
				
	$(document).ready(function() {
		document.getElementById('Radio_On').style.display="none";
		document.getElementById('Radio_Off').style.display="none";
		$("input:radio[name=radioBuyButton]").click(function(){
			name= this.value;
			//alert(name);
			document.getElementById('buy_method').innerHTML = name;
		})
	});
	
	function Radio_OnOff(id){
		if(id=='Radio_On'){
			document.all["Radio_On"].style.display="";
			document.all["Radio_Off"].style.display="none";
		}else {
			document.all["Radio_On"].style.display="none";
			document.all["Radio_Off"].style.display="";
		}
	}
</script>				
				<div id="Radio_On">
					<table>
						<tr>
							<th>입금자명</th>
							<td>
								<input type="text" name="depositor" />
							</td>
						</tr>
						<tr>
							<th>입금 은행</th>
							<td>
								<select name="bank" >
									<option value="">:::::입금은행 선택::::</option>
									<option value="농협">농협</option>
									<option value="신한">신한</option>									
								</select>
							</td>
						</tr>
					</table>
				</div>
				<div id="Radio_Off">
					<table>
						<tr>
							<td>
								<h6>최소 결제가능 금액은 결제금액에서 배송비를 제외한 금액입니다.</h6>
								<h6>소액결제의 경우 PG사 정책에 따라 결제 금액 제한이 있을 수 있습니다.</h6>
							</td>
						</tr>
					</table>
				</div>
				<div>
					<h6 id="buy_method" class="one_line"></h6>
					<h6 class="one_line">최종 결제 금액</h6>
					<h4><%= sum %></h4><h6>원</h6>
					<input type="checkbox" /><h6>결제정보를 확인하였으며, 구매진행에 동의합니다.</h6>
					<input type="submit" value="결제하기" />
				</div>
			</div>
			<input type="hidden" name="sum" value="<%= sum %>" />
			<input type="hidden" name="list" value='<%= json  %>' />
			</form>
			<h4>무이자 할부 이용안내</h4>
		<h6>무이자할부가 적용되지 않은 상품과 무이자할부가 가능한 상품을 동시에 구매할 경우 전체 주문 상품 금액에 대해 무이자할부가 적용되지 않습니다.<br>
		   무이자할부를 원하시는 경우 장바구니에서 무이자할부 상품만 선택하여 주문하여 주시기 바랍니다.
		</h6> 
		<h4>이용안내</h4>
		<h6>WindowXP 서비스팩2를 설치하신후 결제가 정상적인 단계로 처리되지 않는경우, 아래의 절차에 따라 해결하시기 바랍니다.<br>
				1) 안심클릭 결제모듈이 설치되지 않은 경우 ActiveX 수동설치<br>
				2) Service Pack 2에 대한 Microsoft사의 상세안내<br>
			아래의 쇼핑몰일 경우에는 모든 브라우저 사용이 가능합니다.<br>
				1) KG이니시스, KCP, LG U+를 사용하는 쇼핑몰일 경우<br>
				2) 결제가능브라우저 : 크롬,파이어폭스,사파리,오페라 브라우저에서 결제 가능<br>
					(단, window os 사용자에 한하며 리눅스/mac os 사용자는 사용불가)
				3) 최초 결제 시도시에는 플러그인을 추가 설치 후 반드시 브라우저 종료 후 재시작해야만 결제가 가능합니다.<br>
					(무통장, 휴대폰결제 포함)<br>
			세금계산서 발행 안내<br>
				1) 부가가치세법 제 54조에 의거하여 세금계산서는 배송완료일로부터 다음달 10일까지만 요청하실 수 있습니다.<br>
				2) 세금계산서는 사업자만 신청하실 수 있습니다.<br>
				3) 배송이 완료된 주문에 한하여 세금계산서 발행신청이 가능합니다.<br>
				4) [세금계산서 신청]버튼을 눌러 세금계산서 신청양식을 작성한 후 팩스로 사업자등록증사본을 보내셔야 세금계산서 발생이 가능합니다.<br>
				5) [세금계산서 인쇄]버튼을 누르면 발행된 세금계산서를 인쇄하실 수 있습니다.<br>
			부가가치세법 변경에 따른 신용카드매출전표 및 세금계산서 변경안내<br>
				1) 변경된 부가가치세법에 의거, 2004.7.1 이후 신용카드로 결제하신 주문에 대해서는 세금계산서 발행이 불가하며<br>
				2) 신용카드매출전표로 부가가치세 신고를 하셔야 합니다.(부가가치세법 시행령 57조)<br>
				3) 상기 부가가치세법 변경내용에 따라 신용카드 이외의 결제건에 대해서만 세금계산서 발행이 가능함을 양지하여 주시기 바랍니다.<br>
			현금영수증 이용안내<br>
				1) 현금영수증은 1원 이상의 현금성거래(무통장입금, 실시간계좌이체, 에스크로, 예치금)에 대해 발행이 됩니다.<br>
				2) 현금영수증 발행 금액에는 배송비는 포함되고, 적립금사용액은 포함되지 않습니다.<br>
				3) 발행신청 기간제한 현금영수증은 입금확인일로 부터 48시간안에 발행을 해야 합니다.<br>
				4) 현금영수증 발행 취소의 경우는 시간 제한이 없습니다. (국세청의 정책에 따라 변경 될 수 있습니다.)<br>
				5) 현금영수증이나 세금계산서 중 하나만 발행 가능 합니다.<br>
		</h6>
		</center>
</body>
</html>