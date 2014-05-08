<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<title>LG Arts Center</title>
		<meta http-equiv="imagetoolbar" content="no" />
		<meta name="robots" content="index,follow" />
		<meta name="subject" content="LG Arts Center에 오신 여러분은 환영합니다." />
		<meta name="author" content="(주)컬처닷컴 , LG Arts Center" />
		<meta name="keywords" content="LG Arts Center " />
		<meta name="copyright" content="Copyright 1998-2010 By LG Arts Center All rights reserved." />
		<link href="/UIPage/Perf/Sale/Css/importPerfsale.css" type="text/css" rel="stylesheet" />
		<link href="/include/js/custom-1.9.0/themes/user/jquery-ui-1.9.0.custom.css"  type="text/css" rel="stylesheet" />
		<script type="text/javascript" src="/include/js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="/include/js/custom-1.9.0/external/jquery.cookie.js"></script>
		<script type="text/javascript" src="/include/js/jcom/jurl/jquery.url.js"></script>
		<script type="text/javascript" src="/include/js/jcom/jcaret/jquery.caret.1.02.min.js"></script>
		<script type="text/javascript" src="/include/js/custom-1.9.0/ui/jquery-ui-1.9.0.custom.min.js"></script>
		<script type="text/javascript">
		    var $j = jQuery.noConflict();
		</script>
		<script type="text/javascript" src="/include/js/jry_home_jdefault.js"></script>
		<script type="text/javascript" src="/include/js/jry_home_jdialog.js"></script>
		<script type="text/javascript" src="/include/js/jry_home_jui.js"></script>
		<script type="text/javascript" src="/include/js/jdefault_home.js"></script>
		<!-- 예매 스크립트 로드 -->
		<script src="/UIPage/Perf/Sale/Scripts/ps_gobalVariables.js" type="text/javascript"></script>
		<script src="/UIPage/Perf/Sale/Scripts/ps_perfCalendar.js" type="text/javascript"></script>
		<script src="/UIPage/Perf/Sale/Scripts/ps_divControls_v1.0.js" type="text/javascript"></script>
		<script src="/UIPage/Perf/Sale/Scripts/ps_asyncBooking_v1.0.js" type="text/javascript"></script>
		<script src="/UIPage/Perf/Sale/Scripts/ps_ticketSale.js" type="text/javascript"></script>
	</head>
	<body class="pop">
		<form name="baseForm" method="post" action="PerfSaleProcess.aspx?IdPerf=252159" id="baseForm">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE2OTk2MTc4NDkPZBYCZg9kFgICBQ8WAh4JaW5uZXJodG1sBUjshJzsmrgg6rSA7JWF6rWsIOuvuOyEseuPmSAgIOuMgOyasO2RuOultOyngOyYpOyVhO2MjO2KuCAgMTA464+ZIDE0MDLtmLhkZAnN4jREfCgWcHpu4RTWByUCC4PwnJacAGw6D1HmiBYr" />
</div>

<div>

	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEWBwLHptjDDQLe8pCRAwKf08/nAgLOl/anBALpgJS9DgLZnda2DwK0oI9QAi5wVh4y7Z9L3c1Mp7e5CuDpmUNMu1IXQXu7j9NiVsI=" />
</div>
			<div id="progressBar" style="width:300px;display:none"></div>
			<script type="text/javascript">
			    $j("#progressBar").jry_home_ShowProgressBar({
			        "state": "start"
			    });
			</script>
			<div id='dialogAlert' style='display:none;'></div><div id='dialogConfirm' style='display:none;'></div><div id='dialogPopup' style='display:none;'></div>
			<!-- UI 영역 START -->
			<div id="pop_wrap">
				<div id="header">
					<h1><acronym>LG Arts Center TICKETING</acronym></h1>
					<ul class="st_sign">
						<li class="st01">
							<span>01.공연선택</span>
						</li>
						<li class="st02">
							<span>02.날짜선택</span>
						</li>
						<li class="st03">
							<span>03.회차/좌석</span>
						</li>
						<li class="st04">
							<span>04.할인선택</span>
						</li>
						<li class="st05">
							<span>05.수령방법</span>
						</li>
						<li class="st06">
							<span>06.결제수단</span>
						</li>
						<li class="st07">
							<span>07.예매완료</span>
						</li>
					</ul>
				</div><!-- //header -->
				<hr/>
				<div id="pop_container">
					<div id="SuccessBoard" class="pfCp" style="display:none;">
						<div class="pfCp_cpt">
							<div class="pfCp_txt">
								<h3>예매가 완료되었습니다.</h3>
								<p>
									<span>LG Arts Center을 이용해 주셔서 감사합니다. 고객님께서 결제하신 티켓 예매내역은 이와 같습니다. 이용하신 내역은</span><a href="javascript:fts_GoMyOrder();"><span>마이티켓 &gt; 예매내역확인</span></a><span>에서 확인 하실 수 있습니다. 앞으로도 많은 이용 바랍니다. 감사합니다.</span>
								</p>
							</div>
							<div class="pfCp_bt">
								<a class='doublecursor'><img src="/images/perfsale/bt_ok.gif" alt="확인" /></a>
							</div>
							<iframe scrolling="no" frameborder="0" allowtransparency="true" src='http://www.lgart.com/UIPage/Perf/Sale/Banner/PerfSaleBannerEnd.aspx' ></iframe>
						</div>
						<div class="pfCp_con">
							<h2><img src="/images/perfsale/txt_num.gif" alt="예매번호" /><span>&nbsp;</span></h2>
							<div class="pfCp_i">
								<h4><img src="/images/perfsale/h_basic.gif" alt="예매기본정보" /></h4>
								<ul>
									<li class="pfCp_tit">
										<em>공연명</em>
										<div>
											&nbsp;
										</div>
									</li>
									<li>
										<em>관람일시</em>
										<div>
											&nbsp;
										</div>
									</li>
									<li>
										<em>관람시간</em>
										<div>
											&nbsp;
										</div>
									</li>
									<li>
										<em>선택좌석</em>
										<div>
											<ul></ul>
										</div>
									</li>
									<li>
										<em>결제수단</em>
										<div>
											&nbsp;
										</div>
										<div class="pfCp_ipay">
											&nbsp;
										</div>
									</li>
									<li>
										<em>배송방법</em>
										<div>
											&nbsp;
										</div>
									</li>
								</ul>
							</div>
							<div class="pfCp_m">
								<h4><img src="/images/perfsale/h_billing.gif" alt="예매결제정보" /></h4>
								<ul>
									<li>
										<em>티켓금액</em>
										<div>
											<span>&nbsp;</span>원
										</div>
									</li>
									<li>
										<em>할인금액</em>
										<div>
											<span>&nbsp;</span>원
										</div>
									</li>
									<li style="display:none;">
										<em>예매수수료</em>
										<div>
											<span>&nbsp;</span>원
										</div>
									</li>
									<li style="display:none;">
										<em>배송료</em>
										<div>
											<span>&nbsp;</span>원
										</div>
									</li>
									<li>
										<em>관련상품</em>
										<div>
											<span>&nbsp;</span>원
										</div>
									</li>
									<li>
										<em>LG아트포인트</em>
										<div>
											<span>&nbsp;</span>원
										</div>
									</li>
									<li>
										<em>예매권금액</em>
										<div>
											<span>&nbsp;</span>원
										</div>
									</li>
									<li>
										<em>쿠폰금액</em>
										<div>
											<span>&nbsp;</span>원
										</div>
									</li>
									<li>
										<em>상품권</em>
										<div>
											<span>&nbsp;</span>원
										</div>
									</li>
									<li>
										<em>복지몰포인트</em>
										<div>
											<span>&nbsp;</span>원
										</div>
									</li>
								</ul>
								<div class="pfCp_pri">
									<span>총결제금액</span><strong>&nbsp;</strong>원
								</div>
							</div>
						</div>
					</div>
					<!-- //pfCp -->
					<div class="seating" style="display:none;">
						<div class="st_top">
							<p class="st_tit">
								<span>공연명</span>&nbsp;
							</p>
							<p class="st_sel">
								<span>다른회차 선택</span>
								<select id="selFlashDateAll" onchange="fdc_selFlashDateAllChange(this.value);"></select>
								<select id="selFlashTime" onchange="javascript:fdc_SelFlashTimeChange(this.value);"></select>
							</p>
						</div>
						<div class="f_seat"></div>
					</div><!-- //seating -->
					<div class="content">
						<div id="step01" class="step1" regiontitle="1">
							<h2><a><span>01.공연선택</span></a></h2>
							<div class="st_con">
								<div class="select_genre">
									<input id="txtSearchName" type="text" maxlength="50" style="width: 130px;" />
									<input type="button" value="확인" class="bt_dc" onclick="fdc_SearchPerfList(false);" />
									<ul id="ulPerfList"></ul>
								</div>
								<div id="divHiddenPerfInfo" style="display:none;"></div>
							</div>
						</div><!-- //step1.공연선택 끝 -->
						<div id="step02" class="step2" regiontitle="1">
							<h2><a><span>02.날짜선택</span></a></h2>
							<div class="st_con">
								<div class="td_cal">
									<!-- 달력 START -->
									<!-- 달력 END -->
								</div>
								<p class="guide_day">
									<span>예매가능한날짜</span><span>선택하신날짜</span>
								</p>
							</div>
						</div><!-- //step2.날짜선택 끝 -->
						<div id="step03" class="step3" regiontitle="1">
							<h2><a><span>03.회차/좌석선택</span></a></h2>
							<div class="st_con">
								<p class="sel_day">
									<span>선택된 날짜</span><strong>&nbsp;</strong>
								</p>
								<!-- 회차선택 -->
								<div id="divSelTime"></div>
								<!-- 현재 남은 좌석 -->
								<ul class="li_time"></ul>
								<input type="button" value="좌석선택" class="bt_seat doublecursor" onclick="fdc_ChoiceSeat();" />
							</div>
						</div><!-- //step3.회차/좌석선택 끝 -->
						<div id="step04" class="step4" regiontitle="1">
							<h2><a><span>04.할인 선택</span></a></h2>
							<!-- 현재탭으로 이동되었거나 클릭 시 보여지는 부분 -->
							<div class="st_tab" style="display:none;">
								<div class="sec_promotion">
									<div class="dc_wrap" style="height: 210px;">
										<!-- 할인 리스트 -->
										<h3 class="dc_c_01"><span>할인</span></h3>
										<ul class="dc_class"></ul>
										<div id="divPromotionList"></div>
										<!-- 포인트 누적 점수 -->
									</div>
									<!-- //dc_wrap -->
								</div>
								<input type="button" value="다음단계로" class="bt_ok doublecursor" onclick="fdc_PromotionEnd();" />
							</div><!-- //st_tab -->
						</div><!-- //step4.할인/예매권 사용 끝 -->
						<div id="step05" class="step5" regiontitle="1">
							<h2><a><span>05.관련상품 선택</span></a></h2>
							<div class="st_tab" style="display:none;">
								<div class="sec_delivery">
									<div class="dc_wrap" style="height: 210px;">
										<!-- 관련 상품 -->
										<h3 class="goods"><span>상품</span></h3>
										<div id="divGoods"></div>
									</div>
									<!-- //dc_wrap -->
								</div>
								<!-- LG아트센터 : 현장수령만 가능, Ajax cs 안에서 항상 고정. 내용은 항상 숨김 -->
								<div style="display:none;">
									<p id="deliveryPos"></p>
									<ul class="del_desc">
										<li>
											<em>1) 현장수령</em>
											1. 현장 수령을 요청하신 고객은 공연당일 매표소에서 티켓을 찾으신 후 공연을 관람 하실 수 있습니다.
											<br />
											2 .현장 수령시에는 예약번호 또는 예매 확인증과 신분증을 반드시 지참하셔야 합니다.
										</li>
										<li class="last">
											<em>2) 일반우편배송</em>
											1.일반우편 배송을 신청하실 경우 다음 사항에 유의해 주시기 바랍니다.
											<br />
											- 일반우편 배송 신청가능 날짜 : 신용카드 공연 기준 10일 이내  - 무통장 입금 – 공연기준 12일전
											<br />
											<br />

											2. 일반우편배송은 예매완료(무통장 입금은 입금완료)후 4~5일 이내에 티켓을 받으실 수 있습니다.
											<br />
											(배송기간 중 주말,공휴일을 제외한 영업일 기준)
										</li>
									</ul>
									<ul class="del_ip">
										<li class="del_choice">
											<em>입력선택</em><span>
												<input type="radio" name="radUserInfo" id="radUserInfo0" value="0" onclick="fdc_DisplayUserInfo(this);" />
												<label>개인정보와 동일</label>
												<input type="radio" name="radUserInfo" id="radUserInfo1" value="1" onclick="fdc_DisplayUserInfo(this);" />
												<label>직접입력</label></span>
										</li>
										<li class="del_name">
											<em>수령자명</em><span>
												<input name="tbl_BS5_txtUserName" type="text" id="tbl_BS5_txtUserName" maxlength="50" value="현경화" />
											</span>
										</li>
										<li class="del_phone">
											<em>전화번호</em><span>
												<input name="tbl_BS5_txtTel1" type="text" id="tbl_BS5_txtTel1" class="imedisable" maxlength="3" value="010" />
												-
												<input name="tbl_BS5_txtTel2" type="text" id="tbl_BS5_txtTel2" class="imedisable" maxlength="4" value="8456" />
												-
												<input name="tbl_BS5_txtTel3" type="text" id="tbl_BS5_txtTel3" class="imedisable" maxlength="4" value="5199" />
											</span>
										</li>
										<li class="del_post">
											<em>우편번호</em><span>
												<input name="tbl_BS5_txtZipCode" type="text" id="tbl_BS5_txtZipCode" class="imedisable" maxlength="7" value="151-772" />
												<input id="btnSearchAddress" type="button" value="우편번호 검색" />
											</span>
										</li>
										<li class="del_addr">
											<em>배송주소</em><span> 												<textarea name="tbl_BS5_txtAddress" id="tbl_BS5_txtAddress" rows="2" maxlength="300">서울 관악구 미성동   대우푸르지오아파트  108동 1402호</textarea></span>
										</li>
									</ul>
								</div>
								<input type="button" value="다음단계로" class="bt_ok doublecursor" onclick="fdc_DeliveryEnd()" />
							</div><!-- //st_tab -->
						</div><!-- //step5.수령방법 선택 -->
						<div id="step06" class="step6" regiontitle="1">
							<h2><a><span>06.결제수단 선택</span></a></h2>
							<div class="st_tab" style="display:none;">
								<div class="sec_coupon">
									<p class="dc_tab">
										<input type="button" value="신용카드" class="bt_dc_t04 doublecursor" style="display:none;" onclick="fdc_PaySubTabClick(this.value);" />
										<input type="button" value="무통장입금" class="bt_dc_t05 doublecursor" style="display:none;" onclick="fdc_PaySubTabClick(this.value);" />
										<input type="button" value="LG아트포인트" class="bt_dc_t02 doublecursor" onclick="fdc_PaySubTabClick(this.value);" />
										<input type="button" value="복지몰포인트" class="bt_dc_t03 doublecursor" onclick="fdc_PaySubTabClick(this.value);" />
										<input type="button" value="예매권/쿠폰" class="bt_dc_t01On" />
									</p>
									<div class="dc_wrap">
										<p class="tk_regi">
											<span>예매권번호 인증받기</span>
											<input id="txtAuthNo" type="text" class="dc_ip imeeng" maxlength="50" />
											<input type="button" value="확인" class="bt_dc doublecursor" onclick="fdc_CertifyAllCoupon();" />
										</p>
										<h3 class="dc_c_04" style="display:none;"><span>예매권</span></h3>
										<div id="divPayCouponList" style="display:none;"></div>
										<!-- 쿠폰 리스트 -->
										<h3 class="dc_c_02" style="display:none;"><span>쿠폰</span></h3>
										<div id="divCouponList"></div>
										<p class="tk_desc">
											<span>- 소지하신 예매권/쿠폰을 등록하신 후 사용하실 수 있습니다.
												<br />
											</span>
										</p>
									</div><!-- //dc_wrap -->
								</div><!-- //sec_coupon -->
								<div class="sec_point">
									<p class="dc_tab">
										<input type="button" value="신용카드" class="bt_dc_t04 doublecursor" style="display:none;" onclick="fdc_PaySubTabClick(this.value);" />
										<input type="button" value="무통장입금" class="bt_dc_t05 doublecursor" style="display:none;" onclick="fdc_PaySubTabClick(this.value);" />
										<input type="button" value="LG아트포인트" class="bt_dc_t02On" />
										<input type="button" value="복지몰포인트" class="bt_dc_t03 doublecursor" onclick="fdc_PaySubTabClick(this.value);" />
										<input type="button" value="예매권/쿠폰" class="bt_dc_t01 doublecursor" onclick="fdc_PaySubTabClick(this.value);" />
									</p>
									<div class="dc_wrap">
										<!-- 포인트 누적 점수 -->
										<h3 class="dc_c_03"><span>포인트</span></h3>
										<div class="dc_point"></div><!-- //dc_point -->
									</div><!-- //dc_wrap -->
								</div><!-- //sec_point -->
								<!-- LG 아트센터 : 사용하지 않음. 항상 숨김. -->
								<div class="dc_EC" style="display:none;">
									<p class="dc_tab">
										<input type="button" value="예매권/쿠폰" class="bt_dc_t01 doublecursor" onclick="fdc_PaySubTabClick(this.value);" />
										<input type="button" value="할인/포인트" class="bt_dc_t02 doublecursor" onclick="fdc_PaySubTabClick(this.value);" />
										<input type="button" value="전자상품권" class="bt_dc_t03On" />
									</p>
									<div class="dc_wrap"></div>
									<!-- //dc_wrap -->
								</div>
								<!-- //dc_EC -->
								<div class="sec_corppoint">
									<p class="dc_tab">
										<input type="button" value="신용카드" class="bt_dc_t04 doublecursor" style="display:none;" onclick="fdc_PaySubTabClick(this.value);" />
										<input type="button" value="무통장입금" class="bt_dc_t05 doublecursor" style="display:none;" onclick="fdc_PaySubTabClick(this.value);" />
										<input type="button" value="LG아트포인트" class="bt_dc_t02 doublecursor" onclick="fdc_PaySubTabClick(this.value);" />
										<input type="button" value="복지몰포인트" class="bt_dc_t03On" />
										<input type="button" value="예매권/쿠폰" class="bt_dc_t01 doublecursor" onclick="fdc_PaySubTabClick(this.value);" />
									</p>
									<div class="dc_wrap">

										<div class="dc_point" style='padding-top:15px'></div><!-- //dc_point -->

										<div style='padding:5px;text-align:right;width:96%'>
											<span class="spbox black doublecursor" onclick="fdc_ShowCashTax();">현금영수증 발급</span>
										</div>

										<ul class="g_box" style="height: 35px;">
											<li>
												취소수수료 발생시 결제는 신용 카드로만 가능합니다.
											</li>
											<li>
												제도마감 포인트는 환급이 불가하여 주문 취소가 불가 합니다.
											</li>
											<li>
												주문 취소 시 전체 취소만 가능하며 부분 취소는 불가 합니다.
											</li>
										</ul>
										<div class="chkbox">
											<span>복지몰포인트 이용에 따른 위의 유의사항을 읽었으며, 이에 동의합니다.</span>
											<input id="cbxCorpPointAgree" type="checkbox" />
										</div>
									</div>
									<!-- //dc_wrap -->
								</div><!-- //sec_corppoint -->
								<div class="sec_card">
									<p class="dc_tab">
										<input type="button" value="신용카드" class="bt_dc_t04On" style="display:none;" />
										<input type="button" value="무통장입금" class="bt_dc_t05 doublecursor" style="display:none;" onclick="fdc_PaySubTabClick(this.value);" />
										<input type="button" value="LG아트포인트" class="bt_dc_t02 doublecursor" onclick="fdc_PaySubTabClick(this.value);" />
										<input type="button" value="복지몰포인트" class="bt_dc_t03 doublecursor" onclick="fdc_PaySubTabClick(this.value);" />
										<input type="button" value="예매권/쿠폰" class="bt_dc_t01 doublecursor" onclick="fdc_PaySubTabClick(this.value);" />
									</p>
									<div class="dc_wrap">
										<div id="divCardTable" class="card_section">
											<table border="0" cellpadding="0" cellspacing="0" summary="신용카드결제" class="card_tb" style="margin-left:10px; width:93%;">
												<colgroup>
													<col width="15%" />
													<col width="30%" />
													<col width="15%" />
													<col width="30%" />
												</colgroup>
												<caption>
													신용카드결제
												</caption>
												<thead>
													<tr>
														<th>카드번호</th>
														<td colspan="3">
														<input id="CT_CardNo1" type="text" class="imedisable" style="width: 50px;" maxlength="4" />
														-
														<input id="CT_CardNo2" type="password" class="imedisable" style="width: 50px;" maxlength="4" />
														-
														<input id="CT_CardNo3" type="password" class="imedisable" style="width: 50px;" maxlength="4" />
														-
														<input id="CT_CardNo4" type="password" class="imedisable" style="width: 50px;" maxlength="4" />
														<span id="lblWelfareCardNotice" style="color:Red;"></span></td>
													</tr>
													<tr>
														<th>유효기간</th>
														<td><select id="CT_selYear" style="width: 50px;"></select>
														<select id="CT_selMonth" style="width: 50px;">
															<option value="01">1</option>
															<option value="02">2</option>
															<option value="03">3</option>
															<option value="04">4</option>
															<option value="05">5</option>
															<option value="06">6</option>
															<option value="07">7</option>
															<option value="08">8</option>
															<option value="09">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
														</select></td>
														<th>할부선택</th>
														<td>
														<select id="CT_selQuota" style="width: 100px;">
															<option value="00">사용안함</option>
															<option value="02">2개월</option>
															<option value="03">3개월</option>
															<option value="04">4개월</option>
															<option value="05">5개월</option>
															<option value="06">6개월</option>
															<option value="07">7개월</option>
															<option value="08">8개월</option>
															<option value="09">9개월</option>
															<option value="10">10개월</option>
															<option value="11">11개월</option>
															<option value="12">12개월</option>
														</select></td>
													</tr>
													<tr>
														<th>주민등록번호</th>
														<td colspan="3"> ****** -
														<input id="CT_SocialNumL7" type="password" class="imedisable" style="width: 80px;" maxlength="7" />
														<span>주민등록번호 뒷7자리를 입력하세요</span></td>
													</tr>
													<tr>
														<th>카드비밀번호</th>
														<td colspan="3">
														<input id="CT_CardPassF2" type="password" class="imedisable" style="width: 80px;" maxlength="2" />
														** <span>카드 비밀번호 앞 두자리만 입력하세요</span></td>
													</tr>
													<tr>
														<th>카드포인트</th>
														<td colspan="3">
														<input id="CT_cbxShinhanPoint" type="checkbox" />
														<label>신한카드포인트사용</label><span class="cont">신한카드로 결제 시 '포인트사용'을 체크하시면 보유중인 '마이신한포인트'에서 자동으로 결제 금액이 차감됩니다. 단'마이신한포인트'는
															보유하고 있는 만큼 모두 차감되면, 포인트 중 일부만 선택하여 사용할 수 없습니다.</span></td>
													</tr>
													<tr>
														<th>무이자할부카드</th>
														<td colspan="3"><span> 신한카드 2~3개월(2014년 12월 31일까지), 삼성카드 2~5개월(2014년 06월 30일까지) </span></td>
													</tr>
												</thead>
											</table>
											<div style='padding:10px'>
												<span><b>※ 결제 전 체크포인트</b></span>
												<br />
												<span style='padding-left:15px'>LG아트포인트 또는 예매권/쿠폰/상품권을 적용한 결제를 원하실 경우에는</span>
												<br />
												<span style='padding-left:15px'>신용카드 결제 전에 해당 결제수단 탭으로 이동하여 결제해 주십시오.</span>
											</div>
										</div>
										<div class="cancelfee_desc" style="margin-bottom:15px;"></div>
									</div><!-- //dc_wrap -->
								</div><!-- //sec_card -->
								<div class="sec_bank">
									<p class="dc_tab">
										<input type="button" value="신용카드" class="bt_dc_t04 doublecursor" style="display:none;" onclick="fdc_PaySubTabClick(this.value);" />
										<input type="button" value="무통장입금" class="bt_dc_t05On" style="display:none;" />
										<input type="button" value="LG아트포인트" class="bt_dc_t02 doublecursor" onclick="fdc_PaySubTabClick(this.value);" />
										<input type="button" value="복지몰포인트" class="bt_dc_t03 doublecursor" onclick="fdc_PaySubTabClick(this.value);" />
										<input type="button" value="예매권/쿠폰" class="bt_dc_t01 doublecursor" onclick="fdc_PaySubTabClick(this.value);" />
									</p>
									<div class="dc_wrap">
										<div style='padding:10px;text-align:right;width:96%'>
											<span class="spbox black doublecursor" onclick="fdc_ShowCashTax();">현금영수증 발급</span>
										</div>
										<ul class="g_box" style='height:90px'>
											<li>
												국민은행을 통한 무통장입금(가상계좌) 서비스만 가능하며 결제하기 버튼 클릭시
												<br />
												고객님의 주문처리를 위한 가상 계좌번호가 생성됩니다.
											</li>
											<li>
												생성된 계좌번호는 일반 계좌번호와 같이 고객님께서 각종 입금방법(ATM기기 사용, 인터넷뱅킹,
												<br />
												폰뱅킹, 은행창구)을 통해 입금해 주시면 됩니다.
											</li>
											<li>
												가상계좌 발급시점이 예매확정시점으로 유효기간내 미입금시 자동 취소처리 됩니다.
											</li>
											<li>
												계좌번호의 유효기간은 24시간입니다. 24시간 이내에 해당계좌로 입금처리가 되지 않은 경우에
												<br />
												자동으로 취소 됩니다.
											</li>
											<li>
												지정된 시간이 지나서 입금을 시도하시거나, 입금금액이 틀린 경우 "기타수취불가"라는 메세지와 함께
												<br />
												입금처리가 되지 않습니다.
											</li>
											<li>
												LG아트센터 자체 기획공연 및 사전에 협의된 대관공연에 한해서는 현금영수증 발급이 가능하며,
												<br />
												현금영수증 발급이 불가한 대관공연에 대해서는 공연 기획사로 문의하셔야 합니다.
											</li>
											<li>
												현금영수증 발급을 선택하신 경우, 실제 입금완료 후 최대 1시간 이내에 자동으로 국세청을 통해 발급되며
												<br />
												국세청 홈페이지에서 그 내용을 확인하실 수 있습니다.
											</li>
											<li>
												자세한 문의를 원하시면 LG아트센터 매표소(02-2005-0114) 업무시간에 전화 주시기 바랍니다.
											</li>
										</ul>

										<div style='padding-top:10px;padding-left:20px;'>
											<span><b>※ 결제 전 체크포인트</b></span>
											<br />
											<span style='padding-left:15px'>LG아트포인트 또는 예매권/쿠폰/상품권을 적용한 결제를 원하실 경우에는</span>
											<br />
											<span style='padding-left:15px'>무통장입금 결제 전에 해당 결제수단 탭으로 이동하여 결제해 주십시오.</span>
										</div>

										<div class="cancelfee_desc"></div>
									</div><!-- //dc_wrap -->
								</div><!-- //sec_bank -->
								<div style="display: block;" class="sec_none">

									<div class="dc_wrap" style="height:216px">

										<!-- 쿠폰 리스트 -->

										<p class="tk_desc">
											<span>
												<br>
												하단에 결제하기 버튼을 누르면 신청(예매) 됩니다.
												<br>
											</span>
										</p>
									</div><!-- //dc_wrap -->
								</div>

								<!-- LG아트센터 : 결제방법 콤보박스는 숨기며, 이를 이용해 신용카드/무통장 탭 Display를 제어 -->
								<p id="paymethodPos" style="display:none;"></p>
								<div class="chkbox">
									<input type="button" value="결제하기" class="bt_ok doublecursor" onclick="fdc_PayClick()" />
								</div>
							</div><!-- //st_tab -->
						</div>
						<!-- //step6.결제수단 선택 -->
						<iframe id="ifrTicketBannerBig" scrolling="no" frameborder="0" allowtransparency="true" src='http://www.lgart.com/UIPage/Perf/Sale/Banner/PerfSaleBannerBig.aspx' style="position:absolute; top:429px; left:8px; width:652px; display:none;" ></iframe>
					</div><!-- //content -->
					<hr />
					<div id="StateBoard" class="myAreaResults">
						<h2><span>선택한 내역</span></h2>
						<div class="tk_info">
							<h3><span>공연명</span><em>&nbsp;</em></h3>
							<p class="tk_img"><img src="/images/common/noimg.gif" width="147" height="160" alt="공연명" />
							</p>
							<ul class="tk_date">
								<li class="tk_day">
									<em>관람일시</em><span>&nbsp;</span>
								</li>
								<li class="tk_time">
									<em>관람시간</em><span>&nbsp;</span>
								</li>
								<li class="tk_seat">
									<em>선택좌석</em>
									<ul>
										<li>
											좌석 지정 회차입니다.
										</li>
										<li>
											좌석 비지정 회차입니다.
										</li>
										<li>
											회차를 선택하세요.
										</li>
										<li>
											R석 1층 10열 31번
										</li>
										<li>
											R석 1층 10열 31번
										</li>
										<li>
											R석 1층 10열 31번
										</li>
									</ul>
								</li>
								<li class="tk_price">
									<em>티켓금액</em><span>&nbsp;</span>
								</li>
								<li class="tk_disc">
									<em>할인금액</em><span>&nbsp;</span>
								</li>
								<li class="tk_charge" style="display:none;">
									<em>예매수수료</em><span>&nbsp;</span>
								</li>
								<li class="tk_deli" style="display:none;">
									<em>배송료</em><span>&nbsp;</span>
								</li>
								<li class="tk_goods">
									<em>관련상품</em><span>&nbsp;</span>
								</li>
								<li class="tk_paym_sum">
									<em>결제금액</em><span>&nbsp;</span>
								</li>
								<li class="tk_Rpoint">
									<em>LG아트포인트</em><span>&nbsp;</span>
								</li>
								<li class="tk_tiket">
									<em>예매권금액</em><span>&nbsp;</span>
								</li>
								<li class="tk_coupon">
									<em>쿠폰금액</em><span>&nbsp;</span>
								</li>
								<li class="tk_EC">
									<em>상품권</em><span>&nbsp;</span>
								</li>
								<li class="tk_Cpoint">
									<em>복지몰포인트</em><span>&nbsp;</span>
								</li>
								<li class="tk_paym">
									<em>미결제금액</em><span>&nbsp;</span>
								</li>
							</ul>
						</div>
					</div><!-- //myAreaResults -->
					<!-- KcpPay 결제 및 주문을 위한 (지불/티켓) 전송 정보 DIV -->
					<div id="divPayInfoSendForm" class="PayInfoSendForm"></div>
				</div><!-- //container -->
			</div><!-- //pop_wrap -->
			<!-- UI 영역 END -->
			<img id='imgAjaxLoader1' style='display:none;' src='/images/ajax/loader.gif' alt='ajaxLoader' /><img id='imgAjaxLoader2' style='display:none;' src='/images/ajax/loader.gif' alt='ajaxLoader' /><img id='imgAjaxLoader3' style='display:none;' src='/images/ajax/loader.gif' alt='ajaxLoader' /><img id='imgAjaxLoader4_1' style='display:none;' src='/images/ajax/loader.gif' alt='ajaxLoader' /><img id='imgAjaxLoader4_2' style='display:none;' src='/images/ajax/loader.gif' alt='ajaxLoader' /><img id='imgAjaxLoader4_3' style='display:none;' src='/images/ajax/loader.gif' alt='ajaxLoader' /><img id='imgAjaxLoader4_4' style='display:none;' src='/images/ajax/loader.gif' alt='ajaxLoader' /><img id='imgAjaxLoader5' style='display:none;' src='/images/ajax/loader.gif' alt='ajaxLoader' /><img id='imgAjaxLoader6_1' style='display:none;' src='/images/ajax/loader.gif' alt='ajaxLoader' /><img id='imgAjaxLoader6_2' style='display:none;' src='/images/ajax/loader.gif' alt='ajaxLoader' /><img id='imgAjaxLoader6_3' style='display:none;' src='/images/ajax/loader.gif' alt='ajaxLoader' /><img id='imgAjaxLoader6_4' style='display:none;' src='/images/ajax/loader.gif' alt='ajaxLoader' /><img id='imgAjaxLoader7' style='display:none;' src='/images/ajax/loader.gif' alt='ajaxLoader' />
			<!-- 할인체크 DIV -->
			<div id="SelPromotionStorage"></div>
			<!-- 전체영역에서 사용되는 중요보관 콘트롤 -->
			<input id="IdTime" type="hidden" />
			<input id="IdSeatClassPrice" type="hidden" />
			<input id="IdSeatClass" type="hidden" />
			<input id="IdSeat" type="hidden" />
		</form>
		<!-- 로그인 사용자 주소정보 보관 템플릿 DIV -->
		<div id="divLoginUserAddressInfo" style="display:none"></div>
		<!-- 예매수수료 DIV -->
		<div id="divBookingFee" style="display:none"></div>

		<!-- 예매 처리중 DIV -->
		<div id="divSaleAttention" style="display:none; width:500px; text-align:center;">
			<img src="/images/perform/txt_attention.gif" alt="attention" />
			<br />
			<img src="/images/perform/progress.gif" alt="준비중입니다." />
			<br />
			<p style=" margin:0; margin-top:15px; padding:0;">
				관계 제휴사(카드사, 통신사)의 사정으로 처리가 원할하지
				않을 수 있으니, 결제 후
				<br />
				반드시 <span style="color:#ff6632;">공연/패키지 예매확인</span>에서 <strong>예매내역을 확인</strong>하시기 바랍니다.
			</p>
		</div>

		<!-- 현금 영수증 DIV -->
		<div id="divCashTaxTable" style="display:none">
			<table border="0" cellpadding="0" cellspacing="0" summary="무통장입금" class="card_tb" style="margin-left:20px; width:94%;">
				<colgroup>
					<col width="17%" />
					<col width="*" />
				</colgroup>
				<caption>
					무통장입금
				</caption>
				<thead>
					<tr>
						<th>현금영수증</th>
						<td><span>현금영수증발급</span>
						<input id="BT_cbxReceipt" type="checkbox" onclick="fdc_ReceiptChange();" />
						<select id="BT_selReceipt" style="width: 150px;">
							<option value="0">개인(소득 공제용)</option>
							<option value="1">법인(지출 증빙용)</option>
						</select></td>
					</tr>
					<tr>
						<th>주민등록번호
						<br />
						(사업자번호)</th>
						<td>
						<input id="BT_SocialBusinessNo" type="text" class="imedisable" style="width: 120px;" maxlength="13" />
						<span class="cont">'-'없이 숫자로만 입력해주십시오
							<br />
							개인(소득공재용)은 주민등록번호나 전화번호,법인(지출증빙용)은 사업자등록번호를 입력해주십시오</span></td>
					</tr>
				</thead>
			</table>
			<h3 class="pos04"><span>현금 영수증 발급 주의사항</span></h3>
			<ul class="g_box">
				<li>
					신용카드/LG아트포인트/쿠폰에 대해서는 현금영수증 발급이 불가 합니다.
				</li>
				<li>
					현금성 결제(현금/상품권/무통장입금/복지몰포인트)에 대해 현금영수증 발급이 가능 합니다.
				</li>
				<li>
					현금영수증 발급을 선택하신 경우, 결제 완료 후 최대 1시간 이내에 자동으로 국세청을 통해 발급되며
					<br />
					국세청 홈페이지에서 그 내용을 확인하실 수 있습니다.
				</li>
				<li>
					자세한 문의를 원하시면 LG아트센터 매표소(02-2005-0114) 업무시간에 전화 주시기 바랍니다.
				</li>
			</ul>
		</div>

		<script type="text/javascript">
		    // Page 초기화 스크립트
		    $j(document).ready(function () {
		        $j("#CT_CardNo1, #CT_CardNo2, #CT_CardNo3, #CT_CardNo4").jry_home_AutoTab({
		            isonlynumber: true
		        });
		        $j("#CT_SocialNumL7, #CT_CardPassF2, #BT_SocialBusinessNo").jry_home_OnlyNumber();
		        fdc_SetYear();

		        // 전역변수 값설정 (서버연동이 필요한 경우만)
		        jgOrdHeader = '';
		        jgIdPerf = '252159';
		        jgIdSelTime = '';
		        // 고객구매매수 관련하여서는 사용하지 않음
		        //jgSeatSelectMax = parseInt('10');

		        //if (jgSeatSelectMax > 10) {
		        //    jgSeatSelectMax = 10;
		        //}

		        jgCusMemberType = '113';
		        //jgCusEnableBookTicket = '1'; // 예매가능여부 : No Used!!
		        jgSaleChannel = '1';

		        $j("#progressBar").jry_home_ShowProgressBar({
		            "state": "stop"
		        });

		        if ('1' != '0') {// 로그인한 경우
		            //if (jgSeatSelectMax == 0) {// 예매 가능 매수가 없을 경우
		            //    $j("div.content").css("display", "none");
		            //    $j("div.myAreaResults").css("display", "none");

		            //    $j("#dialogAlert").jAlert({
		            //        "msg": '예매 가능한 매수가 초과 되었습니다.<br />본 공연은 최대 <font color=red>10 매</font>까지만<br />예매가 가능합니다.',
		            //        'buttons': { '확인': function () { $j(this).dialog('close'); parent.jsf_dialog_PopupClose(); } }
		            //    });
		            //}
		            //else {// 예매 가능 매수가 있을 경우
		            fdc_ControlStep(jcSTEP1);
		            //}
		        } else {// 로그인을 안 한 경우
		            // 예매진행 영역 숨김
		            $j("div.content").css("display", "none");
		            $j("div.myAreaResults").css("display", "none");
		        }

		        // 처음 수행 : 로그인 사용자 주소 정보를 보관
		        var jvLoginUserAddressInfo = "";
		        jvLoginUserAddressInfo += "<div id=divLUAddr_UserName>" + $j("#tbl_BS5_txtUserName").val() + "</div>";
		        jvLoginUserAddressInfo += "<div id=divLUAddr_Tel1>" + $j("#tbl_BS5_txtTel1").val() + "</div>";
		        jvLoginUserAddressInfo += "<div id=divLUAddr_Tel2>" + $j("#tbl_BS5_txtTel2").val() + "</div>";
		        jvLoginUserAddressInfo += "<div id=divLUAddr_Tel3>" + $j("#tbl_BS5_txtTel3").val() + "</div>";
		        jvLoginUserAddressInfo += "<div id=divLUAddr_ZipCode>" + $j("#tbl_BS5_txtZipCode").val() + "</div>";
		        jvLoginUserAddressInfo += "<div id=divLUAddr_Address>" + $j("#tbl_BS5_txtAddress").val() + "</div>";
		        jvLoginUserAddressInfo += "<div id=divLUAddr_Mail>webziggi@naver.com</div>";
		        $j("#divLoginUserAddressInfo").html(jvLoginUserAddressInfo);
		        //제휴배너 노출!!
		        $j("#ifrTicketBannerBig").css("display", "block");
		    });

		    // 트래킹 정보
		    var _log = _log || [];
		    _log.push(['tg', '']);
		</script>
		<!-- 프로그램 영역 END -->
	</body>
</html>
