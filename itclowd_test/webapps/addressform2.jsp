<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head><title></title></head>
<link rel="stylesheet" href="mind.css" />
<body>

  <div id="wrap">
        <div id="container">
            <div id="contents">                
       <div class="titleArea">
    <h2>배송 주소록</h2>
   </div>

		<form id="frmAddr" name="" action="" method="post" enctype="multipart/form-data" >
		<input id="" name="" value="" type="hidden"  />
		<input id="" name="" value="" type="hidden"  />
		<input id="" name="" value="" type="hidden"  />
		<input id="" name="" value="" type="hidden"  />
		<input id="" name="" value="" type="hidden"  />
		<input id="" name="" value="" type="hidden"  />
		<input id="" name="" value="" type="hidden"  />
		<input id="" name="" value="" type="hidden"  />
		<input id="" name="" value="" type="hidden"  />
		<input id="" name="" value="" type="hidden"  />
		<input id="" name="" value="" type="hidden"  />

   <div class="">

   <div class="ec-base-table typeWrite">
        <table border="1" summary="">

	 <colgroup>
		<col style="width:120px"/>
		<col style="width:auto"/>
	</colgroup>
		<tbody>
        <tr>
		<th scope="row">배송지명 *</th> 
		<td><input id="ma_rcv_title" name="ma_rcv_title" type="text"  /></td>
	    </tr>
		<tr>
		<th scope="row">성명 *</th>
		<td><input id="ma_rcv_name" name="ma_rcv_name" fw-filter="isFill" fw-label="성명" fw-msg="" class="ec-member-name" placeholder="" value="" type="text"  /></td>
		</tr>
		<tr>
		
		<th scope="row">주소 *</th>
		<td>
        <input id="address_zip1" name="address_zip1" fw-filter="isMin[3]&isMax[8]" fw-label="우편번호" fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" maxlength="14" value="" type="text"  />                        
         <a href="#none" onclick="ZipcodeFinder.Opener.bind('SearchAddress', 'address_zip1', 'address_zip2', 'address_addr1', 'layer', 'city_name', 'state_name', 'address_addr2' );" id="SearchAddress">
         <img src="//img.echosting.cafe24.com/skin/base_ko_KR/order/btn_zipcode.gif" alt="우편번호"/></a><br/>
		<input id="address_addr1" name="address_addr1" fw-filter="" fw-label="주소" fw-msg="" class="inputTypeText" placeholder="" readonly="readonly" value="" type="text"  /> 기본주소<br/>
		<input id="address_addr2" name="address_addr2" fw-filter="isFill" fw-label="주소" fw-msg="" class="inputTypeText" placeholder="" value="" type="text"  /> 나머지주소<span class="displaynone">(선택입력가능)</span>
		</td>
		</tr>
		
		<tr>
		<th scope="row">휴대전화 <span class="displaynone"> *</span>
        </th>
    <td>
     <select id="ma_rcv_mobile_no1" name="ma_rcv_mobile_no[]" fw-filter="isNumber" fw-label="휴대전화" fw-alone="N" fw-msg="" >
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="018">018</option>
					<option value="019">019</option>
   </select>
   -
   <input id="ma_rcv_mobile_no2" name="ma_rcv_mobile_no[]" maxlength="4" fw-filter="isNumber" fw-label="휴대전화" fw-alone="N" fw-msg="" value="" type="text"  />
   -
   <input id="ma_rcv_mobile_no3" name="ma_rcv_mobile_no[]" maxlength="4" fw-filter="isNumber" fw-label="휴대전화" fw-alone="N" fw-msg="" value="" type="text"  /></td>
                </tr>
		<tr class="right">
		<td colspan="2"><input id="ma_main_flag0" name="ma_main_flag" fw-filter="" fw-label="기본 배송지로 저장" fw-msg="" value="T" type="checkbox"  />
		<label for="ma_main_flag0" >기본 배송지로 저장</label></td>
                </tr>
	</tbody>
	</table>
	</div>
      <div class="ec-base-button myshop-basic-button">
        <span class="gRight">
            <a href="#none" type="submit">등록</a>
            <a href="#">취소</a>
            </span>
          </div>
      </div>
     </form>
       </div>
      </div>
    </div>
   
</body>
</html>