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
<title>KOBUS - �����ϰ� ����� ���� �ڹ���</title>
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
		alert("����/���� �¼��� ������ �ֽʽÿ�!");
		return false;
	}// if(full_seat�� ��

	var sSeat= "";

		if((document.SeatForm.c1.checked==true)&&(document.SeatForm.c1.disabled==false)){
		sSeat = sSeat + document.SeatForm.c1.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c2.checked==true)&&(document.SeatForm.c2.disabled==false)){
		sSeat = sSeat + document.SeatForm.c2.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c3.checked==true)&&(document.SeatForm.c3.disabled==false)){
		sSeat = sSeat + document.SeatForm.c3.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c4.checked==true)&&(document.SeatForm.c4.disabled==false)){
		sSeat = sSeat + document.SeatForm.c4.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c5.checked==true)&&(document.SeatForm.c5.disabled==false)){
		sSeat = sSeat + document.SeatForm.c5.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c6.checked==true)&&(document.SeatForm.c6.disabled==false)){
		sSeat = sSeat + document.SeatForm.c6.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c7.checked==true)&&(document.SeatForm.c7.disabled==false)){
		sSeat = sSeat + document.SeatForm.c7.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c8.checked==true)&&(document.SeatForm.c8.disabled==false)){
		sSeat = sSeat + document.SeatForm.c8.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c9.checked==true)&&(document.SeatForm.c9.disabled==false)){
		sSeat = sSeat + document.SeatForm.c9.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c10.checked==true)&&(document.SeatForm.c10.disabled==false)){
		sSeat = sSeat + document.SeatForm.c10.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c11.checked==true)&&(document.SeatForm.c11.disabled==false)){
		sSeat = sSeat + document.SeatForm.c11.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c12.checked==true)&&(document.SeatForm.c12.disabled==false)){
		sSeat = sSeat + document.SeatForm.c12.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c13.checked==true)&&(document.SeatForm.c13.disabled==false)){
		sSeat = sSeat + document.SeatForm.c13.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c14.checked==true)&&(document.SeatForm.c14.disabled==false)){
		sSeat = sSeat + document.SeatForm.c14.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c15.checked==true)&&(document.SeatForm.c15.disabled==false)){
		sSeat = sSeat + document.SeatForm.c15.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c16.checked==true)&&(document.SeatForm.c16.disabled==false)){
		sSeat = sSeat + document.SeatForm.c16.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c17.checked==true)&&(document.SeatForm.c17.disabled==false)){
		sSeat = sSeat + document.SeatForm.c17.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c18.checked==true)&&(document.SeatForm.c18.disabled==false)){
		sSeat = sSeat + document.SeatForm.c18.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c19.checked==true)&&(document.SeatForm.c19.disabled==false)){
		sSeat = sSeat + document.SeatForm.c19.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c20.checked==true)&&(document.SeatForm.c20.disabled==false)){
		sSeat = sSeat + document.SeatForm.c20.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c21.checked==true)&&(document.SeatForm.c21.disabled==false)){
		sSeat = sSeat + document.SeatForm.c21.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c22.checked==true)&&(document.SeatForm.c22.disabled==false)){
		sSeat = sSeat + document.SeatForm.c22.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c23.checked==true)&&(document.SeatForm.c23.disabled==false)){
		sSeat = sSeat + document.SeatForm.c23.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c24.checked==true)&&(document.SeatForm.c24.disabled==false)){
		sSeat = sSeat + document.SeatForm.c24.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c25.checked==true)&&(document.SeatForm.c25.disabled==false)){
		sSeat = sSeat + document.SeatForm.c25.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c26.checked==true)&&(document.SeatForm.c26.disabled==false)){
		sSeat = sSeat + document.SeatForm.c26.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c27.checked==true)&&(document.SeatForm.c27.disabled==false)){
		sSeat = sSeat + document.SeatForm.c27.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c28.checked==true)&&(document.SeatForm.c28.disabled==false)){
		sSeat = sSeat + document.SeatForm.c28.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c29.checked==true)&&(document.SeatForm.c29.disabled==false)){
		sSeat = sSeat + document.SeatForm.c29.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c30.checked==true)&&(document.SeatForm.c30.disabled==false)){
		sSeat = sSeat + document.SeatForm.c30.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c31.checked==true)&&(document.SeatForm.c31.disabled==false)){
		sSeat = sSeat + document.SeatForm.c31.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c32.checked==true)&&(document.SeatForm.c32.disabled==false)){
		sSeat = sSeat + document.SeatForm.c32.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c33.checked==true)&&(document.SeatForm.c33.disabled==false)){
		sSeat = sSeat + document.SeatForm.c33.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c34.checked==true)&&(document.SeatForm.c34.disabled==false)){
		sSeat = sSeat + document.SeatForm.c34.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c35.checked==true)&&(document.SeatForm.c35.disabled==false)){
		sSeat = sSeat + document.SeatForm.c35.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c36.checked==true)&&(document.SeatForm.c36.disabled==false)){
		sSeat = sSeat + document.SeatForm.c36.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c37.checked==true)&&(document.SeatForm.c37.disabled==false)){
		sSeat = sSeat + document.SeatForm.c37.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c38.checked==true)&&(document.SeatForm.c38.disabled==false)){
		sSeat = sSeat + document.SeatForm.c38.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c39.checked==true)&&(document.SeatForm.c39.disabled==false)){
		sSeat = sSeat + document.SeatForm.c39.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c40.checked==true)&&(document.SeatForm.c40.disabled==false)){
		sSeat = sSeat + document.SeatForm.c40.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c41.checked==true)&&(document.SeatForm.c41.disabled==false)){
		sSeat = sSeat + document.SeatForm.c41.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c42.checked==true)&&(document.SeatForm.c42.disabled==false)){
		sSeat = sSeat + document.SeatForm.c42.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c43.checked==true)&&(document.SeatForm.c43.disabled==false)){
		sSeat = sSeat + document.SeatForm.c43.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c44.checked==true)&&(document.SeatForm.c44.disabled==false)){
		sSeat = sSeat + document.SeatForm.c44.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c45.checked==true)&&(document.SeatForm.c45.disabled==false)){
		sSeat = sSeat + document.SeatForm.c45.value;
		document.FrmCad.pSeat_no.value = sSeat;
		document.KSPayOForm.pSeat_no.value = sSeat;

			}//if((document....�� ��


	if(d.pCAD_NO.value.length == 0 || d.pCAD_NO.value == "") {
		alert("ī���ȣ�� �Է��ϼ���");
		d.pCAD_NO.value	= "";
		d.pCAD_NO.focus();
		return false;
	} else if(d.pCAD_NO.value.length != 14 && d.pCAD_NO.value.length != 15 && d.pCAD_NO.value.length != 16) {
		alert("ī���ȣ�� 14�ڸ� �Ǵ� 16�ڸ��Դϴ�. �ٽ� �Է��ϼ���");
		d.pCAD_NO.value	= "";
		d.pCAD_NO.focus();
		return false;
	} else if(!isNum(d.pCAD_NO.value)) {
		alert("���ڸ� �Է��� �ֽʽÿ�.");
		d.pCAD_NO.value	= "";
		d.pCAD_NO.focus();
		return false;
	} else if(d.pCAD_NO.value == "9410802724620007" || d.pCAD_NO.value == "4499141114515002" || d.pCAD_NO.value == "4349760956176557" || d.pCAD_NO.value == "9440321030920101" || d.pCAD_NO.value == "9440114301525885" || d.pCAD_NO.value == "9411611938364005" || d.pCAD_NO.value == "6060453162445006" || d.pCAD_NO.value == "4481254027133126" || d.pCAD_NO.value == "9440317821385967" || d.pCAD_NO.value == "6210317825772610" || d.pCAD_NO.value == "4364200497990000" || d.pCAD_NO.value == "4155250018524153" || d.pCAD_NO.value == "4579730450771048") {
		alert("����Ͻ� �� ���� ī���Դϴ�.");
		d.pCAD_NO.value	= "";
		d.pCAD_NO.focus();
		return false;
	} else if(d.pVIL_YEAR.value.length == 0 || d.pVIL_YEAR.value == "") {
		alert("�⵵�� �����ϼ���");
		d.pVIL_YEAR.focus();
		return false;
	} else if(d.pVIL_MONTH.value.length == 0 || d.pVIL_MONTH.value == "") {
		alert("���� �����ϼ���");
		d.pVIL_MONTH.focus();
		return false;
	} else if((d.pVIL_YEAR.value <= 2014)&&(d.pVIL_MONTH.value  < 5)) {
		alert("�ſ�ī���� ��ȿ�Ⱓ�� ����Ǿ����ϴ�. Ȯ���Ͽ� �ֽʽÿ�.");
		d.pVIL_YEAR.focus();
		return false;
	} else if(d.pUSR_JUMIN.value.length == 0 || d.pUSR_JUMIN.value == "") {
		alert("�ֹ�/����ڵ�Ϲ�ȣ�� �Է��ϼ���");
		d.pUSR_JUMIN.value	= "";
		d.pUSR_JUMIN.focus();
		return false;
	} else if(radiovalue == "0") {
        for (i = 0; i < 7; i++) buf[i] = parseInt(vencod.charAt(i));
        odd = buf[1]*10 + buf[2];

        if(!(d.pUSR_JUMIN.value.length == 7)){
    		alert("�ֹι�ȣ�� 7�ڸ��Դϴ�. �ٽ� �Է��ϼ���");
    		d.pUSR_JUMIN.value	= "";
    		d.pUSR_JUMIN.focus();
    		return false;
        }
        if(!(d.pUSR_JUMIN.value.substr(0,1)==1) && !(d.pUSR_JUMIN.value.substr(0,1)==2)){

            if((odd%2 != 0) && ((buf[5] != 6) && (buf[5] != 7) && (buf[5] != 8) || (buf[5] != 9))){
        		alert("�߸��� �ֹε�� ��ȣ�Դϴ�. �ٽ� �Է��� �ֽʽÿ�.");
        		d.pUSR_JUMIN.value	= "";
        		d.pUSR_JUMIN.focus();
        		return false;
            }
	    }
	    
	    document.getElementById('p111').style.display = 'none';

    } else if (radiovalue == "1") {
        if(!(d.pUSR_JUMIN.value.length == 10)){
    		alert("����ڵ�Ϲ�ȣ�� 10�ڸ��Դϴ�. �ٽ� �Է��ϼ���");
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
            alert("�߸��� ����� ��Ϲ�ȣ �Դϴ�. �ٽ� �Է����ֽʽÿ�.");
            d.pUSR_JUMIN.value	= "";
		    d.pUSR_JUMIN.focus();
            return false;
        }
        
        document.getElementById('p111').style.display = 'none';
			
	} else if(!isNum(d.pUSR_JUMIN.value)) {
		alert("���ڸ� �Է��� �ֽʽÿ�.");
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
		document.getElementById('lbltitle').innerHTML  = "�ֹι�ȣ �� 7�ڸ�";        
        frm.pUSR_JUMIN.size = 7 ;
        frm.pUSR_JUMIN.value = "" ;
		frm.koreng.value = "0" ;
		frm.pUsrCard.value = "1" ;
    } else {
		document.getElementById('lbltitle').innerHTML  = "����ڵ�Ϲ�ȣ";    
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
		alert("����/���� �¼��� ������ �ֽʽÿ�!");
		return false;
	}// if(full_seat�� ��

	var sSeat= "";

		if((document.SeatForm.c1.checked==true)&&(document.SeatForm.c1.disabled==false)){
		sSeat = sSeat + document.SeatForm.c1.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c2.checked==true)&&(document.SeatForm.c2.disabled==false)){
		sSeat = sSeat + document.SeatForm.c2.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c3.checked==true)&&(document.SeatForm.c3.disabled==false)){
		sSeat = sSeat + document.SeatForm.c3.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c4.checked==true)&&(document.SeatForm.c4.disabled==false)){
		sSeat = sSeat + document.SeatForm.c4.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c5.checked==true)&&(document.SeatForm.c5.disabled==false)){
		sSeat = sSeat + document.SeatForm.c5.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c6.checked==true)&&(document.SeatForm.c6.disabled==false)){
		sSeat = sSeat + document.SeatForm.c6.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c7.checked==true)&&(document.SeatForm.c7.disabled==false)){
		sSeat = sSeat + document.SeatForm.c7.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c8.checked==true)&&(document.SeatForm.c8.disabled==false)){
		sSeat = sSeat + document.SeatForm.c8.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c9.checked==true)&&(document.SeatForm.c9.disabled==false)){
		sSeat = sSeat + document.SeatForm.c9.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c10.checked==true)&&(document.SeatForm.c10.disabled==false)){
		sSeat = sSeat + document.SeatForm.c10.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c11.checked==true)&&(document.SeatForm.c11.disabled==false)){
		sSeat = sSeat + document.SeatForm.c11.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c12.checked==true)&&(document.SeatForm.c12.disabled==false)){
		sSeat = sSeat + document.SeatForm.c12.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c13.checked==true)&&(document.SeatForm.c13.disabled==false)){
		sSeat = sSeat + document.SeatForm.c13.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c14.checked==true)&&(document.SeatForm.c14.disabled==false)){
		sSeat = sSeat + document.SeatForm.c14.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c15.checked==true)&&(document.SeatForm.c15.disabled==false)){
		sSeat = sSeat + document.SeatForm.c15.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c16.checked==true)&&(document.SeatForm.c16.disabled==false)){
		sSeat = sSeat + document.SeatForm.c16.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c17.checked==true)&&(document.SeatForm.c17.disabled==false)){
		sSeat = sSeat + document.SeatForm.c17.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c18.checked==true)&&(document.SeatForm.c18.disabled==false)){
		sSeat = sSeat + document.SeatForm.c18.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c19.checked==true)&&(document.SeatForm.c19.disabled==false)){
		sSeat = sSeat + document.SeatForm.c19.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c20.checked==true)&&(document.SeatForm.c20.disabled==false)){
		sSeat = sSeat + document.SeatForm.c20.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c21.checked==true)&&(document.SeatForm.c21.disabled==false)){
		sSeat = sSeat + document.SeatForm.c21.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c22.checked==true)&&(document.SeatForm.c22.disabled==false)){
		sSeat = sSeat + document.SeatForm.c22.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c23.checked==true)&&(document.SeatForm.c23.disabled==false)){
		sSeat = sSeat + document.SeatForm.c23.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c24.checked==true)&&(document.SeatForm.c24.disabled==false)){
		sSeat = sSeat + document.SeatForm.c24.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c25.checked==true)&&(document.SeatForm.c25.disabled==false)){
		sSeat = sSeat + document.SeatForm.c25.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c26.checked==true)&&(document.SeatForm.c26.disabled==false)){
		sSeat = sSeat + document.SeatForm.c26.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c27.checked==true)&&(document.SeatForm.c27.disabled==false)){
		sSeat = sSeat + document.SeatForm.c27.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c28.checked==true)&&(document.SeatForm.c28.disabled==false)){
		sSeat = sSeat + document.SeatForm.c28.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c29.checked==true)&&(document.SeatForm.c29.disabled==false)){
		sSeat = sSeat + document.SeatForm.c29.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c30.checked==true)&&(document.SeatForm.c30.disabled==false)){
		sSeat = sSeat + document.SeatForm.c30.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c31.checked==true)&&(document.SeatForm.c31.disabled==false)){
		sSeat = sSeat + document.SeatForm.c31.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c32.checked==true)&&(document.SeatForm.c32.disabled==false)){
		sSeat = sSeat + document.SeatForm.c32.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c33.checked==true)&&(document.SeatForm.c33.disabled==false)){
		sSeat = sSeat + document.SeatForm.c33.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c34.checked==true)&&(document.SeatForm.c34.disabled==false)){
		sSeat = sSeat + document.SeatForm.c34.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c35.checked==true)&&(document.SeatForm.c35.disabled==false)){
		sSeat = sSeat + document.SeatForm.c35.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c36.checked==true)&&(document.SeatForm.c36.disabled==false)){
		sSeat = sSeat + document.SeatForm.c36.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c37.checked==true)&&(document.SeatForm.c37.disabled==false)){
		sSeat = sSeat + document.SeatForm.c37.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c38.checked==true)&&(document.SeatForm.c38.disabled==false)){
		sSeat = sSeat + document.SeatForm.c38.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c39.checked==true)&&(document.SeatForm.c39.disabled==false)){
		sSeat = sSeat + document.SeatForm.c39.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c40.checked==true)&&(document.SeatForm.c40.disabled==false)){
		sSeat = sSeat + document.SeatForm.c40.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c41.checked==true)&&(document.SeatForm.c41.disabled==false)){
		sSeat = sSeat + document.SeatForm.c41.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c42.checked==true)&&(document.SeatForm.c42.disabled==false)){
		sSeat = sSeat + document.SeatForm.c42.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c43.checked==true)&&(document.SeatForm.c43.disabled==false)){
		sSeat = sSeat + document.SeatForm.c43.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c44.checked==true)&&(document.SeatForm.c44.disabled==false)){
		sSeat = sSeat + document.SeatForm.c44.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

		if((document.SeatForm.c45.checked==true)&&(document.SeatForm.c45.disabled==false)){
		sSeat = sSeat + document.SeatForm.c45.value;
		document.FrmCad.pSeat_no.value = sSeat;
document.KSPayOForm.pSeat_no.value = sSeat;
document.SeatForm.pSeat_no.value = sSeat;

			}//if((document....�� ��

	return true;
}

function fc_Check(box) {
	
	if(box.checked == true) {
		check_seat ++;
		if(full_seat < check_seat) {
			check_seat = check_seat -1;
			alert("����/���� �Ͻ� �ż��� �ʰ��Ͽ����ϴ�. ����/�����ϰ��� �Ͻô� �ż��� "+full_seat+"���Դϴ�.");
			return false;
		}//if(full...�ǳ�
		return true;
	} else {
		check_seat = check_seat -1;
	}//if(box.checked....�� ��
}

function fc_frame_taget(){
    var d = document.HiddenForm; 
    var url		= "reservation01_lininfo.jsp";
	d.action	= url;
    d.method	= "post";
    d.target	= "reservation01_lininfo";
    d.submit();

}

// ������ü ���߽����� ���ɼ��� ���̱� ���� ��� �̺�Ʈ�� ���´�.
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
		alert('���콺 ������ ��ư�� ����Ҽ� �����ϴ�.');
		return;
	}else if(navigator.appName=='Microsoft Internet Explorer'&&(event.button==2||event.button==3)) {
		alert('���콺 ������ ��ư�� ����Ҽ� �����ϴ�.');
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
			alert("�ش�뼱�� ������ü ���Ÿ� �Ͻ� �� ���� �뼱�Դϴ�. ī�忹�ุ �����մϴ�!");
			return false;
		}
		
		if(full_seat > check_seat){
			alert("����/���� �¼��� ������ �ֽʽÿ�!");
			return false;
		}// if(full_seat�� ��

	
			if((document.SeatForm.c1.checked==true)&&(document.SeatForm.c1.disabled==false)){
				sSeat = sSeat + document.SeatForm.c1.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c2.checked==true)&&(document.SeatForm.c2.disabled==false)){
				sSeat = sSeat + document.SeatForm.c2.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c3.checked==true)&&(document.SeatForm.c3.disabled==false)){
				sSeat = sSeat + document.SeatForm.c3.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c4.checked==true)&&(document.SeatForm.c4.disabled==false)){
				sSeat = sSeat + document.SeatForm.c4.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c5.checked==true)&&(document.SeatForm.c5.disabled==false)){
				sSeat = sSeat + document.SeatForm.c5.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c6.checked==true)&&(document.SeatForm.c6.disabled==false)){
				sSeat = sSeat + document.SeatForm.c6.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c7.checked==true)&&(document.SeatForm.c7.disabled==false)){
				sSeat = sSeat + document.SeatForm.c7.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c8.checked==true)&&(document.SeatForm.c8.disabled==false)){
				sSeat = sSeat + document.SeatForm.c8.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c9.checked==true)&&(document.SeatForm.c9.disabled==false)){
				sSeat = sSeat + document.SeatForm.c9.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c10.checked==true)&&(document.SeatForm.c10.disabled==false)){
				sSeat = sSeat + document.SeatForm.c10.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c11.checked==true)&&(document.SeatForm.c11.disabled==false)){
				sSeat = sSeat + document.SeatForm.c11.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c12.checked==true)&&(document.SeatForm.c12.disabled==false)){
				sSeat = sSeat + document.SeatForm.c12.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c13.checked==true)&&(document.SeatForm.c13.disabled==false)){
				sSeat = sSeat + document.SeatForm.c13.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c14.checked==true)&&(document.SeatForm.c14.disabled==false)){
				sSeat = sSeat + document.SeatForm.c14.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c15.checked==true)&&(document.SeatForm.c15.disabled==false)){
				sSeat = sSeat + document.SeatForm.c15.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c16.checked==true)&&(document.SeatForm.c16.disabled==false)){
				sSeat = sSeat + document.SeatForm.c16.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c17.checked==true)&&(document.SeatForm.c17.disabled==false)){
				sSeat = sSeat + document.SeatForm.c17.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c18.checked==true)&&(document.SeatForm.c18.disabled==false)){
				sSeat = sSeat + document.SeatForm.c18.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c19.checked==true)&&(document.SeatForm.c19.disabled==false)){
				sSeat = sSeat + document.SeatForm.c19.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c20.checked==true)&&(document.SeatForm.c20.disabled==false)){
				sSeat = sSeat + document.SeatForm.c20.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c21.checked==true)&&(document.SeatForm.c21.disabled==false)){
				sSeat = sSeat + document.SeatForm.c21.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c22.checked==true)&&(document.SeatForm.c22.disabled==false)){
				sSeat = sSeat + document.SeatForm.c22.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c23.checked==true)&&(document.SeatForm.c23.disabled==false)){
				sSeat = sSeat + document.SeatForm.c23.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c24.checked==true)&&(document.SeatForm.c24.disabled==false)){
				sSeat = sSeat + document.SeatForm.c24.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c25.checked==true)&&(document.SeatForm.c25.disabled==false)){
				sSeat = sSeat + document.SeatForm.c25.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c26.checked==true)&&(document.SeatForm.c26.disabled==false)){
				sSeat = sSeat + document.SeatForm.c26.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c27.checked==true)&&(document.SeatForm.c27.disabled==false)){
				sSeat = sSeat + document.SeatForm.c27.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c28.checked==true)&&(document.SeatForm.c28.disabled==false)){
				sSeat = sSeat + document.SeatForm.c28.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c29.checked==true)&&(document.SeatForm.c29.disabled==false)){
				sSeat = sSeat + document.SeatForm.c29.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c30.checked==true)&&(document.SeatForm.c30.disabled==false)){
				sSeat = sSeat + document.SeatForm.c30.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c31.checked==true)&&(document.SeatForm.c31.disabled==false)){
				sSeat = sSeat + document.SeatForm.c31.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c32.checked==true)&&(document.SeatForm.c32.disabled==false)){
				sSeat = sSeat + document.SeatForm.c32.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c33.checked==true)&&(document.SeatForm.c33.disabled==false)){
				sSeat = sSeat + document.SeatForm.c33.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c34.checked==true)&&(document.SeatForm.c34.disabled==false)){
				sSeat = sSeat + document.SeatForm.c34.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c35.checked==true)&&(document.SeatForm.c35.disabled==false)){
				sSeat = sSeat + document.SeatForm.c35.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c36.checked==true)&&(document.SeatForm.c36.disabled==false)){
				sSeat = sSeat + document.SeatForm.c36.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c37.checked==true)&&(document.SeatForm.c37.disabled==false)){
				sSeat = sSeat + document.SeatForm.c37.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c38.checked==true)&&(document.SeatForm.c38.disabled==false)){
				sSeat = sSeat + document.SeatForm.c38.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c39.checked==true)&&(document.SeatForm.c39.disabled==false)){
				sSeat = sSeat + document.SeatForm.c39.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c40.checked==true)&&(document.SeatForm.c40.disabled==false)){
				sSeat = sSeat + document.SeatForm.c40.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c41.checked==true)&&(document.SeatForm.c41.disabled==false)){
				sSeat = sSeat + document.SeatForm.c41.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c42.checked==true)&&(document.SeatForm.c42.disabled==false)){
				sSeat = sSeat + document.SeatForm.c42.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c43.checked==true)&&(document.SeatForm.c43.disabled==false)){
				sSeat = sSeat + document.SeatForm.c43.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c44.checked==true)&&(document.SeatForm.c44.disabled==false)){
				sSeat = sSeat + document.SeatForm.c44.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
	
			if((document.SeatForm.c45.checked==true)&&(document.SeatForm.c45.disabled==false)){
				sSeat = sSeat + document.SeatForm.c45.value;
				document.FrmCad.pSeat_no.value = sSeat;
				document.KSPayOForm.pSeat_no.value = sSeat;
			}//if((document....�� ��
		

		ofrm.submit();
   }	
	 
	function fc_Caution() {

		return true;
}
-->
</script>

</head>

<body onLoad="fc_showSeat(); ">
<h1 class="none">������ ���ࡤ����(ȨƼ��)</h1>
<!-- Skip Navi -->
<h2 class="none">�ǳʶٱ� ��ũ</h2>
<ul class="skip_link">
<li><a href="#container">����</a></li>
<li><a href="#gnb">�ֿ�޴�</a></li>
<li><a href="#footer">�ϴܸ޴�</a></li>
</ul>
<div class="bgWrap">
<!-- Wrap -->
<div id="wrapper">
 
	<!-- header -->
	
	<div id="header">
		<h1><a href="http://www.kobus.co.kr/web/main/index.jsp" title="Ȩ�̷� �̵�"><img src="/images/common/logo.png" alt="Kobus" /></a></h1>
		
		<div class="navi_area">
			<!-- topmenu -->
			<ul class="topmenu">
			<li class="menu1"><a href="http://www.kobus.co.kr/web/main/index.jsp" title="Ȩ�̷� �̵�">HOME</a></li>
			<li class="menu2"><a href="http://www.kobus.co.kr/web/07_sitemap/sitemap01.jsp" title="����Ʈ��">SITEMAP</a></li>
			<li class="menu3"><a href="#" onclick="javascript:mail(1)" title="CONTACT US">CONTACT US</a></li>
			<li class="menu4"><a href="http://www.kobus.co.kr/web/eng/index.jsp" title="ENGLISH ����Ʈ">ENGLISH</a></li>
			</ul>

			<h2 class="none">�׺���̼�</h2>
			<!-- gnb -->
			<div class="gnb">	
				<ul>
				<li><img src="/images/common/bg_gnb_first.png" alt="#" /></li>
				<li class="menu1"><a href="http://www.kobus.co.kr/web/01_info/info01.jsp" onmouseover="gnb(1);" onfocus="gnb(1);" onmouseout="gnb('off');" onblur="gnb('off');" title="�̿�ȳ�">�̿�ȳ�</a></li>
				<li class="menu2"><a href="http://www.kobus.co.kr/web/02_bus/bus01.jsp" onmouseover="gnb(2);" onfocus="gnb(2);" onmouseout="gnb('off');" onblur="gnb('off');" title="������������">������������</a></li>
				<li class="menu3"><a href="http://www.kobus.co.kr/web/03_reservation/reservation01.jsp" onmouseover="gnb(3);" onfocus="gnb(3);" onmouseout="gnb('off');" onblur="gnb('off');" title="�����ǿ���.����">�����ǿ���.����</a></li>
				<li class="menu4"><a href="https://www.kobus.co.kr/web/04_inquiry/inquiry01.jsp" onmouseover="gnb(4);" onfocus="gnb(4);" onmouseout="gnb('off');" onblur="gnb('off');" title="������ȸ">������ȸ</a></li>
				<li class="menu5"><a href="http://www.kobus.co.kr/web/05_customer/customer02.jsp" onmouseover="gnb(5);" onfocus="gnb(5);" onmouseout="gnb('off');" onblur="gnb('off');" title="���ǼҸ�">���ǼҸ�</a></li>
				<li class="menu6"><a href="http://www.kobus.co.kr/web/06_introduction/introduction01.jsp" onmouseover="gnb(6);" onfocus="gnb(6);" onmouseout="gnb('off');" onblur="gnb('off');" title="������ӹ�����ۻ������">������ӹ�����ۻ������</a></li>
				<li><img src="/images/common/bg_gnb_end.png" alt="#" /></li>
				</ul>
			</div>
			<div class="smenuBox">
				<ul class="menu01 none" onmouseover="gnb(1);" onfocus="gnb(1);" onmouseout="gnb('off');" onblur="gnb('off');">
				<li><img src="/images/common/bg_smenu_first.png" alt="" /></li>
				<li class="smenu1"><a href="http://www.kobus.co.kr/web/01_info/info01.jsp" title="��ӹ��� ��������">��ӹ��� ��������</a></li>
				<li class="smenu2"><a href="http://www.kobus.co.kr/web/01_info/info16.jsp" title="��ӹ��� ȨƼ��">��ӹ��� ȨƼ��</a></li>
				<li class="smenu3"><a href="http://www.kobus.co.kr/web/01_info/info02.jsp" title="������ ����">������ ����</a></li>
				<li class="smenu4"><a href="http://www.kobus.co.kr/web/01_info/info03.jsp" title="��ݰ��� �� ������">��ݰ��� �� ������</a></li>
				<li class="smenu6"><a href="http://www.kobus.co.kr/web/01_info/info05.jsp" title="ARS�̿�ȳ�">ARS�̿�ȳ�</a></li>
				<li class="smenu7"><a href="http://www.kobus.co.kr/web/01_info/info06.jsp" title="���� �Ҹ�">���� �Ҹ�</a></li>
				<li class="smenu8"><a href="http://www.kobus.co.kr/web/01_info/info07.jsp" title="����޴�">����޴�</a></li>
				<li><img src="/images/common/bg_smenu_end.png" alt="" /></li>
				</ul>

				<ul class="menu03 none" onmouseover="gnb(3);" onfocus="gnb(3);" onmouseout="gnb('off');" onblur="gnb('off');">
				<li><img src="/images/common/bg_smenu_first.png" alt="" /></li>
				<li class="smenu1"><a href="http://www.kobus.co.kr/web/03_reservation/reservation01.jsp" title="�����ǿ���.����">�����ǿ���.����</a></li>
				<li class="smenu2"><a href="https://www.kobus.co.kr/web/04_inquiry/inquiry01.jsp" title="������ȸ/����/���">������ȸ/����/���&amp;ȨƼ����ȸ/����/�����/���</a></li>
				<li class="smenu3"><a href="https://home.kobus.co.kr/web/10_HomeTicketSearch/HomeTckTax.jsp" title="ȨƼ�� ������ ����">ȨƼ�� ������ ����</a></li>
				<li><img src="/images/common/bg_smenu_end.png" alt="" /></li>
				</ul>

				<ul class="menu05 none" onmouseover="gnb(5);" onfocus="gnb(5);" onmouseout="gnb('off');" onblur="gnb('off');">
				<li><img src="/images/common/bg_smenu_first.png" alt="" /></li>
				<li class="smenu1"><a href="http://www.kobus.co.kr/web/05_customer/customer01_main.jsp" title="������ϱ�">������ϱ�</a></li>
				<li class="smenu2"><a href="http://www.kobus.co.kr/web/05_customer/customer02.jsp" title="�����ϴ� ����">�����ϴ� ����</a></li>
				<li class="smenu4"><a href="http://www.kobus.co.kr/web/05_customer/customer04.jsp" title="���ǹ� ����">���ǹ� ����</a></li>
				<li><img src="/images/common/bg_smenu_end.png" alt="" /></li>
				</ul>

				<ul class="menu06 none" onmouseover="gnb(6);" onfocus="gnb(6);" onmouseout="gnb('off');" onblur="gnb('off');">
				<li><img src="/images/common/bg_smenu_first.png" alt="" /></li>
				<li class="smenu1"><a href="http://www.kobus.co.kr/web/06_introduction/introduction01.jsp" title="�̻��� �λ縻">�̻��� �λ縻</a></li>
				<li class="smenu2"><a href="http://www.kobus.co.kr/web/06_introduction/introduction02.jsp" title="���տ���">���տ���</a></li>
				<li class="smenu3"><a href="http://www.kobus.co.kr/web/06_introduction/introduction03.jsp" title="�������� �� ���">�������� �� ���</a></li>
				<li class="smenu4"><a href="http://www.kobus.co.kr/web/06_introduction/introduction04.jsp" title="������">������</a></li>
				<li class="smenu5"><a href="http://www.kobus.co.kr/web/06_introduction/introduction05.jsp" title="ȸ������Ȳ">ȸ������Ȳ</a></li>
				<li class="smenu6"><a href="http://www.kobus.co.kr/web/06_introduction/introduction06.jsp" title="�˸�����">�˸�����</a></li>
				<li class="smenu7"><a href="http://www.kobus.co.kr/web/06_introduction/introduction08.jsp" title="ã�ƿ��ô� ��">ã�ƿ��ô� ��</a></li>
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

 	<h2 class="none">����</h2>
 		<div class="sub_visual">
 			<p class="none">�����ϰ� ����� ��ӹ���</p>
 		</div>
		<!-- content -->
		<div class="content">
		<img class="line" src="/images/sub/bg_right_01.gif" alt="" />
 			<div class="sub_title">
  			<h3><img src="/images/sub/h3_reservation_01.gif" alt="������ ���ࡤ����(ȨƼ��)" /></h3>
  				<p class="dir"><a href=""><img src="/images/sub/icon_home.gif" alt="home" /></a> &gt; <a href="reservation01.jsp">������ ���ࡤ����</a> &gt; <a class="new" href="reservation01_2.jsp">�¼�����&amp;ī�������Է�</a></p>
 			</div>
 			<!-- ���������� -->
			<div class="contbox box_reservation_02">
				<p class="text_img"><img src="/images/sub/bg_text03.gif" alt="�Ʒ��� ��ӹ��� �¼� ��ġ���� ��κ��� ��ӹ����� ���� �ִ°��� �����ݴϴ�.
���� �¿����� �ٲ� �Ϻ� ��ӹ����� ��� ���⼭ �������� ��ġ���� ���� ��ӹ����� �¼���ġ���� �ٸ�����
������ �˷��帳�ϴ�." /></p>
				
				<p class="text01"><span class="sblue">�ɾ� �ð��� ��������� 1������ 9�� �¼������� ������ �� ����ڸ� ���� �¼����� ��ǰ� �ֽ��ϴ�.</span></p>
				<p class="text01">���� ���ڸ� ���� ����� �ֽñ� �ٶ��ϴ�</p>
				<p class="text01"><span class="sblue">�� ����Ʈ���� ����Ʈ�����δ� ���� �� ������ȸ/����/��Ҹ� �Ͻ� �� �����ϴ�.</span></p>
				<p class="text01">����Ʈ������ ������ �Ͻð� �Ǹ� ���� �������� ���������� ������� �ʾ� ������������ ������ �ǽ� �� �ֽ��ϴ�.</p>
				<p class="text01">����Ʈ�������� �⺻������ �÷��� ����� �������� �ʱ⶧���� ���� ��ȸ/����/��� �޴��� �̿��Ͻ� �� �����ϴ�.<br /><span class="sblue" style="font-weight:normal;">(���� ����Ʈ������ ������ �����Ͻô� ������ �����Ͻð�[ http://m.kobus.co.kr ] ����� Ȩ�������� �̿��Ͻñ� �ٶ��ϴ�.)</span></p>
				<p class="text01"><span class="sblue">������ü ������ ����(���� ��ȸ�� ���� ������ ���� ��) </span>������쿡��</p>
				<p class="text01">�� ���� �����̸� ����� �����ϼ̴� �¼��� �ּ� 30�а��� ���� �� �� �����ϴ�.</p>
				<p class="text01">������ �ϽǷ��� �ٸ� �¼����� ���� �Ǵ� �ּ� 30���Ŀ� �¼��� �����Ͻø� �˴ϴ�.</p>
					
			<p class="sel_title">2014�� 05�� 08�� ����� 09:00��� &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	����    
 --&gt; <span class="sblue">
																	���ȭ��
</span></p>			
			
			<iframe frameborder="0" width="100%" height="30" scrolling="auto"  name="reservation01_lininfo" title="�뼱����"></iframe>
			
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
				
			<p class="text02 black">�����Ͻ÷��� ������ �ż��� �Ϲ�2��, �Ƶ�0�� �Դϴ�.<br />�ܿ��¼���2���� �¼��� �����ϼ���.  (<input type="checkbox" name="c1" class="chformat" alt="���� ���� �¼�" title="���� ���� �¼�" /> : ���� ���� �¼�, <input type="checkbox" name="c" disabled="disabled" alt="�̹� ����� �¼�" title="�̹� ����� �¼�" /> : �̹� ����� �¼�)</p>
			<form name="SeatForm" method="post"  action="reservation01_3.jsp" onSubmit="return fc_Checked()">
			<fieldset>
			<legend></legend>
 
			
											
<table class="tbl_seat01" summary="�Ϲݰ�� �¼�ǥ"><!-- �Ϲݰ��, �����, �ɾ߰��, �ɾ߿�� -->
			<caption>�Ϲݰ�� �¼�ǥ</caption>
			<colgroup>
				<col width="52" />
				<col width="56" />
				<col width="*" />
				<col span="11" width="43" />
				<col width="56" />
			</colgroup>
			<tbody>
			<tr>
				<td class="door" rowspan="5">��</td>
				<td class="door" rowspan="2">���Թ�</td>
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
				<td class="door last" rowspan="5">��</td>
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
				<td class="nobg" colspan="10">���</td>
				<td><label for="c45">45</label> <input type="checkbox" name="c45" value ="45" alt="45" title="45" onClick="return fc_Check(this)" disabled /></td>
			</tr>
			<tr>
				<td class="door" rowspan="2">������</td>
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


			
			<p class="text02"><span class="orange">������ü�� ȨƼ�� ������ ���� �ʽ��ϴ�.</span> ȨƼ���� ���Ͻø� �ݵ�� ī�忹��/���Ÿ� �����ϼ���.<br />������ �ƴ� <span class="orange">Ÿ���� ���� ������ ������ü ����</span>�� �����ϼ���.</p> 
				
			</div>
			
			<br /><br />

				<!-- �� -->			
				<ul class="tab_inquiry">
				<li class="tab01"><a class="on"  href="#" onclick="tabCont('payment0', 1); return false;">ī�忹�ࡤ����</a></li>
				<li class="tab02"><a  href="#" onclick="tabCont('payment0',2); return false">������ü</a></li>
				</ul>
				<!-- //�� -->
				<div id="payment01" class="inquiry">
				
					<p class="textInfo02"><strong class="red">* ī�������� 128-bit SSL ��ȣȭ�Ǿ� ���۵Ǿ����ϴ�.</strong></p>
					
					<form  name="FrmCad" action="reservation01_4.jsp" method="post"  id="FrmCad" onSubmit="return fc_Select()" autocomplete="off">

					<table class="tbl_card01" summary="��ӹ��� ȨƼ�� �ſ�ī�� ����">
					<caption>��ӹ��� ȨƼ�� �ſ�ī�� ����</caption>
					<colgroup>
					<col width="115" />
					<col width="160" />
					<col width="*" />
					</colgroup>
					<tbody class="sub02">
					<tr>
						<th class="bgImg01" rowspan="5">��ӹ���<br />ȨƼ��<br />����</th>
						<th class="lt">ī������</th>
						<td class="last"><input type="radio" id="cardType01" name="cad_flag" value="0" tabIndex = "1" onClick="updatetitle(this.value)" checked="checked" alt="�Ϲ�" title="�Ϲ�" /> <label for="cardType01">�Ϲ�</label>&nbsp;&nbsp;&nbsp;
							<input type="radio" id="cardType02" name="cad_flag" value="1" onClick="updatetitle(this.value)" alt="����" title="����" /> <label for="cardType02">����</label></td>
					</tr>
					<tr>
						<th class="lt">ī���ȣ �Է�</th>
						<td class="last"><label><input class="ipt" type="text" name="pCAD_NO" size="16 autocomplete="off" tabIndex = "2" /></label> </td>	
					</tr>
					<tr>
						<th class="lt">ī�� ��ȿ�Ⱓ</th>
						<td class="last">
							<select class="ipt" name="pVIL_YEAR" title="��ȿ�Ⱓ �⵵ ����" tabIndex = "3">
							<option value="" />����

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

							</select> �� &nbsp;
							<select class="ipt" name="pVIL_MONTH" title="��ȿ�Ⱓ �� ����" tabIndex = "4">
							<option value="" />����

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

							</select> �� 
						</td>	
					</tr>
					<tr>
						<th class="lt" id="lbltitle">�ֹι�ȣ �� 7�ڸ�</th>
						<td class="last"><input class="ipt" type="password" name="pUSR_JUMIN" size="7" maxlength="10" tabIndex = "5" /> <input class="btn" id="p111" type="image" tabIndex = "6" src="/images/common/btn_reser_09.gif" alt="������ ����*����" title="������ ����/����" /></td>	
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
					<!-- ���� �߰��Ǵ� ���� -->
					<input type = "hidden" name = "pGet_Lin" value="0" />
					<input type = "hidden" name = "pChg_Ter_To" value="000" />
					<input type = "hidden" name = "pChg_Tim_Tim" value="0000" />
					<!-- SMS, �պ��� �ҿ�ð� �߰� -->
					<input type = "hidden" name = "pLin_tim" value="180" />
					<!-- �ָ����߿�ݱ��� -->
					<input type = "hidden" name = "pExc_amt" value="24700" />
					<input type = "hidden" name = "pExm_amt" value="27100" />
					<!-- Tago�����߰� -->
					<input type = "hidden" name = "sTago_Gubun" value="A" />

					</form>
					
					<ul class="default_01" style="margin-bottom:0;">
					<li><span class="red">�߱ǽ� �ݵ�� ���� ī�� ����</span><span class="red right">* ������������ ó���� �� �� ������ ��ư�� �ѹ��� �����ּ���.</span></li>
					<li><span class="red"><strong class="red">ī�� ������ ����(����)�۾��� �ƴմϴ�. ī�� �����۾��Դϴ�(ī��翡�� ���ι��ڸ� �������� �ʽ��ϴ�.) �͹̳ο��� �߱� �����ðų� ȨƼ���� �Ͻ� �� ����(����)�۾��� �̷�� ���ϴ�.</strong></span></li>
					<li><span class="red"><strong class="red">������ �õ� �Ͻ� �Ŀ� �ݵ�� ������ȸ�� ���� ���೻���� Ȯ�� �ϼž� �մϴ�.</strong></span></li>
					</ul>
				
				<img style="position:relative; bottom:0; left:-22px;" class="" src="/images/common/bg_line_bottom.gif" alt="������ ����/����" />
				</div>
				
				
				
				<div id="payment02" class="inquiry none">
				
					<ul class="default_01" style="margin-bottom:0;">
					<li><span class="red">������ü ����(�Ǵ� ���)�ܰ迡�� ȸ�����, ��Ÿ ������ �Ǵ� ���� �����ÿ��� ����(���)���θ� �� Ȯ���ϼž� �մϴ�.</span></li>
					<li><span class="red">������ü ������ ������ �߱ǽÿ��� ������ü ������ �Է��Ͻ� �ڵ�����ȣ �Ǵ� ����ȭ��(����������� ����Ʈ��)�� �����ؾ߸� �߱��� �����մϴ� (�������� �߱ǺҰ���)</span></li>
					<li><span class="red">  Ư�� ���� �� ���¿��� ����� �Ǿ�� ������ �ȵǴ� ��찡 �߻��� ���� ������ ���� ���� �� ������ȸ�� �Ͻñ�ٶ��ϴ�.<br />
					������ �ȵǰ� ��ݸ� �Ǿ������� 1�ð��̳��� �ٽ� �Ա��� �ǰ�  �¼��� �ּ� 30�� �Ŀ� ��밡���� �¼��� �˴ϴ�.(��쿡 ���� ���� ��ħ�� �Ա� ����)  </span></li>
					<li>���ͳ��� �̿��� ������ü������ҽ� ��� �������� ��ݰ��·� �Աݵǳ� ��� �߻��� �ִ� �ѽð� �Ա��� ������ ���� �ֽ��ϴ�. </li>
					<li>�ּ� 30���̳��� ������ü ������ �Ϸ��ؾ� �մϴ�. (�ð� ����� ������ü ���� �Ұ���)</li>
					<li><span class="red">���� ��ü�� ���� �����̹Ƿ� ���� �������� ��ġ�Ǿ� �־�� �մϴ�.</span></li>
					<li><span class="red">���ͳ� �ͽ��÷η�(IE) ������ 64bit������ ������ü�� �����Ͻ� �� �����ϴ�.</span></li>
					</ul>
					
					<textarea class="ipt" name="" style="margin:10px 0 20px; padding:10px; width:585px; height:100px;">
				1. �� ������ �̿�� �����Ͽ� �������� �������� ������ ��������Ÿ��̿����� �� ������ȣ� ���� ������ ,���ſ������� �̿� �� ��ȣ�� ���� ������������ ���� Ÿ�ο��� ���� �Ǵ� Ȱ��ÿ��� �������� ������ ������ ���Ǹ� ���� �ϴ� �߿� �������� ����� �մϴ�.
				
				2. ����Ȯ�μ���������� �� ���ޱ���� ��û�� ������ ���νſ������� ������ɿ� ���� ö���� ����, �����մϴ�.
				
				3.�� ��û���� ���೻���� Ȯ�ΰ� ���� �̿��� ���Ͽ� �������� �������� ����,�ֹι�ȣ �� ������ ������ �� ���񽺸� �����ϴ� ��ü(������ӹ�����ۻ������)�� ���������ν� ��Ȱ�� ���񽺸� �����޴µ� �����մϴ�.
																				
					</textarea>
					
					<p class="btnBlock"><!--<strong class="orange">(���� ��ü�� ���� �����̹Ƿ� ���� �������� ��ġ�Ǿ� �־�� �մϴ�.)</strong><br />-->
					<input onClick="javascript:openBankI()" type="image" src="/images/common/btn_count.gif" alt="������ü" title="������ü ����" style="margin:10px 0;" /><br />
					(������������ ó���� �� �� ������ ��ư�� �ѹ��� �����ּ���.)</p>
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
				<img style="position:relative; bottom:0; left:-22px;" class="" src="/images/common/bg_line_bottom.gif" alt="������ü ����" />
				</div>
		</div>
		<!-- //content -->

 
	</div>
	<!-- //container -->

	<!-- footer -->
	
	<h2 class="none">?????��?????</h2>
	<!-- footer -->
	<div id ="footer">
		<p class="footLogo"><img src="/images/common/foot_logo.gif" alt="KOBUS�?�?" /></p>
		<div class="address">
			<ul class="link">
			<li class="menu1"><a href="../01_info/info14.jsp " title="��ӹ�����۾��">�????�???��?��?��?��??</a></li>
			<li class="menu2"><a href="javascript:mail(1)" title="E-mail">E-mail</a></li>
			<li class="menu3"><a href="../06_introduction/introduction08.jsp" title="ã�ƿ��ô±�">찾�????��?????�?</a></li>
			</ul>		
			
			<a href="#" title="����Ư���� ���ʱ� �Ź����� 190(������ 19-4), ������ȭ:02-536-6460"><img src="/images/common/bg_address.png" alt="����Ư���� ���ʱ� �Ź����� 190(������ 19-4), ������ȭ:02-536-6460" /></a>
		</div>
	</div>
	<!-- //footer -->

	<!-- quick memu-->
	<div class="quick"><img src="/images/sub/banner_quick_01.gif" alt="����Ư���� ���ʱ� �Ź����� 190(������ 19-4), ������ȭ:02-536-6460" /></div>
	<!-- //quick memu-->
	<!-- //footer -->

</div>
<!-- //Wrap -->
</div>
</body>
</html>

    