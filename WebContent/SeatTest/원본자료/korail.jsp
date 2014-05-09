<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>좌석 선택</title>
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
	<LINK type="text/css" rel="stylesheet" href="/2007/css/common.css">
	<LINK type="text/css" rel="stylesheet" href="/2007/css/menu1.css" >
	<script language=javascript src="/2007/js/common.js"></script>


<script language=javascript>


	// ie
	
	
	if (document.all) {
		window.dialogWidth  = 730 + 'px';
		window.dialogHeight = 590 + 'px';
	}
	else {
		window.resizeTo(730, 590);
	}


/*
function MM_reloadPage(init)
{
	if (init==true) with (navigator)
	{
		if ((appName=="Netscape")&&(parseInt(appVersion,10)==4))
		{
			document.MM_pgW=innerWidth;
			document.MM_pgH=innerHeight;
			onresize=MM_reloadPage;
		}
	}
	else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH)
	{
		location.reload();
	}
}

MM_reloadPage(true);
*/

var pObj;

if (window.parent.dialogArguments)
	pObj = window.parent.dialogArguments;
else
	pObj = window.parent.opener;

var pForm = pObj.document.form1;


if(typeof(pForm) == 'undefined' )
{
	pForm = pObj.korail_middle.document.form1;
}

var SelectedSeatCnt;
//var Cnt;
var LstrHtml;
var SeatNO = new Array();
var AblCnt = new Array();
var txtTotPsgCnt = 1

LstrHtml ="";

SelectedSeatCnt = 0;

function toHex(color)
{
	var vRtn = color;
	if (color.toLowerCase().indexOf("rgb") >= 0)
	{
		var m = /rgba?\(\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)/.exec(color);
		vRtn = m ? '#' + (1 << 24 | m[1] << 16 | m[2] << 8 | m[3]).toString(16).substr(1) : color;
	}

	return vRtn;
}

function Seat_OnClick(iSeat,Cnt,col,SeatNo)
{
	var strOnOff = "OnOff" + Cnt;
	var strcol = col;

	if (toHex(iSeat.style.backgroundColor) == strcol)
	{
		if (SelectedSeatCnt > parseInt(txtTotPsgCnt,10)-1)
		{
			alert("요청하신 승객수를 초과하여 좌석을 선택할 수 없습니다.");
			return;
		}

		if (SelectedSeatCnt > 8)
		{
			alert("9매 이상은 구입하실수 없습니다.");
			return;
		}
		else
		{
			iSeat.value="On";
			SelectedSeatCnt = SelectedSeatCnt+1;
			iSeat.style.backgroundColor = "#000000";
			OnGetPrice(SelectedSeatCnt-1, Cnt)


			//alert('document.form1.txtSrcarNo.value=['+document.form1.txtSrcarNo.value+']');
			// KTX-산천 8-8ABCD,9ABCD 경고 2014.04.29 ljy 김윤석 이명재
			if (document.form1.txtTrnClsfCd.value == '07' &&
				(document.form1.txtSrcarNo.value == '08' ||
				 document.form1.txtSrcarNo.value == '18' ) &&
				(SeatNo == '8A' ||
				 SeatNo == '8B' ||
				 SeatNo == '8C' ||
				 SeatNo == '8D' ||
				 SeatNo == '9A' ||
				 SeatNo == '9B' ||
				 SeatNo == '9C' ||
				 SeatNo == '9D' ) ){
				alert('객실출입문 좌석으로 이용에 다소 불편함이 따를 수 있습니다.');
			}
		}
	}
	else if (toHex(iSeat.style.backgroundColor) == "#000000")
	{
		SelectedSeatCnt = SelectedSeatCnt - 1;
		iSeat.value="Off";
		iSeat.style.backgroundColor = col;
		OffGetPrice(SelectedSeatCnt, Cnt, SeatNo)
	}

	var vConfirm = document.getElementById("Confirm");
	if(SelectedSeatCnt > 0)
	{
		vConfirm.style.display = "block";
	}
	else
	{
		vConfirm.style.display = "none";
	}
}

var bbb=0;
var ccc=0;

function OnGetPrice(SeatCnt, Cnt)
{
	var strTag = LstrHtml ;
	var strSeatNo;
	var strConvSeatNo;
	var i;
	var objSeatNo;
	var objConvSeatNo;
	var oSeat;

	strSeatNo = "SeatNo" + Cnt;
	objSeatNo = document.getElementById(strSeatNo);

	strConvSeatNo = "ConvSeatNo" + Cnt;
	objConvSeatNo = document.getElementById(strConvSeatNo);

	SeatNO[SeatCnt] = Cnt;
	AblCnt[objSeatNo.value] = Cnt;
	bbb++;
	strTag = strTag + "<font size='2' face='돋움' color='#1890D7'><b>"+ objConvSeatNo.value + "석</b>&nbsp;&nbsp;</font>";
	strTag = strTag + "<input type='hidden' name='txtSeatNo_1_"+bbb+"' value='" + objSeatNo.value + "'>";

	LstrHtml = strTag;

	var vView = document.getElementById("View");
	vView.innerHTML = strTag+ "<input type='hidden' name='MaxCnt' value='" +(bbb)+ "'>";
}

function OffGetPrice(Cnt,SeatCnt, rSeatNo)
{
	var strTag ;
	LstrHtml ="";

	strTag = LstrHtml;

	var strSeatNo;
	var strConvSeatNo;
	var i;
	var objSeatNo;
	var objConvSeatNo;
	var oSeat;
	var RSeatNO;
	var m;
	SelectedSeatCnt=0;

	for(i=0;i<=Cnt;i++)
	{
		RSeatNO = SeatNO[i];

		if (RSeatNO != SeatCnt)
		{
			strSeatNo = "SeatNo" + RSeatNO;
			objSeatNo = document.getElementById(strSeatNo);

			strConvSeatNo = "ConvSeatNo" + RSeatNO;
			objConvSeatNo = document.getElementById(strConvSeatNo);

			strTag = strTag + "<font size='2' face='돋움' color='#1890D7'><b>"+ objConvSeatNo.value +"석</b>&nbsp;&nbsp;";
			strTag = strTag + "<input type='hidden' name='txtSeatNo_1_"+(SelectedSeatCnt+1)+"' value='" + objSeatNo.value + "'>";

			SeatNO[SelectedSeatCnt] = RSeatNO;

			SelectedSeatCnt = SelectedSeatCnt +1;

			LstrHtml = strTag;
		}
	}

	var vView = document.getElementById("View");
	vView.innerHTML = strTag + "<input type='hidden' name='MaxCnt' value='"+SelectedSeatCnt+"'>";
}

function SetData()
{
	if ((SelectedSeatCnt < parseInt(txtTotPsgCnt,10)) || (SelectedSeatCnt > parseInt(txtTotPsgCnt,10)))
	{
		alert("요청하신 승객수["+txtTotPsgCnt+ "]와 선택하신 좌석수["+SelectedSeatCnt+"]가 일치하지 않습니다.");
		return;
	}

	var maxcnt = document.form1.MaxCnt.value;
	var realcnt = 1;

	for(i=1;i<=maxcnt;i++)
	{
		if( eval("document.form1.txtSeatNo_1_"+i))
		{
			eval("pForm.txtSrcarNo" + realcnt).value = document.form1.txtSrcarNo.value;
			eval("pForm.txtSeatNo"  + realcnt).value = eval("document.form1.txtSeatNo_1_"+i).value;
			realcnt++;
		}
	}

	pForm.txtSrcarCnt.value = (realcnt-1);

	pForm.txtJobId.value = "1103";

	if (window.opener != undefined) {
		//for chrome
		window.opener.returnValue = "OK";
	}
	else {
		window.returnValue = "OK";
	}

	window.close();
}

function showSeatMap(inx)
{
	document.form2.txtSrcarNo.value = inx;
	document.form2.action = "/servlets/pr.pr12200.sw_pr12212_i1Svt";
	document.form2.submit();
}

function NextSrcarNo()
{
	/*
	예약가능호차수   iSrcarCnt
	예약가능호차배열 arrSrcarNo
	현재호차         txtSrcarNo
	*/

	var arrSrcarNo = "2,3,4,5".split(","); //호차배열을 ,로 분리한다
	var txtSrcarNo = "3"; //현재호차(처음엔 추천호차로)
	var nowIndex = 0;
	var varlog = "";
	for(var i=0;i<arrSrcarNo.length;i++)
	{
		varlog += "arrSrcarNo["+i+"]="+arrSrcarNo[i]+"]\n";
		if (arrSrcarNo[i]==txtSrcarNo)
			nowIndex = i;
	}

	nextIndex = nowIndex+1;
	if (nextIndex > arrSrcarNo.length-1)
		nextIndex=0;

	// 1개뿐일때는 다음호차가 없으므로 재호출안한다
	if (nowIndex != nextIndex)
		showSeatMap(arrSrcarNo[nextIndex])
}

</script>

</style>

</head>

<base target="_self">

<body>

<form name="form2" method="post">
<input type=hidden name="txtSrcarCnt"   value="4">
<input type=hidden name="arrSrcarNo"    value="2,3,4,5">
<input type=hidden name="txtSrcarNo"    value="3">
<input type=hidden name="txtPsrmClCd"   value="2">
<input type=hidden name="txtRunDt"      value="20140508">
<input type=hidden name="txtTrnClsfCd"  value="00">
<input type=hidden name="txtTrnNo"      value="00101">
<input type=hidden name="txtSeatAttCd"  value="15">
<input type=hidden name="txtDptRsStnCd" value="0001">
<input type=hidden name="txtArvRsStnCd" value="0020">
<input type=hidden name="txtTotPsgCnt"  value="1">
</form>

<!--
예약가능호차수   iSrcarCnt =4<br>
예약가능호차배열 arrSrcarNo=2,3,4,5<br>
현재호차         txtSrcarNo=3<br>
<br>
txtPsrmClCd  =2<br>
txtRunDt     =20140508<br>
txtTrnClsfCd =00<br>
txtTrnNo     =00101<br>
txtSeatAttCd =15<br>
txtDptRsStnCd=0001<br>
txtArvRsStnCd=0020<br>
txtTotPsgCnt =1<br>
-->

<form name="form1" method="post">
<input type=hidden name=txtSrcarNo    value=03 >
<input type=hidden name=txtJobId      value=>
<input type=hidden name=txtJrnyCnt    value=1>
<input type=hidden name=txtJrnySqno   value=>
<input type=hidden name=txtJrnyTpCd   value=>
<input type=hidden name=txtDptDt      value=>
<input type=hidden name=txtDptRsStnCd value=0001>
<input type=hidden name=txtDptTm      value=053000>
<input type=hidden name=txtArvRsStnCd value=0020>
<input type=hidden name=txtArvTm      value=081800>
<input type=hidden name=txtTrnNo      value=00101>
<input type=hidden name=txtRunDt      value=20140508>
<input type=hidden name=txtTrnClsfCd  value=00>
<input type=hidden name=txtPsrmClCd   value=2>
<input type=hidden name=txtChgFlg     value=>
<input type=hidden name=selGoSeat     value=15>

<table width="100%">
<tr>
	<td style="padding:0 10px" valign="top" align="center">

		<table width="100%" style="background:url(/2007/img/common/pop_bg.gif) repeat-x">
		<tr>
			<td><img src="/2007/img/common/tit_seatmap.gif" alt="좌석 선택"></td>
			<td align="right"><img src="/2007/img/common/pop_right.gif" alt=""></td>
		</tr>
		<tr>
			<td colspan="2" height="3"></td>
		</tr>
		<tr>
			<td colspan="2">

				<table width="100%">
				<tr>
					<td width="12"><img src="/2007/img/common/pop_box_lt.gif" alt=""></td>
					<td colspan="2" style="background:url(/2007/img/common/pop_top_bg.gif) repeat-x"></td>
					<td width="12"><img src="/2007/img/common/pop_box_rt.gif" alt=""></td>
				</tr>
				<tr>
					<td style="background:url(/2007/img/common/pop_left_bg.gif) repeat-y"></td>
					<td colspan="2" style="padding:10px 10px 10px 10px;">

						<!-- 팝업내용 시작 -->
						<input type= hidden value='' name=ccc>

						<!-------------------------------------------->
						<DIV ID="topdeck" style="position : absolute;display:none;"></DIV>

						<script language=JavaScript>
						<!--
						var skn = document.getElementById("topdeck");
						document.onmousemove = get_mouse;

						function pop(msg,bak)
						{
							var content ="<TABLE WIDTH=200 BORDER=0 CELLPADDING=2 CELLSPACING=1 BGCOLOR=#CCCCCC><TR><TD bgcolor=#F9F9F9><TABLE WIDTH=200 BORDER=0 CELLPADDING=0 CELLSPACING=3 bgcolor=#F9F9F9><TR><TD><CENTER><FONT FACE=돋움 SIZE=2><B>좌석상세속성</B></FONT></CENTER></TD></TR></TABLE><TABLE WIDTH=100% BORDER=0 CELLPADDING=2 CELLSPACING=0 BGCOLOR="+bak+"><TR><TD><FONT SIZE=2 COLOR=#0066CC><CENTER>"+msg+"</CENTER></FONT></TD></TR></TABLE></TD></TR></TABLE>";

							skn.innerHTML = content;
							skn.style.display = "block";
						}

						function get_mouse(event) {
							var e = event || window.event;
							var x = document.all ? e.x + (document.body.scrollLeft == 0 ? document.documentElement.scrollLeft : document.body.scrollLeft) : e.pageX;
							var y = document.all ? e.y + (document.body.scrollTop  == 0 ? document.documentElement.scrollTop  : document.body.scrollTop ) : e.pageY;

							if ((window.document.body.clientWidth - x) < 200)
								skn.style.left = x - 150;
							else
								skn.style.left = x - 10;

							skn.style.top = y+30;
						}

						function off()
						{
							skn.style.display = "none";
						}
						//*----------------------------------------------------------------------------*/
						//* 이용도움말 팝업                                                             */
						//*----------------------------------------------------------------------------*/
						function btnPopWinhelp(target)
						{
							window.open(target, 'popup', 'width=400,height=400,resizable=no,scrollbars=yes');
						}
						//-->
						</script>
						<noscript><p>스크립트가 차단되어 기능을 사용하실 수 없습니다.</p></noscript>


						<table>
						<tr>
							<td colspan="2" height="10"></td>
						</tr>
						<tr>
							<td width="16" valign="top"><img src="/2007/img/common/icon_1.gif" alt="1" vspace="2"></td>
							<td><b>원하시는 좌석을 선택하여 주십시오</b></td>
						</tr>
						<tr>
							<td valign="top"><img src="/2007/img/common/icon_2.gif" alt="2" vspace="2"></td>
							<td>
								발매가 가능한 좌석만 선택하실 수 있습니다.
							</td>
						</tr>
						<tr>
							<td valign="top"><img src="/2007/img/common/icon_3.gif" alt="3" vspace="2"></td>
							<td>
								원하시는 좌석을 선택 후 "선택좌석 예약하기" 버튼을 클릭하시면 예약이 완료됩니다.<font color="#ff8000">(복수선택가능)</font>
							</td>
						</tr>
						<tr>
							<td valign="top"><img src="/2007/img/common/icon_4.gif" alt="4" vspace="2"></td>
							<td>
								원하지 않은 좌석이 선택된 경우에는 해당 좌석을 한번 더 클릭하시면 취소됩니다.
							</td>
						</tr>
						<tr>
							<td valign="top"><img src="/2007/img/common/icon_5.gif" alt="5" vspace="2"></td>
							<td>
								KTX-산천의 8호차 8A~8D/9A~9D 좌석 및 중련(합병) 열차의 경우는 18호차 8A~8D/9A~9D 좌석의 경우 객실출입문 좌석으로 운영되어, 이용에 다소 불편함이 따를 수 있으니 양지하여 주시기 바랍니다.
							</td>
						</tr>
						</table>


						<!-- 호차 선택 -->
						
							<p class="p20"></p>
							<div style='width:100%;text-align:center;font-size:16px'>
								<table>
								<tr>
								

									
										<td style='width:33px;height:32px;background-image:url(/2007/img/etc/bg_button.gif);background-repeat:no-repeat;padding-bottom:5px;margin:0;border:0;vertical-align:bottom;text-align:center;font-size:14px;cursor:hand;' onclick='javascript:showSeatMap(2);'>2</td>
									
								
										<td style='width:10px'></td>
									

									
										<td style='width:33px;height:32px;background-image:url(/2007/img/etc/bg_button.gif);background-repeat:no-repeat;padding-bottom:3px;margin:0;border:0;vertical-align:bottom;text-align:center;font-size:18px;font-weight:900;color:blue;'>3</td>
									
								
										<td style='width:10px'></td>
									

									
										<td style='width:33px;height:32px;background-image:url(/2007/img/etc/bg_button.gif);background-repeat:no-repeat;padding-bottom:5px;margin:0;border:0;vertical-align:bottom;text-align:center;font-size:14px;cursor:hand;' onclick='javascript:showSeatMap(4);'>4</td>
									
								
										<td style='width:10px'></td>
									

									
										<td style='width:33px;height:32px;background-image:url(/2007/img/etc/bg_button.gif);background-repeat:no-repeat;padding-bottom:5px;margin:0;border:0;vertical-align:bottom;text-align:center;font-size:14px;cursor:hand;' onclick='javascript:showSeatMap(5);'>5</td>
									
								
									<td> &nbsp; 호차 </td>
								</tr>
								</table>
							</div>
						

<!-- 좌석정보-->
						<p class="p10"></p>
						<table width="100%">
						<tr>
							<td class="s-bult03">
								

								<b>
								서울

								&nbsp;→&nbsp;
								부산행

								</b>


								<!--&nbsp;101 열차의 <font color=blue>3호차</font>에 대한 객실정보입니다.  호차번호삭제 2011.06.28 ljy 본사요청-->
								
								&nbsp;KTX 101 열차 특실(3호차)에 대한 좌석정보입니다.
							</td>

							
								<td style="text-align:right">
									<a href='#' onclick='javascript:NextSrcarNo()' tabindex=1>다른 호차 >> </a>
								</td>
							
						</tr>
						</table>
						<!-- 호차 선택 끝 -->


	

	


					
						<p class="p10"></p>
						<table width="100%">
						<tr>
							<td style="border:5px solid #D6DBE1;padding: 10px 2px 10px 2px;">

								<table cellspacing="0" cellpadding="0" align="center">
								
									<tr>
									
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo001 value='001' >
												<input type=hidden id=ConvSeatNo001 value='1A' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 1인 / 출입구좌석','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 1인 / 출입구좌석','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '001', '#a193e2', '1A');"
												onclick="Seat_OnClick(this, '001', '#a193e2', '1A');"
												value="Off">

												1A

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo004 value='004' >
												<input type=hidden id=ConvSeatNo004 value='2A' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 1인','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 1인','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '004', '#a193e2', '2A');"
												onclick="Seat_OnClick(this, '004', '#a193e2', '2A');"
												value="Off">

												2A

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												<span id="SSeat" style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#CCCCCC;font-weight:bold;white-space:nowrap">
												3A

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												<span id="SSeat" style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#CCCCCC;font-weight:bold;white-space:nowrap">
												4A

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												<span id="SSeat" style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#CCCCCC;font-weight:bold;white-space:nowrap">
												5A

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												<span id="SSeat" style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#CCCCCC;font-weight:bold;white-space:nowrap">
												6A

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												<span id="SSeat" style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#CCCCCC;font-weight:bold;white-space:nowrap">
												7A

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												<span id="SSeat" style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#CCCCCC;font-weight:bold;white-space:nowrap">
												8A

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												<span id="SSeat" style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#CCCCCC;font-weight:bold;white-space:nowrap">
												9A

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												<span id="SSeat" style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#CCCCCC;font-weight:bold;white-space:nowrap">
												10A

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo031 value='031' >
												<input type=hidden id=ConvSeatNo031 value='11A' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 1인','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 1인','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '031', '#a193e2', '11A');"
												onclick="Seat_OnClick(this, '031', '#a193e2', '11A');"
												value="Off">

												11A

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo034 value='034' >
												<input type=hidden id=ConvSeatNo034 value='12A' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 1인 / 출입구좌석','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 1인 / 출입구좌석','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '034', '#a193e2', '12A');"
												onclick="Seat_OnClick(this, '034', '#a193e2', '12A');"
												value="Off">

												12A

												
												</span>
											</td>
										
									</tr>
								
									<tr>
									
											<td colspan=12 align=center>
												통 로
											</td>
										
									</tr>
								
									<tr>
									
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo002 value='002' >
												<input type=hidden id=ConvSeatNo002 value='1B' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 내측 / 출입구좌석','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 내측 / 출입구좌석','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '002', '#a193e2', '1B');"
												onclick="Seat_OnClick(this, '002', '#a193e2', '1B');"
												value="Off">

												1B

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo005 value='005' >
												<input type=hidden id=ConvSeatNo005 value='2B' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '005', '#a193e2', '2B');"
												onclick="Seat_OnClick(this, '005', '#a193e2', '2B');"
												value="Off">

												2B

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo008 value='008' >
												<input type=hidden id=ConvSeatNo008 value='3B' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '008', '#a193e2', '3B');"
												onclick="Seat_OnClick(this, '008', '#a193e2', '3B');"
												value="Off">

												3B

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo011 value='011' >
												<input type=hidden id=ConvSeatNo011 value='4B' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '011', '#a193e2', '4B');"
												onclick="Seat_OnClick(this, '011', '#a193e2', '4B');"
												value="Off">

												4B

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo014 value='014' >
												<input type=hidden id=ConvSeatNo014 value='5B' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '014', '#a193e2', '5B');"
												onclick="Seat_OnClick(this, '014', '#a193e2', '5B');"
												value="Off">

												5B

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo017 value='017' >
												<input type=hidden id=ConvSeatNo017 value='6B' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '017', '#a193e2', '6B');"
												onclick="Seat_OnClick(this, '017', '#a193e2', '6B');"
												value="Off">

												6B

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo020 value='020' >
												<input type=hidden id=ConvSeatNo020 value='7B' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '020', '#a193e2', '7B');"
												onclick="Seat_OnClick(this, '020', '#a193e2', '7B');"
												value="Off">

												7B

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo023 value='023' >
												<input type=hidden id=ConvSeatNo023 value='8B' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '023', '#a193e2', '8B');"
												onclick="Seat_OnClick(this, '023', '#a193e2', '8B');"
												value="Off">

												8B

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo026 value='026' >
												<input type=hidden id=ConvSeatNo026 value='9B' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '026', '#a193e2', '9B');"
												onclick="Seat_OnClick(this, '026', '#a193e2', '9B');"
												value="Off">

												9B

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo029 value='029' >
												<input type=hidden id=ConvSeatNo029 value='10B' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '029', '#a193e2', '10B');"
												onclick="Seat_OnClick(this, '029', '#a193e2', '10B');"
												value="Off">

												10B

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo032 value='032' >
												<input type=hidden id=ConvSeatNo032 value='11B' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 내측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '032', '#a193e2', '11B');"
												onclick="Seat_OnClick(this, '032', '#a193e2', '11B');"
												value="Off">

												11B

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												<span style="color:white">
												&nbsp;
												</span>
											</td>
										
									</tr>
								
									<tr>
									
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo003 value='003' >
												<input type=hidden id=ConvSeatNo003 value='1C' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 창측 / 출입구좌석','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 창측 / 출입구좌석','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '003', '#a193e2', '1C');"
												onclick="Seat_OnClick(this, '003', '#a193e2', '1C');"
												value="Off">

												1C

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo006 value='006' >
												<input type=hidden id=ConvSeatNo006 value='2C' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '006', '#a193e2', '2C');"
												onclick="Seat_OnClick(this, '006', '#a193e2', '2C');"
												value="Off">

												2C

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo009 value='009' >
												<input type=hidden id=ConvSeatNo009 value='3C' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '009', '#a193e2', '3C');"
												onclick="Seat_OnClick(this, '009', '#a193e2', '3C');"
												value="Off">

												3C

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo012 value='012' >
												<input type=hidden id=ConvSeatNo012 value='4C' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '012', '#a193e2', '4C');"
												onclick="Seat_OnClick(this, '012', '#a193e2', '4C');"
												value="Off">

												4C

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo015 value='015' >
												<input type=hidden id=ConvSeatNo015 value='5C' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '015', '#a193e2', '5C');"
												onclick="Seat_OnClick(this, '015', '#a193e2', '5C');"
												value="Off">

												5C

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo018 value='018' >
												<input type=hidden id=ConvSeatNo018 value='6C' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '018', '#a193e2', '6C');"
												onclick="Seat_OnClick(this, '018', '#a193e2', '6C');"
												value="Off">

												6C

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo021 value='021' >
												<input type=hidden id=ConvSeatNo021 value='7C' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '021', '#a193e2', '7C');"
												onclick="Seat_OnClick(this, '021', '#a193e2', '7C');"
												value="Off">

												7C

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo024 value='024' >
												<input type=hidden id=ConvSeatNo024 value='8C' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '024', '#a193e2', '8C');"
												onclick="Seat_OnClick(this, '024', '#a193e2', '8C');"
												value="Off">

												8C

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo027 value='027' >
												<input type=hidden id=ConvSeatNo027 value='9C' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '027', '#a193e2', '9C');"
												onclick="Seat_OnClick(this, '027', '#a193e2', '9C');"
												value="Off">

												9C

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo030 value='030' >
												<input type=hidden id=ConvSeatNo030 value='10C' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '030', '#a193e2', '10C');"
												onclick="Seat_OnClick(this, '030', '#a193e2', '10C');"
												value="Off">

												10C

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo033 value='033' >
												<input type=hidden id=ConvSeatNo033 value='11C' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 창측','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '033', '#a193e2', '11C');"
												onclick="Seat_OnClick(this, '033', '#a193e2', '11C');"
												value="Off">

												11C

												
												</span>
											</td>
										
											<td style="width:34px;height:20px;margin:0;padding:1px;border:0;background-color:white">
												

												<input type=hidden id=SeatNo036 value='036' >
												<input type=hidden id=ConvSeatNo036 value='12C' >


												<span id="SSeat"
												style="display:inline-block;width:100%;heigth:100%;text-align:center;background-color:#a193e2;color:white;font-weight:bold;white-space:nowrap"
												onmouseover="this.style.cursor='hand',pop('일반 / 순방 / 창측 / 출입구좌석','#ffefbe')"
												onfocus="this.style.cursor='hand',pop('일반 / 순방 / 창측 / 출입구좌석','#ffefbe')"
												onmouseout="off()"
												onblur="off()"
												onkeypress="Seat_OnClick(this, '036', '#a193e2', '12C');"
												onclick="Seat_OnClick(this, '036', '#a193e2', '12C');"
												value="Off">

												12C

												
												</span>
											</td>
										
									</tr>
								
								</table>

							</td>
						</tr>
						</table>
					


						<p class="p30"></p>
						<table width="100%">
						<tr>
							<td class="s-bult03" width="110">
								<b>선택한 좌석번호</b> :
							</td>
							<td>
								<div id="View"></div>
							</td>
						</tr>
						</table>


						<p class="p30"></p>
						<table class="btn">
						<tr>
							<td height="30">
								<div id="Confirm" style="display:none;">
									<a href="#" onclick="javascript:SetData();">
										<img src="/2007/img/common/btn_seatmap.gif" border=0  alt="선택좌석 예약하기">
									</a>
								</div>
							</td>
						</tr>
						</table>
						<!-- 팝업내용 끝-->

					</td>
					<td style="background:url(/2007/img/common/pop_right_bg.gif) repeat-y"></td>
				</tr>
				<tr>
					<td width="12"><img src="/2007/img/common/pop_box_lb.gif" alt=""></td>
					<td width="2000" style="background:url(/2007/img/common/pop_bottom_bg.gif) repeat-x"></td>
					<td width="47"><a href="#" onclick="self.close();" onkeypress="self.close();" ><img src="/2007/img/common/btn_pop_close.gif" alt="close"></a></td>
					<td width="12"><img src="/2007/img/common/pop_box_rb.gif" alt=""></td>
				</tr>
				</table>

			</td>
		</tr>
		<tr>
			<td colspan="2"><img src="/2007/img/common/pop_copyright.gif" alt="Korail copyright"></td>
		</tr>
		</table>

	</td>
</tr>
</table>

</form>



</body>
</html>