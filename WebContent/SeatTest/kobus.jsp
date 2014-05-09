<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<link rel="stylesheet" type="text/css" href="/common/css/sub.css" />
<script type="text/javascript" src="/common/js/jquery-1.6.1.min.js"></script>
<script type="text/javascript" src="/common/js/default.js"></script>
<script type="text/JavaScript" src="/js/javascript.js"></script>
<script type="text/JavaScript" src="/js/main.js"></script>
<!--[if lt IE 7]>
<script type="text/javascript" src="/common/js/DD_belatedPNG_0.0.8a.js"></script>
<script type="text/javascript">  
DD_belatedPNG.fix('img, .png');
</script>
<![endif]-->
<title>KOBUS - 안전하고 편안한 여행 코버스</title>
<script type="text/javascript">
$(document).ready(function() {
 gnb(3, 1, 1);
});
</script>

<style type="text/css">
	  
  .chformat {background-color:Blue; border:1 solid #FFCC66; font-size:9pt; height:20px;}

</style>

<script language = "JavaScript">
<!--
var check_seat =0;

 
var full_seat = 2 + 0;

function fc_showSeat() {
	
	fc_clear();

 						
	 					document.SeatForm.c1.disabled=false;
						document.SeatForm.c1.className = "chformat";

 						
	 					document.SeatForm.c2.disabled=false;
						document.SeatForm.c2.className = "chformat";

 						
	 					document.SeatForm.c3.disabled=false;
						document.SeatForm.c3.className = "chformat";

 						
	 					document.SeatForm.c4.disabled=false;
						document.SeatForm.c4.className = "chformat";

 						
	 					document.SeatForm.c5.disabled=false;
						document.SeatForm.c5.className = "chformat";

 						
	 					document.SeatForm.c6.disabled=false;
						document.SeatForm.c6.className = "chformat";

 						
	 					document.SeatForm.c7.disabled=false;
						document.SeatForm.c7.className = "chformat";

 						
	 					document.SeatForm.c8.disabled=false;
						document.SeatForm.c8.className = "chformat";

 						
	 					document.SeatForm.c9.disabled=false;
						document.SeatForm.c9.className = "chformat";

 						
	 					document.SeatForm.c10.disabled=false;
						document.SeatForm.c10.className = "chformat";

 						
	 					document.SeatForm.c11.disabled=false;
						document.SeatForm.c11.className = "chformat";

 						
	 					document.SeatForm.c12.disabled=false;
						document.SeatForm.c12.className = "chformat";

 						
	 					document.SeatForm.c14.disabled=false;
						document.SeatForm.c14.className = "chformat";

 						
	 					document.SeatForm.c15.disabled=false;
						document.SeatForm.c15.className = "chformat";

 						
	 					document.SeatForm.c16.disabled=false;
						document.SeatForm.c16.className = "chformat";

 						
	 					document.SeatForm.c17.disabled=false;
						document.SeatForm.c17.className = "chformat";

 						
	 					document.SeatForm.c18.disabled=false;
						document.SeatForm.c18.className = "chformat";

 						
	 					document.SeatForm.c19.disabled=false;
						document.SeatForm.c19.className = "chformat";

 						
	 					document.SeatForm.c20.disabled=false;
						document.SeatForm.c20.className = "chformat";

 						
	 					document.SeatForm.c21.disabled=false;
						document.SeatForm.c21.className = "chformat";

 						
	 					document.SeatForm.c22.disabled=false;
						document.SeatForm.c22.className = "chformat";

 						
	 					document.SeatForm.c23.disabled=false;
						document.SeatForm.c23.className = "chformat";

 						
	 					document.SeatForm.c24.disabled=false;
						document.SeatForm.c24.className = "chformat";

 						
	 					document.SeatForm.c25.disabled=false;
						document.SeatForm.c25.className = "chformat";

 						
	 					document.SeatForm.c26.disabled=false;
						document.SeatForm.c26.className = "chformat";

 						
	 					document.SeatForm.c27.disabled=false;
						document.SeatForm.c27.className = "chformat";

 						
	 					document.SeatForm.c28.disabled=false;
						document.SeatForm.c28.className = "chformat";

 						
	 					document.SeatForm.c29.disabled=false;
						document.SeatForm.c29.className = "chformat";

 						
	 					document.SeatForm.c30.disabled=false;
						document.SeatForm.c30.className = "chformat";

 						
	 					document.SeatForm.c31.disabled=false;
						document.SeatForm.c31.className = "chformat";

 						
	 					document.SeatForm.c32.disabled=false;
						document.SeatForm.c32.className = "chformat";

 						
	 					document.SeatForm.c33.disabled=false;
						document.SeatForm.c33.className = "chformat";

 						
	 					document.SeatForm.c34.disabled=false;
						document.SeatForm.c34.className = "chformat";

 						
	 					document.SeatForm.c35.disabled=false;
						document.SeatForm.c35.className = "chformat";

 						
	 					document.SeatForm.c36.disabled=false;
						document.SeatForm.c36.className = "chformat";

 						
	 					document.SeatForm.c37.disabled=false;
						document.SeatForm.c37.className = "chformat";

 						
	 					document.SeatForm.c38.disabled=false;
						document.SeatForm.c38.className = "chformat";

 						
	 					document.SeatForm.c39.disabled=false;
						document.SeatForm.c39.className = "chformat";

 						
	 					document.SeatForm.c40.disabled=false;
						document.SeatForm.c40.className = "chformat";

 						
	 					document.SeatForm.c41.disabled=false;
						document.SeatForm.c41.className = "chformat";

 						
	 					document.SeatForm.c42.disabled=false;
						document.SeatForm.c42.className = "chformat";

 						
	 					document.SeatForm.c43.disabled=false;
						document.SeatForm.c43.className = "chformat";

 						
	 					document.SeatForm.c44.disabled=false;
						document.SeatForm.c44.className = "chformat";

 						
	 					document.SeatForm.c45.disabled=false;
						document.SeatForm.c45.className = "chformat";





}

function fc_clear() {


		document.SeatForm.c1.disabled=true;
		document.SeatForm.c1.checked=false;

		document.SeatForm.c2.disabled=true;
		document.SeatForm.c2.checked=false;

		document.SeatForm.c3.disabled=true;
		document.SeatForm.c3.checked=false;

		document.SeatForm.c4.disabled=true;
		document.SeatForm.c4.checked=false;

		document.SeatForm.c5.disabled=true;
		document.SeatForm.c5.checked=false;

		document.SeatForm.c6.disabled=true;
		document.SeatForm.c6.checked=false;

		document.SeatForm.c7.disabled=true;
		document.SeatForm.c7.checked=false;

		document.SeatForm.c8.disabled=true;
		document.SeatForm.c8.checked=false;

		document.SeatForm.c9.disabled=true;
		document.SeatForm.c9.checked=false;

		document.SeatForm.c10.disabled=true;
		document.SeatForm.c10.checked=false;

		document.SeatForm.c11.disabled=true;
		document.SeatForm.c11.checked=false;

		document.SeatForm.c12.disabled=true;
		document.SeatForm.c12.checked=false;

		document.SeatForm.c13.disabled=true;
		document.SeatForm.c13.checked=false;

		document.SeatForm.c14.disabled=true;
		document.SeatForm.c14.checked=false;

		document.SeatForm.c15.disabled=true;
		document.SeatForm.c15.checked=false;

		document.SeatForm.c16.disabled=true;
		document.SeatForm.c16.checked=false;

		document.SeatForm.c17.disabled=true;
		document.SeatForm.c17.checked=false;

		document.SeatForm.c18.disabled=true;
		document.SeatForm.c18.checked=false;

		document.SeatForm.c19.disabled=true;
		document.SeatForm.c19.checked=false;

		document.SeatForm.c20.disabled=true;
		document.SeatForm.c20.checked=false;

		document.SeatForm.c21.disabled=true;
		document.SeatForm.c21.checked=false;

		document.SeatForm.c22.disabled=true;
		document.SeatForm.c22.checked=false;

		document.SeatForm.c23.disabled=true;
		document.SeatForm.c23.checked=false;

		document.SeatForm.c24.disabled=true;
		document.SeatForm.c24.checked=false;

		document.SeatForm.c25.disabled=true;
		document.SeatForm.c25.checked=false;

		document.SeatForm.c26.disabled=true;
		document.SeatForm.c26.checked=false;

		document.SeatForm.c27.disabled=true;
		document.SeatForm.c27.checked=false;

		document.SeatForm.c28.disabled=true;
		document.SeatForm.c28.checked=false;

		document.SeatForm.c29.disabled=true;
		document.SeatForm.c29.checked=false;

		document.SeatForm.c30.disabled=true;
		document.SeatForm.c30.checked=false;

		document.SeatForm.c31.disabled=true;
		document.SeatForm.c31.checked=false;

		document.SeatForm.c32.disabled=true;
		document.SeatForm.c32.checked=false;

		document.SeatForm.c33.disabled=true;
		document.SeatForm.c33.checked=false;

		document.SeatForm.c34.disabled=true;
		document.SeatForm.c34.checked=false;

		document.SeatForm.c35.disabled=true;
		document.SeatForm.c35.checked=false;

		document.SeatForm.c36.disabled=true;
		document.SeatForm.c36.checked=false;

		document.SeatForm.c37.disabled=true;
		document.SeatForm.c37.checked=false;

		document.SeatForm.c38.disabled=true;
		document.SeatForm.c38.checked=false;

		document.SeatForm.c39.disabled=true;
		document.SeatForm.c39.checked=false;

		document.SeatForm.c40.disabled=true;
		document.SeatForm.c40.checked=false;

		document.SeatForm.c41.disabled=true;
		document.SeatForm.c41.checked=false;

		document.SeatForm.c42.disabled=true;
		document.SeatForm.c42.checked=false;

		document.SeatForm.c43.disabled=true;
		document.SeatForm.c43.checked=false;

		document.SeatForm.c44.disabled=true;
		document.SeatForm.c44.checked=false;

		document.SeatForm.c45.disabled=true;
		document.SeatForm.c45.checked=false;

}
function  fc_Select() {


	var str = "";
	var d = document.FrmCad;
    var radiovalue;
    var sum = 0;
    var getlist =new Array(10);
    var chkvalue =new Array("1","3","7","1","3","7","1","3","5");
    var vencod = "";
    var odd = 0;

    buf = new Array(7);

    radiovalue = document.FrmCad.koreng.value ;
    vencod = document.FrmCad.pUSR_JUMIN.value ;

	
	if(full_seat > check_seat){
		alert("예약/예매 좌석을 선택해 주십시요!");
		return false;
	}// if(full_seat의 끝

	var sSeat= "";

		if((document.SeatForm.c1.checked==true)&&(document.SeatForm.c1.disabled==false)){
		sSeat = sSeat + document.SeatForm.c1.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c2.checked==true)&&(document.SeatForm.c2.disabled==false)){
		sSeat = sSeat + document.SeatForm.c2.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c3.checked==true)&&(document.SeatForm.c3.disabled==false)){
		sSeat = sSeat + document.SeatForm.c3.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c4.checked==true)&&(document.SeatForm.c4.disabled==false)){
		sSeat = sSeat + document.SeatForm.c4.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c5.checked==true)&&(document.SeatForm.c5.disabled==false)){
		sSeat = sSeat + document.SeatForm.c5.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c6.checked==true)&&(document.SeatForm.c6.disabled==false)){
		sSeat = sSeat + document.SeatForm.c6.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c7.checked==true)&&(document.SeatForm.c7.disabled==false)){
		sSeat = sSeat + document.SeatForm.c7.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c8.checked==true)&&(document.SeatForm.c8.disabled==false)){
		sSeat = sSeat + document.SeatForm.c8.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c9.checked==true)&&(document.SeatForm.c9.disabled==false)){
		sSeat = sSeat + document.SeatForm.c9.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c10.checked==true)&&(document.SeatForm.c10.disabled==false)){
		sSeat = sSeat + document.SeatForm.c10.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c11.checked==true)&&(document.SeatForm.c11.disabled==false)){
		sSeat = sSeat + document.SeatForm.c11.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c12.checked==true)&&(document.SeatForm.c12.disabled==false)){
		sSeat = sSeat + document.SeatForm.c12.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c13.checked==true)&&(document.SeatForm.c13.disabled==false)){
		sSeat = sSeat + document.SeatForm.c13.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c14.checked==true)&&(document.SeatForm.c14.disabled==false)){
		sSeat = sSeat + document.SeatForm.c14.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c15.checked==true)&&(document.SeatForm.c15.disabled==false)){
		sSeat = sSeat + document.SeatForm.c15.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c16.checked==true)&&(document.SeatForm.c16.disabled==false)){
		sSeat = sSeat + document.SeatForm.c16.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c17.checked==true)&&(document.SeatForm.c17.disabled==false)){
		sSeat = sSeat + document.SeatForm.c17.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c18.checked==true)&&(document.SeatForm.c18.disabled==false)){
		sSeat = sSeat + document.SeatForm.c18.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c19.checked==true)&&(document.SeatForm.c19.disabled==false)){
		sSeat = sSeat + document.SeatForm.c19.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c20.checked==true)&&(document.SeatForm.c20.disabled==false)){
		sSeat = sSeat + document.SeatForm.c20.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c21.checked==true)&&(document.SeatForm.c21.disabled==false)){
		sSeat = sSeat + document.SeatForm.c21.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c22.checked==true)&&(document.SeatForm.c22.disabled==false)){
		sSeat = sSeat + document.SeatForm.c22.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c23.checked==true)&&(document.SeatForm.c23.disabled==false)){
		sSeat = sSeat + document.SeatForm.c23.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c24.checked==true)&&(document.SeatForm.c24.disabled==false)){
		sSeat = sSeat + document.SeatForm.c24.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c25.checked==true)&&(document.SeatForm.c25.disabled==false)){
		sSeat = sSeat + document.SeatForm.c25.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c26.checked==true)&&(document.SeatForm.c26.disabled==false)){
		sSeat = sSeat + document.SeatForm.c26.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c27.checked==true)&&(document.SeatForm.c27.disabled==false)){
		sSeat = sSeat + document.SeatForm.c27.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c28.checked==true)&&(document.SeatForm.c28.disabled==false)){
		sSeat = sSeat + document.SeatForm.c28.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c29.checked==true)&&(document.SeatForm.c29.disabled==false)){
		sSeat = sSeat + document.SeatForm.c29.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c30.checked==true)&&(document.SeatForm.c30.disabled==false)){
		sSeat = sSeat + document.SeatForm.c30.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c31.checked==true)&&(document.SeatForm.c31.disabled==false)){
		sSeat = sSeat + document.SeatForm.c31.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c32.checked==true)&&(document.SeatForm.c32.disabled==false)){
		sSeat = sSeat + document.SeatForm.c32.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c33.checked==true)&&(document.SeatForm.c33.disabled==false)){
		sSeat = sSeat + document.SeatForm.c33.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c34.checked==true)&&(document.SeatForm.c34.disabled==false)){
		sSeat = sSeat + document.SeatForm.c34.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c35.checked==true)&&(document.SeatForm.c35.disabled==false)){
		sSeat = sSeat + document.SeatForm.c35.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c36.checked==true)&&(document.SeatForm.c36.disabled==false)){
		sSeat = sSeat + document.SeatForm.c36.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c37.checked==true)&&(document.SeatForm.c37.disabled==false)){
		sSeat = sSeat + document.SeatForm.c37.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c38.checked==true)&&(document.SeatForm.c38.disabled==false)){
		sSeat = sSeat + document.SeatForm.c38.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c39.checked==true)&&(document.SeatForm.c39.disabled==false)){
		sSeat = sSeat + document.SeatForm.c39.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c40.checked==true)&&(document.SeatForm.c40.disabled==false)){
		sSeat = sSeat + document.SeatForm.c40.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c41.checked==true)&&(document.SeatForm.c41.disabled==false)){
		sSeat = sSeat + document.SeatForm.c41.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c42.checked==true)&&(document.SeatForm.c42.disabled==false)){
		sSeat = sSeat + document.SeatForm.c42.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c43.checked==true)&&(document.SeatForm.c43.disabled==false)){
		sSeat = sSeat + document.SeatForm.c43.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c44.checked==true)&&(document.SeatForm.c44.disabled==false)){
		sSeat = sSeat + document.SeatForm.c44.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c45.checked==true)&&(document.SeatForm.c45.disabled==false)){
		sSeat = sSeat + document.SeatForm.c45.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....의 끝


	if(d.pCAD_NO.value.length == 0 || d.pCAD_NO.value == "") {
		alert("카드번호를 입력하세요");
		d.pCAD_NO.value	= "";
		d.pCAD_NO.focus();
		return false;
	} else if(d.pCAD_NO.value.length != 14 && d.pCAD_NO.value.length != 15 && d.pCAD_NO.value.length != 16) {
		alert("카드번호는 14자리 또는 16자리입니다. 다시 입력하세요");
		d.pCAD_NO.value	= "";
		d.pCAD_NO.focus();
		return false;
	} else if(!isNum(d.pCAD_NO.value)) {
		alert("숫자만 입력해 주십시오.");
		d.pCAD_NO.value	= "";
		d.pCAD_NO.focus();
		return false;
	} else if(d.pCAD_NO.value == "9410802724620007" || d.pCAD_NO.value == "4499141114515002" || d.pCAD_NO.value == "4349760956176557" || d.pCAD_NO.value == "9440321030920101" || d.pCAD_NO.value == "9440114301525885" || d.pCAD_NO.value == "9411611938364005" || d.pCAD_NO.value == "6060453162445006" || d.pCAD_NO.value == "4481254027133126" || d.pCAD_NO.value == "9440317821385967" || d.pCAD_NO.value == "6210317825772610" || d.pCAD_NO.value == "4364200497990000" || d.pCAD_NO.value == "4155250018524153" || d.pCAD_NO.value == "4579730450771048") {
		alert("사용하실 수 없는 카드입니다.");
		d.pCAD_NO.value	= "";
		d.pCAD_NO.focus();
		return false;
	} else if(d.pVIL_YEAR.value.length == 0 || d.pVIL_YEAR.value == "") {
		alert("년도를 선택하세요");
		d.pVIL_YEAR.focus();
		return false;
	} else if(d.pVIL_MONTH.value.length == 0 || d.pVIL_MONTH.value == "") {
		alert("월을 선택하세요");
		d.pVIL_MONTH.focus();
		return false;
	} else if((d.pVIL_YEAR.value <= 2014)&&(d.pVIL_MONTH.value  < 5)) {
		alert("신용카드의 유효기간이 만료되었습니다. 확인하여 주십시요.");
		d.pVIL_YEAR.focus();
		return false;
	} else if(d.pUSR_JUMIN.value.length == 0 || d.pUSR_JUMIN.value == "") {
		alert("주민/사업자등록번호를 입력하세요");
		d.pUSR_JUMIN.value	= "";
		d.pUSR_JUMIN.focus();
		return false;
	} else if(radiovalue == "0") {
        for (i = 0; i < 7; i++) buf[i] = parseInt(vencod.charAt(i));
        odd = buf[1]*10 + buf[2];

        if(!(d.pUSR_JUMIN.value.length == 7)){
    		alert("주민번호는 7자리입니다. 다시 입력하세요");
    		d.pUSR_JUMIN.value	= "";
    		d.pUSR_JUMIN.focus();
    		return false;
        }
        if(!(d.pUSR_JUMIN.value.substr(0,1)==1) && !(d.pUSR_JUMIN.value.substr(0,1)==2)){

            if((odd%2 != 0) && ((buf[5] != 6) && (buf[5] != 7) && (buf[5] != 8) || (buf[5] != 9))){
        		alert("잘못된 주민등록 번호입니다. 다시 입력해 주십시오.");
        		d.pUSR_JUMIN.value	= "";
        		d.pUSR_JUMIN.focus();
        		return false;
            }
	    }
	    
	    document.getElementById('p111').style.display = 'none';

    } else if (radiovalue == "1") {
        if(!(d.pUSR_JUMIN.value.length == 10)){
    		alert("사업자등록번호는 10자리입니다. 다시 입력하세요");
    		d.pUSR_JUMIN.value	= "";
    		d.pUSR_JUMIN.focus();
    		return false;
        }

        for (var i=0;i<10;i++){
          getlist[i] = vencod.substring(i,i+1);
        }

        for (var i=0;i<9;i++){
          sum += getlist[i]*chkvalue[i];
        }
        sum = sum +parseInt((getlist[8]*5)/10) ;
        sidliy = sum%10;
        sidchk = 0;

        if ( sidliy != 0 ) {
          sidchk = 10 - sidliy;
        } else {
          sidchk = 0;
        }
        if ( sidchk != getlist[9] ) {
            alert("잘못된 사업자 등록번호 입니다. 다시 입력해주십시오.");
            d.pUSR_JUMIN.value	= "";
		    d.pUSR_JUMIN.focus();
            return false;
        }
        
        document.getElementById('p111').style.display = 'none';
			
	} else if(!isNum(d.pUSR_JUMIN.value)) {
		alert("숫자만 입력해 주십시오.");
		d.pUSR_JUMIN.value	= "";
		d.pUSR_JUMIN.focus();
		return false;

	} else{
		return true;
	}
}

function updatetitle(str){
    var frm = document.FrmCad;
    if (str == 0) {
		document.getElementById('lbltitle').innerHTML  = "주민번호 뒷 7자리";        
        frm.pUSR_JUMIN.size = 7 ;
        frm.pUSR_JUMIN.value = "" ;
		frm.koreng.value = "0" ;
		frm.pUsrCard.value = "1" ;
    } else {
		document.getElementById('lbltitle').innerHTML  = "사업자등록번호";    
        frm.pUSR_JUMIN.size = 10 ;
        frm.pUSR_JUMIN.value = "" ;
		frm.koreng.value = "1" ;
		frm.pUsrCard.value = "2" ;
    }
    frm.pCAD_NO.focus() ;
    return ;
}

function fc_Checked(){


	if(full_seat > check_seat){
		alert("예약/예매 좌석을 선택해 주십시요!");
		return false;
	}// if(full_seat의 끝

	var sSeat= "";

		if((document.SeatForm.c1.checked==true)&&(document.SeatForm.c1.disabled==false)){
		sSeat = sSeat + document.SeatForm.c1.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c2.checked==true)&&(document.SeatForm.c2.disabled==false)){
		sSeat = sSeat + document.SeatForm.c2.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c3.checked==true)&&(document.SeatForm.c3.disabled==false)){
		sSeat = sSeat + document.SeatForm.c3.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c4.checked==true)&&(document.SeatForm.c4.disabled==false)){
		sSeat = sSeat + document.SeatForm.c4.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c5.checked==true)&&(document.SeatForm.c5.disabled==false)){
		sSeat = sSeat + document.SeatForm.c5.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c6.checked==true)&&(document.SeatForm.c6.disabled==false)){
		sSeat = sSeat + document.SeatForm.c6.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c7.checked==true)&&(document.SeatForm.c7.disabled==false)){
		sSeat = sSeat + document.SeatForm.c7.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c8.checked==true)&&(document.SeatForm.c8.disabled==false)){
		sSeat = sSeat + document.SeatForm.c8.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c9.checked==true)&&(document.SeatForm.c9.disabled==false)){
		sSeat = sSeat + document.SeatForm.c9.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c10.checked==true)&&(document.SeatForm.c10.disabled==false)){
		sSeat = sSeat + document.SeatForm.c10.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c11.checked==true)&&(document.SeatForm.c11.disabled==false)){
		sSeat = sSeat + document.SeatForm.c11.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c12.checked==true)&&(document.SeatForm.c12.disabled==false)){
		sSeat = sSeat + document.SeatForm.c12.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c13.checked==true)&&(document.SeatForm.c13.disabled==false)){
		sSeat = sSeat + document.SeatForm.c13.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c14.checked==true)&&(document.SeatForm.c14.disabled==false)){
		sSeat = sSeat + document.SeatForm.c14.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c15.checked==true)&&(document.SeatForm.c15.disabled==false)){
		sSeat = sSeat + document.SeatForm.c15.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c16.checked==true)&&(document.SeatForm.c16.disabled==false)){
		sSeat = sSeat + document.SeatForm.c16.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c17.checked==true)&&(document.SeatForm.c17.disabled==false)){
		sSeat = sSeat + document.SeatForm.c17.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c18.checked==true)&&(document.SeatForm.c18.disabled==false)){
		sSeat = sSeat + document.SeatForm.c18.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c19.checked==true)&&(document.SeatForm.c19.disabled==false)){
		sSeat = sSeat + document.SeatForm.c19.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c20.checked==true)&&(document.SeatForm.c20.disabled==false)){
		sSeat = sSeat + document.SeatForm.c20.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c21.checked==true)&&(document.SeatForm.c21.disabled==false)){
		sSeat = sSeat + document.SeatForm.c21.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c22.checked==true)&&(document.SeatForm.c22.disabled==false)){
		sSeat = sSeat + document.SeatForm.c22.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c23.checked==true)&&(document.SeatForm.c23.disabled==false)){
		sSeat = sSeat + document.SeatForm.c23.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c24.checked==true)&&(document.SeatForm.c24.disabled==false)){
		sSeat = sSeat + document.SeatForm.c24.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c25.checked==true)&&(document.SeatForm.c25.disabled==false)){
		sSeat = sSeat + document.SeatForm.c25.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c26.checked==true)&&(document.SeatForm.c26.disabled==false)){
		sSeat = sSeat + document.SeatForm.c26.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c27.checked==true)&&(document.SeatForm.c27.disabled==false)){
		sSeat = sSeat + document.SeatForm.c27.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c28.checked==true)&&(document.SeatForm.c28.disabled==false)){
		sSeat = sSeat + document.SeatForm.c28.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c29.checked==true)&&(document.SeatForm.c29.disabled==false)){
		sSeat = sSeat + document.SeatForm.c29.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c30.checked==true)&&(document.SeatForm.c30.disabled==false)){
		sSeat = sSeat + document.SeatForm.c30.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c31.checked==true)&&(document.SeatForm.c31.disabled==false)){
		sSeat = sSeat + document.SeatForm.c31.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c32.checked==true)&&(document.SeatForm.c32.disabled==false)){
		sSeat = sSeat + document.SeatForm.c32.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c33.checked==true)&&(document.SeatForm.c33.disabled==false)){
		sSeat = sSeat + document.SeatForm.c33.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c34.checked==true)&&(document.SeatForm.c34.disabled==false)){
		sSeat = sSeat + document.SeatForm.c34.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c35.checked==true)&&(document.SeatForm.c35.disabled==false)){
		sSeat = sSeat + document.SeatForm.c35.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c36.checked==true)&&(document.SeatForm.c36.disabled==false)){
		sSeat = sSeat + document.SeatForm.c36.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c37.checked==true)&&(document.SeatForm.c37.disabled==false)){
		sSeat = sSeat + document.SeatForm.c37.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c38.checked==true)&&(document.SeatForm.c38.disabled==false)){
		sSeat = sSeat + document.SeatForm.c38.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c39.checked==true)&&(document.SeatForm.c39.disabled==false)){
		sSeat = sSeat + document.SeatForm.c39.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c40.checked==true)&&(document.SeatForm.c40.disabled==false)){
		sSeat = sSeat + document.SeatForm.c40.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c41.checked==true)&&(document.SeatForm.c41.disabled==false)){
		sSeat = sSeat + document.SeatForm.c41.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c42.checked==true)&&(document.SeatForm.c42.disabled==false)){
		sSeat = sSeat + document.SeatForm.c42.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c43.checked==true)&&(document.SeatForm.c43.disabled==false)){
		sSeat = sSeat + document.SeatForm.c43.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c44.checked==true)&&(document.SeatForm.c44.disabled==false)){
		sSeat = sSeat + document.SeatForm.c44.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

		if((document.SeatForm.c45.checked==true)&&(document.SeatForm.c45.disabled==false)){
		sSeat = sSeat + document.SeatForm.c45.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....의 끝

	return true;
}

function fc_Check(box) {
	
	if(box.checked == true) {
		check_seat ++;
		if(full_seat < check_seat) {
			check_seat = check_seat -1;
			alert("예매/예약 하실 매수를 초과하였습니다. 예약/예매하고자 하시는 매수는 "+full_seat+"매입니다.");
			return false;
		}//if(full...의끝
		return true;
	} else {
		check_seat = check_seat -1;
	}//if(box.checked....의 끝
}

function fc_frame_taget(){
    var d = document.HiddenForm; 
    var url		= "reservation01_lininfo.jsp";
	d.action	= url;
    d.method	= "post";
    d.target	= "reservation01_lininfo";
    d.submit();

}

// 계좌이체 이중승인의 가능성을 줄이기 위해 몇가지 이벤트를 막는다.
document.onmousedown=right;
document.onmousemove=right;

document.onkeypress = processKey;
document.onkeydown  = processKey;

function processKey() {
	if((event.ctrlKey == true && (event.keyCode == 8 || event.keyCode == 78 || event.keyCode == 82))
		|| ((typeof(event.srcElement.type) == "undefined" || typeof(event.srcElement.name) == "undefined" || event.srcElement.type != "text" || event.srcElement.name != "sndEmail") && event.keyCode >= 112 && event.keyCode <= 123)) {
		event.keyCode = 0;
		event.cancelBubble = true;
		event.returnValue = false;
	}
	if(event.keyCode == 8 && typeof(event.srcElement.value) == "undefined") {
		event.keyCode = 0;
		event.cancelBubble = true;
		event.returnValue = false;
	}
}

function right(e) {
	if(navigator.appName=='Netscape'&&(e.which==3||e.which==2)){
		alert('마우스 오른쪽 버튼을 사용할수 없습니다.');
		return;
	}else if(navigator.appName=='Microsoft Internet Explorer'&&(event.button==2||event.button==3)) {
		alert('마우스 오른쪽 버튼을 사용할수 없습니다.');
		return;
	}
}

-->
</script>

<script language="javascript">
<!--
	function openBankI()
	{
		var ofrm	= document.KSPayOForm;		

		var sSeat= "";
		


		if(document.SeatForm.pTer_sfr.value == "353" || document.SeatForm.pTer_sfr.value == "343"){
			alert("해당노선은 계좌이체 예매를 하실 수 없는 노선입니다. 카드예약만 가능합니다!");
			return false;
		}
		
		if(full_seat > check_seat){
			alert("예약/예매 좌석을 선택해 주십시요!");
			return false;
		}// if(full_seat의 끝

	
			if((document.SeatForm.c1.checked==true)&&(document.SeatForm.c1.disabled==false)){
				sSeat = sSeat + document.SeatForm.c1.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c2.checked==true)&&(document.SeatForm.c2.disabled==false)){
				sSeat = sSeat + document.SeatForm.c2.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c3.checked==true)&&(document.SeatForm.c3.disabled==false)){
				sSeat = sSeat + document.SeatForm.c3.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c4.checked==true)&&(document.SeatForm.c4.disabled==false)){
				sSeat = sSeat + document.SeatForm.c4.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c5.checked==true)&&(document.SeatForm.c5.disabled==false)){
				sSeat = sSeat + document.SeatForm.c5.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c6.checked==true)&&(document.SeatForm.c6.disabled==false)){
				sSeat = sSeat + document.SeatForm.c6.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c7.checked==true)&&(document.SeatForm.c7.disabled==false)){
				sSeat = sSeat + document.SeatForm.c7.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c8.checked==true)&&(document.SeatForm.c8.disabled==false)){
				sSeat = sSeat + document.SeatForm.c8.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c9.checked==true)&&(document.SeatForm.c9.disabled==false)){
				sSeat = sSeat + document.SeatForm.c9.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c10.checked==true)&&(document.SeatForm.c10.disabled==false)){
				sSeat = sSeat + document.SeatForm.c10.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c11.checked==true)&&(document.SeatForm.c11.disabled==false)){
				sSeat = sSeat + document.SeatForm.c11.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c12.checked==true)&&(document.SeatForm.c12.disabled==false)){
				sSeat = sSeat + document.SeatForm.c12.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c13.checked==true)&&(document.SeatForm.c13.disabled==false)){
				sSeat = sSeat + document.SeatForm.c13.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c14.checked==true)&&(document.SeatForm.c14.disabled==false)){
				sSeat = sSeat + document.SeatForm.c14.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c15.checked==true)&&(document.SeatForm.c15.disabled==false)){
				sSeat = sSeat + document.SeatForm.c15.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c16.checked==true)&&(document.SeatForm.c16.disabled==false)){
				sSeat = sSeat + document.SeatForm.c16.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c17.checked==true)&&(document.SeatForm.c17.disabled==false)){
				sSeat = sSeat + document.SeatForm.c17.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c18.checked==true)&&(document.SeatForm.c18.disabled==false)){
				sSeat = sSeat + document.SeatForm.c18.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c19.checked==true)&&(document.SeatForm.c19.disabled==false)){
				sSeat = sSeat + document.SeatForm.c19.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c20.checked==true)&&(document.SeatForm.c20.disabled==false)){
				sSeat = sSeat + document.SeatForm.c20.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c21.checked==true)&&(document.SeatForm.c21.disabled==false)){
				sSeat = sSeat + document.SeatForm.c21.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c22.checked==true)&&(document.SeatForm.c22.disabled==false)){
				sSeat = sSeat + document.SeatForm.c22.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c23.checked==true)&&(document.SeatForm.c23.disabled==false)){
				sSeat = sSeat + document.SeatForm.c23.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c24.checked==true)&&(document.SeatForm.c24.disabled==false)){
				sSeat = sSeat + document.SeatForm.c24.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c25.checked==true)&&(document.SeatForm.c25.disabled==false)){
				sSeat = sSeat + document.SeatForm.c25.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c26.checked==true)&&(document.SeatForm.c26.disabled==false)){
				sSeat = sSeat + document.SeatForm.c26.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c27.checked==true)&&(document.SeatForm.c27.disabled==false)){
				sSeat = sSeat + document.SeatForm.c27.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c28.checked==true)&&(document.SeatForm.c28.disabled==false)){
				sSeat = sSeat + document.SeatForm.c28.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c29.checked==true)&&(document.SeatForm.c29.disabled==false)){
				sSeat = sSeat + document.SeatForm.c29.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c30.checked==true)&&(document.SeatForm.c30.disabled==false)){
				sSeat = sSeat + document.SeatForm.c30.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c31.checked==true)&&(document.SeatForm.c31.disabled==false)){
				sSeat = sSeat + document.SeatForm.c31.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c32.checked==true)&&(document.SeatForm.c32.disabled==false)){
				sSeat = sSeat + document.SeatForm.c32.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c33.checked==true)&&(document.SeatForm.c33.disabled==false)){
				sSeat = sSeat + document.SeatForm.c33.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c34.checked==true)&&(document.SeatForm.c34.disabled==false)){
				sSeat = sSeat + document.SeatForm.c34.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c35.checked==true)&&(document.SeatForm.c35.disabled==false)){
				sSeat = sSeat + document.SeatForm.c35.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c36.checked==true)&&(document.SeatForm.c36.disabled==false)){
				sSeat = sSeat + document.SeatForm.c36.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c37.checked==true)&&(document.SeatForm.c37.disabled==false)){
				sSeat = sSeat + document.SeatForm.c37.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c38.checked==true)&&(document.SeatForm.c38.disabled==false)){
				sSeat = sSeat + document.SeatForm.c38.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c39.checked==true)&&(document.SeatForm.c39.disabled==false)){
				sSeat = sSeat + document.SeatForm.c39.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c40.checked==true)&&(document.SeatForm.c40.disabled==false)){
				sSeat = sSeat + document.SeatForm.c40.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c41.checked==true)&&(document.SeatForm.c41.disabled==false)){
				sSeat = sSeat + document.SeatForm.c41.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c42.checked==true)&&(document.SeatForm.c42.disabled==false)){
				sSeat = sSeat + document.SeatForm.c42.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c43.checked==true)&&(document.SeatForm.c43.disabled==false)){
				sSeat = sSeat + document.SeatForm.c43.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c44.checked==true)&&(document.SeatForm.c44.disabled==false)){
				sSeat = sSeat + document.SeatForm.c44.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
	
			if((document.SeatForm.c45.checked==true)&&(document.SeatForm.c45.disabled==false)){
				sSeat = sSeat + document.SeatForm.c45.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....의 끝
		

		ofrm.submit();
   }	
	 
	function fc_Caution() {

		return true;
}
-->
</script>

</head>

<body onLoad="fc_showSeat(); ">
<h1 class="none">승차권 예약·예매(홈티켓)</h1>
<!-- Skip Navi -->
<h2 class="none">건너뛰기 링크</h2>
<ul class="skip_link">
<li><a href="#container">본문</a></li>
<li><a href="#gnb">주요메뉴</a></li>
<li><a href="#footer">하단메뉴</a></li>
</ul>
<div class="bgWrap">
<!-- Wrap -->
<div id="wrapper">
 
	<!-- header -->
	
	<div id="header">
		<h1><a href="http://www.kobus.co.kr/web/main/index.jsp" title="홈이로 이동"><img src="/images/common/logo.png" alt="Kobus" /></a></h1>
		
		<div class="navi_area">
			<!-- topmenu -->
			<ul class="topmenu">
			<li class="menu1"><a href="http://www.kobus.co.kr/web/main/index.jsp" title="홈이로 이동">HOME</a></li>
			<li class="menu2"><a href="http://www.kobus.co.kr/web/07_sitemap/sitemap01.jsp" title="사이트맵">SITEMAP</a></li>
			<li class="menu3"><a href="#" onclick="javascript:mail(1)" title="CONTACT US">CONTACT US</a></li>
			<li class="menu4"><a href="http://www.kobus.co.kr/web/eng/index.jsp" title="ENGLISH 사이트">ENGLISH</a></li>
			</ul>

			<h2 class="none">네비게이션</h2>
			<!-- gnb -->
			<div class="gnb">	
				<ul>
				<li><img src="/images/common/bg_gnb_first.png" alt="#" /></li>
				<li class="menu1"><a href="http://www.kobus.co.kr/web/01_info/info01.jsp" onmouseover="gnb(1);" onfocus="gnb(1);" onmouseout="gnb('off');" onblur="gnb('off');" title="이용안내">이용안내</a></li>
				<li class="menu2"><a href="http://www.kobus.co.kr/web/02_bus/bus01.jsp" onmouseover="gnb(2);" onfocus="gnb(2);" onmouseout="gnb('off');" onblur="gnb('off');" title="버스운행정보">버스운행정보</a></li>
				<li class="menu3"><a href="http://www.kobus.co.kr/web/03_reservation/reservation01.jsp" onmouseover="gnb(3);" onfocus="gnb(3);" onmouseout="gnb('off');" onblur="gnb('off');" title="승차권예약.예매">승차권예약.예매</a></li>
				<li class="menu4"><a href="https://www.kobus.co.kr/web/04_inquiry/inquiry01.jsp" onmouseover="gnb(4);" onfocus="gnb(4);" onmouseout="gnb('off');" onblur="gnb('off');" title="예약조회">예약조회</a></li>
				<li class="menu5"><a href="http://www.kobus.co.kr/web/05_customer/customer02.jsp" onmouseover="gnb(5);" onfocus="gnb(5);" onmouseout="gnb('off');" onblur="gnb('off');" title="고객의소리">고객의소리</a></li>
				<li class="menu6"><a href="http://www.kobus.co.kr/web/06_introduction/introduction01.jsp" onmouseover="gnb(6);" onfocus="gnb(6);" onmouseout="gnb('off');" onblur="gnb('off');" title="전국고속버스운송사업조합">전국고속버스운송사업조합</a></li>
				<li><img src="/images/common/bg_gnb_end.png" alt="#" /></li>
				</ul>
			</div>
			<div class="smenuBox">
				<ul class="menu01 none" onmouseover="gnb(1);" onfocus="gnb(1);" onmouseout="gnb('off');" onblur="gnb('off');">
				<li><img src="/images/common/bg_smenu_first.png" alt="" /></li>
				<li class="smenu1"><a href="http://www.kobus.co.kr/web/01_info/info01.jsp" title="고속버스 운행정보">고속버스 운행정보</a></li>
				<li class="smenu2"><a href="http://www.kobus.co.kr/web/01_info/info16.jsp" title="고속버스 홈티켓">고속버스 홈티켓</a></li>
				<li class="smenu3"><a href="http://www.kobus.co.kr/web/01_info/info02.jsp" title="승차권 예약">승차권 예약</a></li>
				<li class="smenu4"><a href="http://www.kobus.co.kr/web/01_info/info03.jsp" title="대금결제 및 수수료">대금결제 및 수수료</a></li>
				<li class="smenu6"><a href="http://www.kobus.co.kr/web/01_info/info05.jsp" title="ARS이용안내">ARS이용안내</a></li>
				<li class="smenu7"><a href="http://www.kobus.co.kr/web/01_info/info06.jsp" title="고객의 소리">고객의 소리</a></li>
				<li class="smenu8"><a href="http://www.kobus.co.kr/web/01_info/info07.jsp" title="공통메뉴">공통메뉴</a></li>
				<li><img src="/images/common/bg_smenu_end.png" alt="" /></li>
				</ul>

				<ul class="menu03 none" onmouseover="gnb(3);" onfocus="gnb(3);" onmouseout="gnb('off');" onblur="gnb('off');">
				<li><img src="/images/common/bg_smenu_first.png" alt="" /></li>
				<li class="smenu1"><a href="http://www.kobus.co.kr/web/03_reservation/reservation01.jsp" title="승차권예약.예매">승차권예약.예매</a></li>
				<li class="smenu2"><a href="https://www.kobus.co.kr/web/04_inquiry/inquiry01.jsp" title="예약조회/변경/취소">예약조회/변경/취소&amp;홈티켓조회/발행/재발행/취소</a></li>
				<li class="smenu3"><a href="https://home.kobus.co.kr/web/10_HomeTicketSearch/HomeTckTax.jsp" title="홈티켓 영수증 발행">홈티켓 영수증 발행</a></li>
				<li><img src="/images/common/bg_smenu_end.png" alt="" /></li>
				</ul>

				<ul class="menu05 none" onmouseover="gnb(5);" onfocus="gnb(5);" onmouseout="gnb('off');" onblur="gnb('off');">
				<li><img src="/images/common/bg_smenu_first.png" alt="" /></li>
				<li class="smenu1"><a href="http://www.kobus.co.kr/web/05_customer/customer01_main.jsp" title="묻고답하기">묻고답하기</a></li>
				<li class="smenu2"><a href="http://www.kobus.co.kr/web/05_customer/customer02.jsp" title="자주하는 질문">자주하는 질문</a></li>
				<li class="smenu4"><a href="http://www.kobus.co.kr/web/05_customer/customer04.jsp" title="유실물 센터">유실물 센터</a></li>
				<li><img src="/images/common/bg_smenu_end.png" alt="" /></li>
				</ul>

				<ul class="menu06 none" onmouseover="gnb(6);" onfocus="gnb(6);" onmouseout="gnb('off');" onblur="gnb('off');">
				<li><img src="/images/common/bg_smenu_first.png" alt="" /></li>
				<li class="smenu1"><a href="http://www.kobus.co.kr/web/06_introduction/introduction01.jsp" title="이사장 인사말">이사장 인사말</a></li>
				<li class="smenu2"><a href="http://www.kobus.co.kr/web/06_introduction/introduction02.jsp" title="조합연혁">조합연혁</a></li>
				<li class="smenu3"><a href="http://www.kobus.co.kr/web/06_introduction/introduction03.jsp" title="설립목적 및 사업">설립목적 및 사업</a></li>
				<li class="smenu4"><a href="http://www.kobus.co.kr/web/06_introduction/introduction04.jsp" title="조직도">조직도</a></li>
				<li class="smenu5"><a href="http://www.kobus.co.kr/web/06_introduction/introduction05.jsp" title="회원사현황">회원사현황</a></li>
				<li class="smenu6"><a href="http://www.kobus.co.kr/web/06_introduction/introduction06.jsp" title="알림마당">알림마당</a></li>
				<li class="smenu7"><a href="http://www.kobus.co.kr/web/06_introduction/introduction08.jsp" title="찾아오시는 길">찾아오시는 길</a></li>
				<li><img src="/images/common/bg_smenu_end.png" alt="" /></li>
				</ul>
			</div>
			<!-- //gnb -->
		</div>
		<!-- //navi_area -->
	</div>
	<!-- //header -->

	<!-- container -->
	<div id="container">

 	<h2 class="none">본문</h2>
 		<div class="sub_visual">
 			<p class="none">안전하고 편안한 고속버스</p>
 		</div>
		<!-- content -->
		<div class="content">
		<img class="line" src="/images/sub/bg_right_01.gif" alt="" />
 			<div class="sub_title">
  			<h3><img src="/images/sub/h3_reservation_01.gif" alt="승차권 예약·예매(홈티켓)" /></h3>
  				<p class="dir"><a href=""><img src="/images/sub/icon_home.gif" alt="home" /></a> &gt; <a href="reservation01.jsp">승차권 예약·예매</a> &gt; <a class="new" href="reservation01_2.jsp">좌석선택&amp;카드정보입력</a></p>
 			</div>
 			<!-- 컨텐츠영역 -->
			<div class="contbox box_reservation_02">
				<p class="text_img"><img src="/images/sub/bg_text03.gif" alt="아래의 고속버스 좌석 배치도는 대부분의 고속버스가 갖고 있는것을 보여줍니다.
따라서 좌우측이 바뀐 일부 고속버스의 경우 여기서 보여지는 배치도와 실제 고속버스의 좌석배치도와 다를수도
있음을 알려드립니다." /></p>
				
				<p class="text01"><span class="sblue">심야 시간대 출발차량의 1번부터 9번 좌석까지는 여성고객 및 노약자를 위한 좌석으로 운영되고 있습니다.</span></p>
				<p class="text01">교통 약자를 위해 배려해 주시기 바랍니다</p>
				<p class="text01"><span class="sblue">이 사이트에서 스마트폰으로는 예약 및 예약조회/변경/취소를 하실 수 없습니다.</span></p>
				<p class="text01">스마트폰으로 예약을 하시게 되면 보안 인증서가 정상적으로 적용되지 않아 비정상적으로 예약이 되실 수 있습니다.</p>
				<p class="text01">스마트폰에서는 기본적으로 플래쉬 기능을 지원하지 않기때문에 예약 조회/변경/취소 메뉴를 이용하실 수 없습니다.<br /><span class="sblue" style="font-weight:normal;">(현재 스마트폰으로 예약을 진행하시는 고객님은 중지하시고[ http://m.kobus.co.kr ] 모바일 홈페이지를 이용하시기 바랍니다.)</span></p>
				<p class="text01"><span class="sblue">계좌이체 예약을 실패(예약 조회시 예약 사항이 없을 때) </span>했을경우에는</p>
				<p class="text01">미 예약 상태이며 예약시 선택하셨던 좌석은 최소 30분간은 선택 할 수 없습니다.</p>
				<p class="text01">예약을 하실려면 다른 좌석으로 선택 또는 최소 30분후에 좌석을 선택하시면 됩니다.</p>
					
			<p class="sel_title">2014년 05월 08일 목요일 09:00출발 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	강릉    
 --&gt; <span class="sblue">
																	고양화정
</span></p>			
			
			<iframe frameborder="0" width="100%" height="30" scrolling="auto"  name="reservation01_lininfo" title="노선정보"></iframe>
			
			<form name = 'HiddenForm'>
				<input type="hidden" name= "oTer_fr" value="200" />
				<input type="hidden" name= "oTer_to" value="115" />
				<input type="hidden" name= "oTim_dte" value="20140508" />
				<input type="hidden" name= "oTim_tim" value="0900" />
				<input type="hidden" name= "oTer_sfr" value="200" />
				<input type="hidden" name= "oTer_sto" value="115" />
			</form>
			
			<script language="JavaScript">
				<!--
					fc_frame_taget();
				
				//-->
				</script>
				
			<p class="text02 black">예약하시려는 승차권 매수는 일반2매, 아동0매 입니다.<br />잔여좌석중2개의 좌석을 지정하세요.  (<input type="checkbox" name="c1" class="chformat" alt="예약 가능 좌석" title="예약 가능 좌석" /> : 예약 가능 좌석, <input type="checkbox" name="c" disabled="disabled" alt="이미 예약된 좌석" title="이미 예약된 좌석" /> : 이미 예약된 좌석)</p>
			<form name="SeatForm" method="post"  action="reservation01_3.jsp" onSubmit="return fc_Checked()">
			<fieldset>
			<legend></legend>
 
			
											
<table class="tbl_seat01" summary="일반고속 좌석표"><!-- 일반고속, 우등고속, 심야고속, 심야우등 -->
			<caption>일반고속 좌석표</caption>
			<colgroup>
				<col width="52" />
				<col width="56" />
				<col width="*" />
				<col span="11" width="43" />
				<col width="56" />
			</colgroup>
			<tbody>
			<tr>
				<td class="door" rowspan="5">앞</td>
				<td class="door" rowspan="2">출입문</td>
				<td class="nobg" rowspan="5"></td>
				<td><label for="c1">1</label> <input type="checkbox" name="c1" value ="01" alt="1" title="1" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c5">5</label> <input type="checkbox" name="c5" value ="05" alt="5" title="5" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c9">9</label> <input type="checkbox" name="c9" value ="09" alt="9" title="9" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c13">13</label> <input type="checkbox" name="c13" value ="13" alt="13" title="13" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c17">17</label> <input type="checkbox" name="c17" value ="17" alt="17" title="17" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c21">21</label> <input type="checkbox" name="c21" value ="21" alt="21" title="21" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c25">25</label> <input type="checkbox" name="c25" value ="25" alt="25" title="25" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c29">29</label> <input type="checkbox" name="c29" value ="29" alt="29" title="29" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c33">33</label> <input type="checkbox" name="c33" value ="33" alt="33" title="33" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c37">37</label> <input type="checkbox" name="c37" value ="37" alt="37" title="37" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c41">41</label> <input type="checkbox" name="c41" value ="41" alt="41" title="41" onClick="return fc_Check(this)" disabled /></td>
				<td class="door last" rowspan="5">뒤</td>
			</tr>
			<tr>
				<td><label for="c2">2</label> <input type="checkbox" name="c2" value ="02" alt="2" title="2" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c6">6</label> <input type="checkbox" name="c6" value ="06" alt="6" title="6" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c10">10</label> <input type="checkbox" name="c10" value ="10" alt="10" title="10" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c14">14</label> <input type="checkbox" name="c14" value ="14" alt="14" title="14" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c18">18</label> <input type="checkbox" name="c18" value ="18" alt="18" title="18" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c22">22</label> <input type="checkbox" name="c22" value ="22" alt="22" title="22" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c26">26</label> <input type="checkbox" name="c26" value ="26" alt="26" title="26" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c30">30</label> <input type="checkbox" name="c30" value ="30" alt="30" title="30" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c34">34</label> <input type="checkbox" name="c34" value ="34" alt="34" title="34" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c38">38</label> <input type="checkbox" name="c38" value ="38" alt="38" title="38" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c42">42</label> <input type="checkbox" name="c42" value ="42" alt="42" title="42" onClick="return fc_Check(this)" disabled /></td>
			</tr>
			<tr>
				<td class="nobg"></td>
				<td class="nobg" colspan="10">통로</td>
				<td><label for="c45">45</label> <input type="checkbox" name="c45" value ="45" alt="45" title="45" onClick="return fc_Check(this)" disabled /></td>
			</tr>
			<tr>
				<td class="door" rowspan="2">운전석</td>
				<td><label for="c3">3</label> <input type="checkbox" name="c3" value ="03" alt="3" title="3" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c7">7</label> <input type="checkbox" name="c7" value ="07" alt="7" title="7" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c11">11</label> <input type="checkbox" name="c11" value ="11" alt="11" title="11" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c15">15</label> <input type="checkbox" name="c15" value ="15" alt="15" title="15" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c19">19</label> <input type="checkbox" name="c19" value ="19" alt="19" title="19" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c23">23</label> <input type="checkbox" name="c23" value ="23" alt="23" title="23" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c27">27</label> <input type="checkbox" name="c27" value ="27" alt="27" title="27" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c31">31</label> <input type="checkbox" name="c31" value ="31" alt="31" title="31" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c35">35</label> <input type="checkbox" name="c35" value ="35" alt="35" title="35" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c39">39</label> <input type="checkbox" name="c39" value ="39" alt="39" title="39" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c43">43</label> <input type="checkbox" name="c43" value ="43" alt="43" title="43" onClick="return fc_Check(this)" disabled /></td>
			</tr>
			<tr>
				<td><label for="c4">4</label> <input type="checkbox" name="c4" value ="04" alt="4" title="4" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c8">8</label> <input type="checkbox" name="c8" value ="08" alt="8" title="8" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c12">12</label> <input type="checkbox" name="c12" value ="12" alt="12" title="12" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c16">16</label> <input type="checkbox" name="c16" value ="16" alt="16" title="16" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c20">20</label> <input type="checkbox" name="c20" value ="20" alt="20" title="20" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c24">24</label> <input type="checkbox" name="c24" value ="24" alt="24" title="24" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c28">28</label> <input type="checkbox" name="c28" value ="28" alt="28" title="28" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c32">32</label> <input type="checkbox" name="c32" value ="32" alt="32" title="32" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c36">36</label> <input type="checkbox" name="c36" value ="36" alt="36" title="36" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c40">40</label> <input type="checkbox" name="c40" value ="40" alt="40" title="40" onClick="return fc_Check(this)" disabled /></td>
				<td><label for="c44">44</label> <input type="checkbox" name="c44" value ="44" alt="44" title="44" onClick="return fc_Check(this)" disabled /></td>
			</tr>
			</tbody>
			</table>
	
							

			<input type="hidden" name= "pTim_tim" value="0900" />
			<input type="hidden" name= "pSeat_no" />
			<input type="hidden" name= "pTic_cod" value="false" />
			<input type="hidden" name= "pTer_fr" value="200" />
			<input type="hidden" name= "pTer_to" value="115" />
			<input type="hidden" name= "pBus_gra" value="2" />
			<input type="hidden" name= "pCor_cod" value="02" />
			<input type="hidden" name= "pTer_sfr" value="200" />
			<input type="hidden" name= "pTer_sto" value="115" />
			<input type="hidden" name= "pTim_dte" value="20140508" />
			<input type="hidden" name= "pCnt_100" value="2" />
			<input type="hidden" name= "pCnt_050" value="0" />
			<input type="hidden" name="pFee_100" value="16700" />
			<input type="hidden" name="pFee_050" value="8400" />
			<input type="hidden" name="pSer_num" value="0" />
			<input type="hidden" name="pCardform" value="yak" />
			<input type="hidden" name= "pSev_call" value="true" />
			
			
			</fieldset>
			</form>


			
			<p class="text02"><span class="orange">계좌이체는 홈티켓 발행이 되지 않습니다.</span> 홈티켓을 원하시면 반드시 카드예약/예매를 선택하세요.<br />본인이 아닌 <span class="orange">타인을 위한 예약은 계좌이체 예약</span>을 선택하세요.</p> 
				
			</div>
			
			<br /><br />

				<!-- 탭 -->			
				<ul class="tab_inquiry">
				<li class="tab01"><a class="on"  href="#" onclick="tabCont('payment0', 1); return false;">카드예약·예매</a></li>
				<li class="tab02"><a  href="#" onclick="tabCont('payment0',2); return false">계좌이체</a></li>
				</ul>
				<!-- //탭 -->
				<div id="payment01" class="inquiry">
				
					<p class="textInfo02"><strong class="red">* 카드정보는 128-bit SSL 암호화되어 전송되어집니다.</strong></p>
					
					<form  name="FrmCad" action="reservation01_4.jsp" method="post"  id="FrmCad" onSubmit="return fc_Select()" autocomplete="off">

					<table class="tbl_card01" summary="고속버스 홈티켓 신용카드 예매">
					<caption>고속버스 홈티켓 신용카드 예매</caption>
					<colgroup>
					<col width="115" />
					<col width="160" />
					<col width="*" />
					</colgroup>
					<tbody class="sub02">
					<tr>
						<th class="bgImg01" rowspan="5">고속버스<br />홈티켓<br />예매</th>
						<th class="lt">카드종류</th>
						<td class="last"><input type="radio" id="cardType01" name="cad_flag" value="0" tabIndex = "1" onClick="updatetitle(this.value)" checked="checked" alt="일반" title="일반" /> <label for="cardType01">일반</label>&nbsp;&nbsp;&nbsp;
							<input type="radio" id="cardType02" name="cad_flag" value="1" onClick="updatetitle(this.value)" alt="법인" title="법인" /> <label for="cardType02">법인</label></td>
					</tr>
					<tr>
						<th class="lt">카드번호 입력</th>
						<td class="last"><label><input class="ipt" type="text" name="pCAD_NO" size="16 autocomplete="off" tabIndex = "2" /></label> </td>	
					</tr>
					<tr>
						<th class="lt">카드 유효기간</th>
						<td class="last">
							<select class="ipt" name="pVIL_YEAR" title="유효기간 년도 선택" tabIndex = "3">
							<option value="" />선택

								<option value="2014" />2014

								<option value="2015" />2015

								<option value="2016" />2016

								<option value="2017" />2017

								<option value="2018" />2018

								<option value="2019" />2019

								<option value="2020" />2020

								<option value="2021" />2021

								<option value="2022" />2022

								<option value="2023" />2023

								<option value="2024" />2024

								<option value="2025" />2025

								<option value="2026" />2026

								<option value="2027" />2027

								<option value="2028" />2028

								<option value="2029" />2029

								<option value="2030" />2030

								<option value="2031" />2031

								<option value="2032" />2032

								<option value="2033" />2033

							</select> 년 &nbsp;
							<select class="ipt" name="pVIL_MONTH" title="유효기간 월 선택" tabIndex = "4">
							<option value="" />선택

								<option value="01" />1

								<option value="02" />2

								<option value="03" />3

								<option value="04" />4

								<option value="05" />5

								<option value="06" />6

								<option value="07" />7

								<option value="08" />8

								<option value="09" />9

								<option value="10" />10

								<option value="11" />11

								<option value="12" />12

							</select> 월 
						</td>	
					</tr>
					<tr>
						<th class="lt" id="lbltitle">주민번호 뒷 7자리</th>
						<td class="last"><input class="ipt" type="password" name="pUSR_JUMIN" size="7" maxlength="10" tabIndex = "5" /> <input class="btn" id="p111" type="image" tabIndex = "6" src="/images/common/btn_reser_09.gif" alt="승차권 예약*예매" title="승차권 예약/예매" /></td>	
					</tr>
					
					</tbody>
					</table>

					<input type ="hidden" name = "koreng" 	value="0" />
					<input type="hidden" name= "pTim_tim" value="0900" />
					<input type="hidden" name= "pSeat_no" />
					<input type="hidden" name= "pTic_cod" value="false" />
					<input type="hidden" name= "pTer_fr" value="200" />
					<input type="hidden" name= "pTer_to" value="115" />
					<input type="hidden" name= "pBus_gra" value="2" />
					<input type="hidden" name= "pCor_cod" value="02" />
					<input type="hidden" name= "pTer_sfr" value="200" />
					<input type="hidden" name= "pTer_sto" value="115" />
					<input type="hidden" name= "pTim_dte" value="20140508" />
					<input type="hidden" name= "pCnt_100" value="2" />
					<input type="hidden" name= "pCnt_050" value="0" />
					<input type="hidden" name="pFee_100" value="16700" />
					<input type="hidden" name="pFee_050" value="8400" />
					<input type="hidden" name="pSer_num" value="0" />
					<input type="hidden" name="pUsrCard" value="1" />
					<input type="hidden" name="pCardform" value="yak" />
					<input type="hidden" name= "pSev_call" value="true" />
					<!-- 새로 추가되는 변수 -->
					<input type = "hidden" name = "pGet_Lin" value="0" />
					<input type = "hidden" name = "pChg_Ter_To" value="000" />
					<input type = "hidden" name = "pChg_Tim_Tim" value="0000" />
					<!-- SMS, 왕복권 소요시간 추가 -->
					<input type = "hidden" name = "pLin_tim" value="180" />
					<!-- 주말주중요금구분 -->
					<input type = "hidden" name = "pExc_amt" value="24700" />
					<input type = "hidden" name = "pExm_amt" value="27100" />
					<!-- Tago연계추가 -->
					<input type = "hidden" name = "sTago_Gubun" value="A" />

					</form>
					
					<ul class="default_01" style="margin-bottom:0;">
					<li><span class="red">발권시 반드시 예약 카드 지참</span><span class="red right">* 비정상적으로 처리가 될 수 있으니 버튼을 한번만 눌러주세요.</span></li>
					<li><span class="red"><strong class="red">카드 예약은 승인(결재)작업이 아닙니다. 카드 인증작업입니다(카드사에서 승인문자를 보내주지 않습니다.) 터미널에서 발권 받으시거나 홈티켓을 하실 때 승인(결재)작업이 이루어 집니다.</strong></span></li>
					<li><span class="red"><strong class="red">예약을 시도 하신 후에 반드시 예약조회를 통해 예약내역을 확인 하셔야 합니다.</strong></span></li>
					</ul>
				
				<img style="position:relative; bottom:0; left:-22px;" class="" src="/images/common/bg_line_bottom.gif" alt="승차권 예약/예매" />
				</div>
				
				
				
				<div id="payment02" class="inquiry none">
				
					<ul class="default_01" style="margin-bottom:0;">
					<li><span class="red">계좌이체 예약(또는 취소)단계에서 회선장애, 기타 통신장애 또는 예약 오류시에도 예약(취소)여부를 꼭 확인하셔야 합니다.</span></li>
					<li><span class="red">계좌이체 예약후 승차권 발권시에는 계좌이체 예약당시 입력하신 핸드폰번호 또는 예약화면(결과페이지의 프린트물)을 소지해야만 발권이 가능합니다 (불지참시 발권불가능)</span></li>
					<li><span class="red">  특히 예약 중 계좌에서 출금이 되었어도 예약이 안되는 경우가 발생할 수도 있으니 필히 예약 후 예약조회를 하시기바랍니다.<br />
					예약은 안되고 출금만 되었을때는 1시간이내로 다시 입금이 되고  좌석은 최소 30분 후에 사용가능한 좌석이 됩니다.(경우에 따라 익일 아침에 입금 가능)  </span></li>
					<li>인터넷을 이용한 계좌이체예약취소시 즉시 예약당시의 출금계좌로 입금되나 장애 발생시 최대 한시간 입금이 지연될 수도 있습니다. </li>
					<li>최소 30분이내에 계좌이체 예약을 완료해야 합니다. (시간 경과시 계좌이체 예약 불가능)</li>
					<li><span class="red">은행 이체를 통한 예약이므로 공인 인증서가 설치되어 있어야 합니다.</span></li>
					<li><span class="red">인터넷 익스플로러(IE) 버젼이 64bit에서는 계좌이체를 진행하실 수 없습니다.</span></li>
					</ul>
					
					<textarea class="ipt" name="" style="margin:10px 0 20px; padding:10px; width:585px; height:100px;">
				1. 본 서비스의 이용과 관련하여 결제계좌 소유자의 정보는 “정보통신망이용촉진 및 정보보호등에 관한 법률” ,“신용정보의 이용 및 보호에 관한 법률”규정에 따라 타인에게 제공 또는 활용시에는 결제계좌 소유자 본인의 동의를 얻어야 하는 중요 정보임을 명백히 합니다.
				
				2. 인증확인서비스제공기관 및 제휴기관은 신청인 본인의 개인신용정보를 관계법령에 의해 철저히 관리, 보관합니다.
				
				3.본 신청인은 예약내역의 확인과 서비스 이용을 위하여 결제계좌 소유자의 성명,주민번호 등 개인의 정보를 당 서비스를 제공하는 업체(전국고속버스운송사업조합)에 제공함으로써 원활한 서비스를 제공받는데 동의합니다.
																				
					</textarea>
					
					<p class="btnBlock"><!--<strong class="orange">(은행 이체를 통한 예약이므로 공인 인증서가 설치되어 있어야 합니다.)</strong><br />-->
					<input onClick="javascript:openBankI()" type="image" src="/images/common/btn_count.gif" alt="계좌이체" title="계좌이체 예약" style="margin:10px 0;" /><br />
					(비정상적으로 처리가 될 수 있으니 버튼을 한번만 눌러주세요.)</p>
				<form name="KSPayOForm" method="post" action="reservation01_2.jsp">
				<input type="hidden" name="pTic_cod" value="false" />
				<input type="hidden" name="pSev_call" value="true" />
				<input type="hidden" name="pTim_dte" value="20140508" />
				<input type="hidden" name="pTer_fr" value="200" />
				<input type="hidden" name="pTer_to" value="115" />
				<input type="hidden" name="pTim_tim" value="0900" />
				<input type="hidden" name="pBus_gra" value="2" />
				<input type="hidden" name="pCor_cod" value="02" />
				<input type="hidden" name="pCnt_100" value="2" />
				<input type="hidden" name="pCnt_050" value="0" />
				<input type="hidden" name="pFee_100" value="16700" />
				<input type="hidden" name="pFee_050" value="8400" />
				<input type="hidden" name="pSeat_no" />
				<input type="hidden" name="pSer_num" value="0" />
				<input type="hidden" name="pCardform" value="noyak" />

				<input type="hidden" name="pTer_sfr" value="200" />
				<input type="hidden" name="pTer_sto" value="115" />
				<input type="hidden" name="pUsrCard" value="1" />
				</form>
				<img style="position:relative; bottom:0; left:-22px;" class="" src="/images/common/bg_line_bottom.gif" alt="계좌이체 예약" />
				</div>
		</div>
		<!-- //content -->

 
	</div>
	<!-- //container -->

	<!-- footer -->
	
	<h2 class="none">?????⑤?????</h2>
	<!-- footer -->
	<div id ="footer">
		<p class="footLogo"><img src="/images/common/foot_logo.gif" alt="KOBUS濡?怨?" /></p>
		<div class="address">
			<ul class="link">
			<li class="menu1"><a href="../01_info/info14.jsp " title="고속버스운송약관">怨????踰???ㅼ?댁?≪?쎄??</a></li>
			<li class="menu2"><a href="javascript:mail(1)" title="E-mail">E-mail</a></li>
			<li class="menu3"><a href="../06_introduction/introduction08.jsp" title="찾아오시는길">李얠????ㅼ?????湲?</a></li>
			</ul>		
			
			<a href="#" title="서울특별시 서초구 신반포로 190(반포동 19-4), 문의전화:02-536-6460"><img src="/images/common/bg_address.png" alt="서울특별시 서초구 신반포로 190(반포동 19-4), 문의전화:02-536-6460" /></a>
		</div>
	</div>
	<!-- //footer -->

	<!-- quick memu-->
	<div class="quick"><img src="/images/sub/banner_quick_01.gif" alt="서울특별시 서초구 신반포로 190(반포동 19-4), 문의전화:02-536-6460" /></div>
	<!-- //quick memu-->
	<!-- //footer -->

</div>
<!-- //Wrap -->
</div>
</body>
</html>

    