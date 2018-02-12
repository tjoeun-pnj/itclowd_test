package com.test.book.action;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.test.util.ActionForward;
import com.test.util.inter.Action;
import com.test.vo.BookVO;

public class BookMainNewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ActionForward forward = null;
//		String json = "http://www.aladin.co.kr/ttb/api/ItemList.aspx?ttbkey=ttbgsgod0906001&QueryType=ItemNewAll&MaxResults=10&start=1&SearchTarget=Book&output=js&cover=midbig&Version=20131101";
		String json = "{\"version\":\"20131101\",\"logo\":\"http://image.aladin.co.kr/img/header/2011/aladin_logo_new.gif\",\"title\":\"알라딘 전체 신간 리스트 - 국내도서\",\"link\":\"http:\\/\\/www.aladin.co.kr\\/shop\\/common\\/wnew.aspx?NewType=New&amp;BranchType=1&amp;partner=openAPI\",\"pubDate\":\"Mon, 12 Feb 2018 02:08:33 GMT\",\"totalResults\":1000,\"startIndex\":1,\"itemsPerPage\":10,\"query\":\"QueryType=ITEMNEWALL;SearchTarget=Book\",\"searchCategoryId\":0,\"searchCategoryName\":\"국내도서\",\"item\":[{\"title\":\"가브릴 드롭 아웃 5\",\"link\":\"http:\\/\\/www.aladin.co.kr\\/shop\\/wproduct.aspx?ItemId=133988653&amp;partner=openAPI&amp;start=api\",\"author\":\"우카미 지음\",\"pubDate\":\"2018-02-13\",\"description\":\"\",\"isbn\":\"K232532201\",\"isbn13\":\"9791133471973\",\"itemId\":133988653,\"priceSales\":4680,\"priceStandard\":5200,\"mallType\":\"BOOK\",\"stockStatus\":\"\",\"mileage\":19,\"cover\":\"http:\\/\\/image.aladin.co.kr\\/product\\/13398\\/86\\/cover150\\/k232532201_1.jpg\",\"categoryId\":3742,\"categoryName\":\"국내도서>만화>순정만화>레이디스 코믹\",\"publisher\":\"대원씨아이(만화)\",\"salesPoint\":0,\"fixedPrice\":true,\"customerReviewRank\":0,\"subInfo\":{}},{\"title\":\"삼차원 한자학\",\"link\":\"http:\\/\\/www.aladin.co.kr\\/shop\\/wproduct.aspx?ItemId=133988612&amp;partner=openAPI&amp;start=api\",\"author\":\"이운부 지음, 하영삼 외 옮김\",\"pubDate\":\"2018-02-12\",\"description\":\"\",\"isbn\":\"K212532201\",\"isbn13\":\"9791187746225\",\"itemId\":133988612,\"priceSales\":24300,\"priceStandard\":27000,\"mallType\":\"BOOK\",\"stockStatus\":\"\",\"mileage\":94,\"cover\":\"http:\\/\\/image.aladin.co.kr\\/product\\/13398\\/86\\/cover150\\/k212532201_1.jpg\",\"categoryId\":51543,\"categoryName\":\"국내도서>인문학>기호학\\/언어학>한국어\\/한문\",\"publisher\":\"도서출판3\",\"salesPoint\":0,\"fixedPrice\":true,\"customerReviewRank\":0,\"subInfo\":{}},{\"title\":\"탑 크리에이티브 일러스트 (DVD 포함)\",\"link\":\"http:\\/\\/www.aladin.co.kr\\/shop\\/wproduct.aspx?ItemId=133988590&amp;partner=openAPI&amp;start=api\",\"author\":\"모럴 편집부 지음\",\"pubDate\":\"2018-03-20\",\"description\":\"\",\"isbn\":\"K222532201\",\"isbn13\":\"9791160435726\",\"itemId\":133988590,\"priceSales\":89870,\"priceStandard\":99850,\"mallType\":\"BOOK\",\"stockStatus\":\"\",\"mileage\":308,\"cover\":\"http:\\/\\/image.aladin.co.kr\\/product\\/13398\\/85\\/cover150\\/k222532201_1.jpg\",\"categoryId\":51091,\"categoryName\":\"국내도서>예술\\/대중문화>디자인\\/공예>디자인이론\\/비평\\/역사\",\"publisher\":\"모럴\",\"salesPoint\":0,\"fixedPrice\":true,\"customerReviewRank\":0,\"subInfo\":{}},{\"title\":\"신 테니스의 왕자 21\",\"link\":\"http:\\/\\/www.aladin.co.kr\\/shop\\/wproduct.aspx?ItemId=133988549&amp;partner=openAPI&amp;start=api\",\"author\":\"코노미 타케시 지음\",\"pubDate\":\"2018-02-13\",\"description\":\"\",\"isbn\":\"K282532201\",\"isbn13\":\"9791133471898\",\"itemId\":133988549,\"priceSales\":4050,\"priceStandard\":4500,\"mallType\":\"BOOK\",\"stockStatus\":\"\",\"mileage\":18,\"cover\":\"http:\\/\\/image.aladin.co.kr\\/product\\/13398\\/85\\/cover150\\/k282532201_1.jpg\",\"categoryId\":2561,\"categoryName\":\"국내도서>만화>스포츠만화\",\"publisher\":\"대원씨아이(만화)\",\"salesPoint\":0,\"fixedPrice\":true,\"customerReviewRank\":0,\"subInfo\":{}},{\"title\":\"기록형 로스쿨 공법실무 - 제3판\",\"link\":\"http:\\/\\/www.aladin.co.kr\\/shop\\/wproduct.aspx?ItemId=133988541&amp;partner=openAPI&amp;start=api\",\"author\":\"이철환.김현철 지음\",\"pubDate\":\"2018-01-31\",\"description\":\"제2장 행정법 영역에서는 행정소송과 관련된 최근 판례를 추가하고, 제5회 변호사시험의 유형과 선택형 문제를 예시하여 변호사시험의 추세를 체감토록 하였다.\",\"isbn\":\"8968494703\",\"isbn13\":\"9788968494703\",\"itemId\":133988541,\"priceSales\":30400,\"priceStandard\":32000,\"mallType\":\"BOOK\",\"stockStatus\":\"\",\"mileage\":127,\"cover\":\"http:\\/\\/image.aladin.co.kr\\/product\\/13398\\/85\\/cover150\\/8968494703_1.jpg\",\"categoryId\":34963,\"categoryName\":\"국내도서>수험서\\/자격증>법\\/인문\\/사회\\/고시>사법고시>기본삼법\",\"publisher\":\"전남대학교출판부\",\"salesPoint\":0,\"fixedPrice\":true,\"customerReviewRank\":0,\"subInfo\":{}},{\"title\":\"엑셀런트 폰트 갤러리 (DVD 포함) - 개정5판\",\"link\":\"http:\\/\\/www.aladin.co.kr\\/shop\\/wproduct.aspx?ItemId=133988340&amp;partner=openAPI&amp;start=api\",\"author\":\"모럴 편집부 지음\",\"pubDate\":\"2018-03-20\",\"description\":\"\",\"isbn\":\"K192532201\",\"isbn13\":\"9791160435719\",\"itemId\":133988340,\"priceSales\":89910,\"priceStandard\":99890,\"mallType\":\"BOOK\",\"stockStatus\":\"\",\"mileage\":308,\"cover\":\"http:\\/\\/image.aladin.co.kr\\/product\\/13398\\/83\\/cover150\\/k192532201_1.jpg\",\"categoryId\":51091,\"categoryName\":\"국내도서>예술\\/대중문화>디자인\\/공예>디자인이론\\/비평\\/역사\",\"publisher\":\"모럴\",\"salesPoint\":0,\"fixedPrice\":true,\"customerReviewRank\":0,\"subInfo\":{}},{\"title\":\"실수를 찾아라! - 고대에서 중세까지 문명 속 틀린 그림 찾기\",\"link\":\"http:\\/\\/www.aladin.co.kr\\/shop\\/wproduct.aspx?ItemId=133988249&amp;partner=openAPI&amp;start=api\",\"author\":\"어맨다 우드.마이크 졸리 지음, 프랜시스 캐슬 그림, 손영인 옮김\",\"pubDate\":\"2018-02-12\",\"description\":\"\",\"isbn\":\"K152532201\",\"isbn13\":\"9791156131168\",\"itemId\":133988249,\"priceSales\":13500,\"priceStandard\":15000,\"mallType\":\"BOOK\",\"stockStatus\":\"\",\"mileage\":45,\"cover\":\"http:\\/\\/image.aladin.co.kr\\/product\\/13398\\/82\\/cover150\\/k152532201_1.jpg\",\"categoryId\":48905,\"categoryName\":\"국내도서>어린이>사회\\/역사\\/철학>세계사\",\"publisher\":\"봄나무\",\"salesPoint\":0,\"fixedPrice\":true,\"customerReviewRank\":0,\"subInfo\":{}},{\"title\":\"뻐꾸기 날리다\",\"link\":\"http:\\/\\/www.aladin.co.kr\\/shop\\/wproduct.aspx?ItemId=133988215&amp;partner=openAPI&amp;start=api\",\"author\":\"김우남 지음\",\"pubDate\":\"2018-01-30\",\"description\":\"직지소설문학상 우수상, '절세미인 노아' 중편소설공모전 우수상 수상작가 김우남 작가의 세 번째 소설집. 일곱 편의 단편 작품 중 공모 수상작인 두 편의 중편소설을 제외하고는 모두 흔들림 없이 우리 주변의 이야기, 개연성이 높은 \\\"끔찍하되 숫된 거대한 괴물\\\"인 현실이 지어내는 이야기를 풀어낸다.\",\"isbn\":\"893101077X\",\"isbn13\":\"9788931010770\",\"itemId\":133988215,\"priceSales\":11700,\"priceStandard\":13000,\"mallType\":\"BOOK\",\"stockStatus\":\"\",\"mileage\":44,\"cover\":\"http:\\/\\/image.aladin.co.kr\\/product\\/13398\\/82\\/cover150\\/893101077x_1.jpg\",\"categoryId\":50993,\"categoryName\":\"국내도서>소설\\/시\\/희곡>한국소설>2000년대 이후 한국소설\",\"publisher\":\"문예출판사\",\"salesPoint\":0,\"fixedPrice\":true,\"customerReviewRank\":0,\"subInfo\":{}},{\"title\":\"현대사회학 - 제8판\",\"link\":\"http:\\/\\/www.aladin.co.kr\\/shop\\/wproduct.aspx?ItemId=133988181&amp;partner=openAPI&amp;start=api\",\"author\":\"앤서니 기든스.필립 서튼 지음, 김미숙 외 옮김\",\"pubDate\":\"2018-02-20\",\"description\":\"\",\"isbn\":\"8932473722\",\"isbn13\":\"9788932473727\",\"itemId\":133988181,\"priceSales\":27000,\"priceStandard\":30000,\"mallType\":\"BOOK\",\"stockStatus\":\"\",\"mileage\":125,\"cover\":\"http:\\/\\/image.aladin.co.kr\\/product\\/13398\\/81\\/cover150\\/8932473722_1.jpg\",\"categoryId\":8333,\"categoryName\":\"국내도서>대학교재\\/전문서적>사회과학계열>사회학\",\"publisher\":\"을유문화사\",\"salesPoint\":0,\"fixedPrice\":true,\"customerReviewRank\":0,\"subInfo\":{}},{\"title\":\"수리통계학 개론 - 제7판\",\"link\":\"http:\\/\\/www.aladin.co.kr\\/shop\\/wproduct.aspx?ItemId=133988171&amp;partner=openAPI&amp;start=api\",\"author\":\"Hogg, Mckean, Craig 지음, 박태영 옮김\",\"pubDate\":\"2018-03-02\",\"description\":\"\",\"isbn\":\"K262532201\",\"isbn13\":\"9791160730951\",\"itemId\":133988171,\"priceSales\":35000,\"priceStandard\":35000,\"mallType\":\"BOOK\",\"stockStatus\":\"\",\"mileage\":158,\"cover\":\"http:\\/\\/image.aladin.co.kr\\/product\\/13398\\/81\\/cover150\\/k262532201_1.jpg\",\"categoryId\":8324,\"categoryName\":\"국내도서>대학교재\\/전문서적>자연과학계열>수학\",\"publisher\":\"경문사(경문북스)\",\"salesPoint\":0,\"fixedPrice\":true,\"customerReviewRank\":0,\"subInfo\":{}}]}".replaceAll("\\\'", "\\u0027").replaceAll(";", "");
		BookVO bVo = new Gson().fromJson(json, BookVO.class);
		JsonObject jObj = new JsonObject();
		res.setContentType("application/x-json;charset=utf-8");
		if(bVo != null) {
			jObj.addProperty("result", true);
			jObj.addProperty("json", json);
		} else {
			jObj.addProperty("result", false);
		}
		res.getWriter().print(jObj);
		return null;
	}

	
	/*@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		URL url = new URL("http://www.aladin.co.kr/ttb/api/ItemList.aspx?ttbkey=ttbgsgod0906001&QueryType=ItemNewAll&MaxResults=10&start=1&SearchTarget=Book&output=js&cover=midbig&Version=20131101");
		HttpURLConnection connection = null;
		String result = null;
		try {
			connection = (HttpURLConnection)url.openConnection();
			connection.setRequestMethod("GET");
			connection.connect();
			int resCode = connection.getResponseCode();
			 if (resCode == HttpURLConnection.HTTP_OK) {
				    result = read(connection).replaceAll("\\\'", "\\u0027").replaceAll(";", "");
			} else {
				throw new IOException("ERROR : Communication Error\nMSG Code : " + resCode);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			connection.disconnect();
		}
		BookVO bVo = new Gson().fromJson(result, BookVO.class);
		JsonObject jObj = new JsonObject();
		res.setContentType("application/x-json;charset=utf-8");
		if(bVo != null) {
			jObj.addProperty("result", true);
			jObj.addProperty("json", result);
		} else {
			jObj.addProperty("result", false);
		}
		res.getWriter().print(jObj);
		return null;
	}
*/
	
	 /**
	  * 수신하는 부분
	  * @param p_con
	  * @throws IOException
	  */
	 private String read(HttpURLConnection con) throws IOException {
	  BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	  String strData = null;
	  StringBuffer sb = new StringBuffer();
	  while ((strData = br.readLine()) != null) {
	   sb.append(strData);
	  }
	  return new String(sb.toString().getBytes());
	 }
}
