<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<meta http-equiv="X-UA-Compatible" content="IE=Edge" />

<title>�����ǿ����Դϴ�.</title>
<link href="/newweb/common/css/main.css" rel="stylesheet"
	type="text/css" />
<script src="/newweb/Scripts/swfobject_modified.js"
	type="text/javascript"></script>
<script src="/newweb/common/js/jquery-1.4.4.min.js"
	type="text/javascript"></script>
<script src="/newweb/common/js/jquery.form.2.34.js"
	type="text/javascript"></script>
<script src="/newweb/common/js/jquery.blockUI.js" type="text/javascript"></script>
<script src="/newweb/common/js/ibits_common.js" type="text/javascript"></script>
<script src="https://npg.tgcorp.com/dlp/js/npgIF.js"></script>
<!-- �ʼ� -->
<script language="javascript" type="text/javascript">
var juminArr = new Array() ;
setJuminArr();
function setJuminArr(){
	var index = 0;
	for(i=0;i<10;i++){
		for (j=0;j<10;j++){
			for (k=0;k<2;k++){
				for (l=0;l<3;l++){
					for (m=0;m<4;m++){
						for (n=0;n<10;n++){
							if((k==0 && l==0) || (m==0 && n==0) || (m==3 && n>1)) {
							}
							else
							{
								juminArr[index] = i+""+j+""+k+""+l+""+m+""+n;
								index++;
							}
						}
					}
				}
			}
		}
	}
}

function chkJumin(val)
{
	var str = '20'+val;
	return common_Date_Chk_NoMsg(str);
}


/*
function reqPayment() {

	setSmode(); // ���� �׽�Ʈ�� ���� �Լ� (Smode_tmp->Smode)
	initValue();
	var form = document.payform;
	//alert($('#seatNos').val());
    PAY_REQUEST(form);
}
*/
/**
    �ŷ��ð��� ���ǻ� ������ PC �ð��� ����մϴ�.
    �����δ� ���θ� ������ �ð��� ����ؾ� �մϴ�.
*/

function setTxTime() {
    var time  = new Date();
    var year  = time.getYear() + "";
    var month = time.getMonth()+1;
    var date  = time.getDate();
    var hour  = time.getHours();
    var min   = time.getMinutes();
    var sec   = time.getSeconds();
    if(month<10) month = "0" + month;
    if(date<10) date = "0" + date;
    if(hour<10) hour = "0" + hour;
    if(min<10) min = "0" + min;
    if(sec<10) sec = "0" + sec;
    return year + month + date + hour + min + sec;
}

/**
    �ŷ���ȣ(MxIssueNO), �ŷ��Ͻ�(MxIssueDate) ���� ����
    ���������� ���ǻ� �ŷ��ð��� �ŷ���ȣ�� ����մϴ�.
    �����δ� ���θ��� ���� �ֹ���ȣ�� ����ؾ� �մϴ�.
*/
function initValue() {

  	var tmp = "20140508000200";
  // alert(tmp);
  //  document.payform.MxIssueNO.value = "TEST_"+tmp;
    document.payform.MxIssueDate.value = tmp;
}

/**
    ���� �׽�Ʈ�� ����, ������ ���� ���� ��(Smode_tmp)�� Smode�� ����
    ������, Smode1 ~ Smode8�� hidden���� ����
*/
function setSmode() {
    document.payform.Smode.value = "3001";
   /* document.payform.Smode1.value = document.payform.Smode_tmp1.value;
    document.payform.Smode2.value = document.payform.Smode_tmp2.value;
    document.payform.Smode3.value = document.payform.Smode_tmp3.value;
    document.payform.Smode4.value = document.payform.Smode_tmp4.value;
    document.payform.Smode5.value = document.payform.Smode_tmp5.value;
    document.payform.Smode6.value = document.payform.Smode_tmp6.value;
    document.payform.Smode7.value = document.payform.Smode_tmp7.value;
    document.payform.Smode8.value = document.payform.Smode_tmp8.value;*/
}

var chkCnt=0;
var seatNo = "";
var seatNos = "";
$(document).ready(function(){

	var intAdults = "1";
	var intStudent = "0";
	var intChildren = "0";
	var intAdultspay = "14700";
	var intStudentpay = "11800";
	var intChildrenpay = "7400";

	if( (intStudent > '0' && parseInt(intStudent,10)*parseInt( intAdultspay,10)<=0) || (intStudent > '0' && parseInt(intStudent,10)*parseInt( intStudentpay,10)<=0) || (intChildren > '0' && parseInt(intChildren,10)*parseInt( intChildrenpay,10)<=0) ) {
		alert("�ش�뼱�� ����� ���� ���Ÿ� ������ �� �����ϴ�.\n�ش��͹̳ο� ���ǹٶ��ϴ�.");
		location.href="http://www.bustago.or.kr/newweb";
	}

	// �ѱ�ó�� �߰� 20111015
	var ustr = $('#uname').val();
	if( ustr.length > 10 ){
		ustr = fncDeCode($('#uname').val());
	}
	$('#uname').val(ustr);

   // 20120424 ���꽺��, �ŷʿ��� ��� �߱ǽ� ī�� �������� ���� 20121004 ��� �߰�
	if($('#sterCode').val() == '4294' || $('#sterCode').val() == '4115' || $('#sterCode').val() == '1782'){
		var strtemp = $('#sterName').val();
		$('#div_exception').html($('#exception').html('<br/><font color="red">�� '+strtemp+'���� �߱��Ͻô� ��� �ݵ�� ������ ����� ī�带 �����ϼž� �մϴ�.</font>'));
	}else{
		$('#div_exception').hide();
	}

	//�����ܰ�
	$('#backBtn').click(function(){
		var tempstr = $('#uname').val();
		$('#uname').val(fncEnCode(tempstr));

		$('#frmSubmit').attr('action','step03.jsp');
		$('#frmSubmit').submit();
	});

	//�����ܰ�
	$('#subBtn').click(function(){
		if(chkCnt < $('#totCnt').val() ){
			alert($('#totCnt').val()-chkCnt+' ���� �¼��� ���õ��� �ʾҽ��ϴ�');
			return false;
		}
		$('#seatNo').val(seatNo);

		var pattern = /[^0-9]/;
		if($('#uname').val()==""){
			alert('������ �Է����ּ���');
			$('#uname').focus();
			return false;
		}
		if($('#jumin').val()==""){
			alert('������� ��6�ڸ��� �Է����ּ���');
			$('#jumin').focus();
			return false;
		}
		if(pattern.test($('#jumin').val())){
			alert('��������� ���ڸ� �Է°����մϴ�');
			$('#hp1').focus();
			return false;
		}

		if (!chkJumin($('#jumin').val())) {
			alert('��������� �ùٸ��� �ʽ��ϴ�');
			$('#jumin').focus();
			return false;
		}

		if($('#hp1').val()=="" || $('#hp2').val()=="" || $('#hp3').val()==""){
			alert('��ȭ��ȣ�� Ȯ�����ּ���');
			$('#hp1').focus();
			return false;
		}
		if(pattern.test($('#hp1').val())){
			alert('����ó�� ���ڸ� �Է°����մϴ�');
			$('#hp1').focus();
			return false;
		}
		if(pattern.test($('#hp2').val())){
			alert('����ó�� ���ڸ� �Է°����մϴ�');
			$('#hp2').focus();
			return false;
		}
		if(pattern.test($('#hp3').val())){
			alert('����ó�� ���ڸ� �Է°����մϴ�');
			$('#hp3').focus();
			return false;
		}
/*
		if($('#email1').val()==""){
			alert('�̸����� �Է��ϼ���');
			$('#email1').focus();
			return false;
		}
		if($('#email2').val()==""){
			alert('�̸����� �Է��ϼ���');
			$('#email2').focus();
			return false;
        }
		pattern = /([0-9a-zA-Z_-]+)/;
		if (!pattern.test($('#email1').val())){
			alert('�߸��� �̸��� �����Դϴ�');
			$('#email1').focus();
			return false;
		}
		pattern = /([0-9a-zA-Z_-]+)\.([0-9a-zA-Z_-]+)/;
		if (!pattern.test($('#email2').val())){
			alert('�߸��� �̸��� �����Դϴ�');
			$('#email2').focus();
			return false;
		}
*/
		if($('#chkb').attr('checked')==false){
			alert('���� �ϼž߸� ���Ű� �����մϴ�.');
			return false;
		}

		var tempstr = "���Ÿ� ���� �Ͻðڽ��ϱ�?";
		if($('#selWay').val() == 2){
			tempstr = "�պ� ���Ÿ� �����ϼ̽��ϴ�.\n���Ÿ� ��� ���� �Ͻðڽ��ϱ�?";
		}

		if(confirm("�����Ͻ� �¼��� ǥ�õ� �Ͱ� ���� ��ġ�� �ٸ� �� �ֽ��ϴ�.\n"+tempstr)){
			$("#CcNameOnCard").val($('#uname').val());
			$("#PhoneNO").val($('#hp1').val()+$('#hp2').val()+$('#hp3').val());
			$('#email').val($('#email1').val()+"@"+$('#email2').val());
			setSessionSeat($('#seatNos').val());
		}
	});

	//�뼱��
	getBusLine();

	//�¼� ��ġ
	getSeatState();
});

//�뼱��
function getBusLine(){
	var sURL = "/newweb/advance/order.do";
	$('#mode').val("getLine");

	var sCnt = 0;
	var lineHtml = "";
	var minute = 0;
	var km = 0;
	var eterCode = "1012";
	$.unblockUI({});

	var opt = {
			url          : sURL
			,contentType : "application/x-www-form-urlencoded;charset=UTF-8"
			,type        : "post"
			,dataType    : "json"
			,success     : function(data, status) {
				lineHtml = $('#sterName').val();
				$.each(data.list, function(index, entry) {
					lineHtml += " �� "+entry["arr_ter_nm"];
					if(eterCode==entry["eterCode"]){
						minute = entry["dist_time"];
						km = entry["distance"];
					}
					sCnt ++;
				});

				$('#busLine').html(lineHtml);
				$('#mkm').html(minute+"��  /  "+km+"km");

			}
		};

	$("#frmSubmit").ajaxSubmit(opt);
}

//�¼� ����
function getSeatState(){
	var sURL = "/newweb/advance/order.do";
	$('#mode').val("getOrder2");	// 20111010 �ּ�ȣ �¼���ġ ���� ȣ�� ���ν����� ����
	var sCnt = 0;
	var lineHtml = "";
	var status = "";

	var i = 0;
	var j = 0;

	var statusArr = new Array();
	var statusLen = 0;
	$.unblockUI({});

	var seatcode = "";
	var totseat = "";

	var opt = {
			url          : sURL
			,contentType : "application/x-www-form-urlencoded;charset=UTF-8"
			,type        : "post"
			,dataType    : "json"
			,success     : function(data, status) {
				$.each(data.list, function(index, entry) {
					//if(index == 0){
					if(entry["routeCode"] == '202051101201' && entry["stime"] == '0730' && entry["sdate"] == '20140508'){
						status = entry["seat_status"];
						seatcode = entry["seat_code"];
						totseat = entry["totSeat"];
					}
					sCnt ++;
				});

				// �����¼���ġ�� - 20111107
				// TOT_SEAT_CNT �÷��� �ֿ켱 �������� �¼���ġ�� �ۼ�
				// 28�� default
				var seat_type_code_1 = "020103,050406,080709,111012,141315,171618,201921,232224,26252827";
				// 31�� default
				var seat_type_code_5 = "020103,050406,080709,111012,141315,171618,201921,232224,262527,29283130";
				// 41�� default
				var seat_type_code_g = "04030201,08070605,12111009,16151413,20191817,24232221,28272625,32313029,36353433,4140393837";
				// 45�� default
				var seat_type_code_a = "04030201,08070605,12111009,16151413,20191817,24232221,28272625,32313029,36353433,40393837,4544434241";
				// 37�� default
				var seat_type_code_p = "04030201,08070605,12111009,16151413,20191817,24232221,28272625,32313029,3736353433";

				// 20120313 �ּ�ȣ �¼�Ÿ�� r �߰�
				if( "0201-1-103,0504-1-106,0807-1-109,1110-1-112,1413-1-115,1716-11918,2120-12322,2524-12726,2928-13130,3332-13534" == seatcode ){
					seat_type_code_g = "0201-103,0504-106,0807-109,1110-112,1413-115,17161918,21202322,25242726,29283130,33323534";
				}

				var seat_cnt = 0;
				if( seatcode != "" && seatcode != null ){
					seat_cnt = seatcode.replace(/,/gi,"").length / 2;			//�¼���
				}

				var flag_row = "";

				var status_len = status.length;
				if( seatcode == null ){
					seatcode = "";
				}
				var seatcode_len = seatcode.length;
				var ing = 0;

				if( seat_cnt != totseat ){
					seatcode = "";
				}

				if( seatcode_len == 0 || seatcode == "" || seatcode == null ){
					if(totseat < status_len ){
						status = status.substring(0,totseat);

						if( totseat <= 45 && totseat > 41 ){
							seatcode = seat_type_code_a;
							ing = 45 - totseat;
						}
						if( totseat <= 41 && totseat > 37 ){
							seatcode = seat_type_code_g;
							ing = 41 - totseat;
						}
						if( totseat <= 37 && totseat > 31 ){
							seatcode = seat_type_code_p;
							ing = 37 - totseat;
						}
						if( totseat <= 31 && totseat > 28 ){
							seatcode = seat_type_code_5;
							ing = 31 - totseat;
						}
						if( totseat <= 28 ){
							seatcode = seat_type_code_1;
							ing = 28 - totseat;
						}
						for( t=0; t<ing; t++ ){
							status = status+"0";
						}
					}else{
						if( totseat <= 45 && totseat > 41 ){
							seatcode = seat_type_code_a;
							ing = 45 - totseat;
						}
						if( totseat <= 41 && totseat > 37 ){
							seatcode = seat_type_code_g;
							ing = 41 - totseat;
						}
						if( totseat <= 37 && totseat > 31 ){
							seatcode = seat_type_code_p;
							ing = 37 - totseat;
						}
						if( totseat <= 31 && totseat > 28 ){
							seatcode = seat_type_code_5;
							ing = 31 - totseat;
						}
						if( totseat <= 28 ){
							seatcode = seat_type_code_1;
							ing = 28 - totseat;
						}
						for( t=0; t<ing; t++ ){
							status = status+"0";
						}
					}
				}

				var splitScode = seatcode.split(",");
				var splitScode_length = splitScode.length;
				var last_val = splitScode[splitScode_length-1].length/2;		// ������ �� �¼���

				if( splitScode[0].length > 6 ){
					flag_row = "row5";		// 45��, 41��, 37��
				} else {
					flag_row = "row4";		// 28��, 31��
				}

				var tempArr45 = new Array();
				var tempArr28 = new Array();

				var a1 = new Array(splitScode_length);
				var a2 = new Array(splitScode_length);
				var a3 = new Array(splitScode_length);
				var a4 = new Array(splitScode_length);
				if( flag_row == "row5" ){
					for( i=0; i<splitScode_length; i++ ){
						if( i == splitScode_length-1 && last_val == 5 ){
							a1[i] = splitScode[i].substring(8,10);
							a2[i] = splitScode[i].substring(6,8);
							a3[i] = splitScode[i].substring(2,4);
							a4[i] = splitScode[i].substring(0,2);
						}else{
							a1[i] = splitScode[i].substring(6,8);
							a2[i] = splitScode[i].substring(4,6);
							a3[i] = splitScode[i].substring(2,4);
							a4[i] = splitScode[i].substring(0,2);
						}
					}

					for( k1=0; k1<a1.length; k1++ ){
						tempArr45[k1] = a1[k1];
					}

					var klen = tempArr45.length;
					for( k2=0; k2<a2.length; k2++ ){
						tempArr45[k2+klen] = a2[k2];
					}

					klen = tempArr45.length;
					if( last_val == 5 ){
						tempArr45[klen] = splitScode[splitScode_length-1].substring(4,6);
						klen++;
					}else{
						tempArr45[klen] = "";
						klen++;
					}

					for( k3=0; k3<a3.length; k3++ ){
						tempArr45[k3+klen] = a3[k3];
					}

					klen = tempArr45.length;
					for( k4=0; k4<a4.length; k4++ ){
						tempArr45[k4+klen] = a4[k4];
					}

					for( tlen=0; tlen<tempArr45.length; tlen++ ){
						if( tempArr45[tlen].charAt(0) == 0 ){
							tempArr45[tlen] = tempArr45[tlen].replace("0","");
						}
					}
				}else if( flag_row == "row4" ){
					for( i=0; i<splitScode_length; i++ ){
						if( i == splitScode_length-1 && last_val == 4 ){
							a1[i] = splitScode[i].substring(6,8);
							a2[i] = splitScode[i].substring(2,4);
							a3[i] = splitScode[i].substring(0,2);
						}else{
							a1[i] = splitScode[i].substring(4,6);
							a2[i] = splitScode[i].substring(2,4);
							a3[i] = splitScode[i].substring(0,2);
						}
					}
					for( k1=0; k1<a1.length; k1++ ){
						tempArr28[k1] = a1[k1];
					}

					var klen = tempArr28.length;
					if( last_val == 4 ){
						tempArr28[klen] = splitScode[splitScode_length-1].substring(4,6);
						klen++;
					}else{
						tempArr28[klen] = "";
						klen++;
					}

					for( k2=0; k2<a2.length; k2++ ){
						tempArr28[k2+klen] = a2[k2];
					}

					klen = tempArr28.length;
					for( k3=0; k3<a3.length; k3++ ){
						tempArr28[k3+klen] = a3[k3];
					}
					for( tlen=0; tlen<tempArr28.length; tlen++ ){
						if( tempArr28[tlen].charAt(0) == 0 ){
							tempArr28[tlen] = tempArr28[tlen].replace("0","");
						}
					}
				}

				var len = status.length;
				if(len <= 45 && len > 41) len = 45;
				if(len <= 41 && len > 37) len = 41;
				if(len <= 37 && len > 31) len = 37;
				if(len <= 31 && len > 28) len = 31;
				if(len <= 28 ) len = 28;
				for(i =0 ; i < len ; i++){
					if(status.length > 31){
						statusArr[i] = status.charAt(tempArr45[i]-1);
					}else{
						statusArr[i] = status.charAt(tempArr28[i]-1);
					}
				}
				statusLen = statusArr.length;
				if(statusLen <= 31){
					lineHtml = "<colgroup>";
					for( i=0; i<splitScode_length; i++ ){
						lineHtml += '<col width="61px" />';
					}
					lineHtml += "</colgroup>";
					lineHtml += "<tbody>";
					if( statusLen == 28 ){
						for(j = 0 ; j < statusArr.length ; j++){
							if(j == 0 || j == 9 || j == 10 || j == 19) lineHtml += "<tr class='h28'>";
							if(j == 9) lineHtml += '<td class="notno" colspan="8">���</td>';
							if((statusArr[j] == "4")||(statusArr[j] == "8")){
								//lineHtml += '<td><input type="checkbox" name="checkbox"  />'+tempArr28[j]+'</td>';
								// ȭ���͹̳� �Ϻγ뼱 ���ͳ� ���� �Ϻ��¼� �ȵǵ��� ���� 20120307 ���뱸, �ϴ뱸, ����, ����, â��
								// �λ��ؿ�� �������� �Ϻ��¼� ���� �ȵǵ��� ���� 20120521
								if ( 
									(tempArr28[j]>14 && ( "101038923501" == $('#routecode').val() || "101038920201" == $('#routecode').val() || "101038602801" == $('#routecode').val() ) )
									|| (tempArr28[j]>10 && "101038402401" == $('#routecode').val()) 
									|| (tempArr28[j]>10 && "101038900501" == $('#routecode').val())
									|| (tempArr28[j]>16 && "101038900101" == $('#routecode').val())
									|| (tempArr28[j]>20 && "101038700601" == $('#routecode').val())
									|| (tempArr28[j]==4 && "909007000103" == $('#routecode').val())
									|| (tempArr28[j]==5 && "909007000103" == $('#routecode').val())
									|| (tempArr28[j]==6 && "909007000103" == $('#routecode').val())
									|| (tempArr28[j]>24 && "909007000103" == $('#routecode').val())
								){
									lineHtml += '<td class="impossible"><input type="checkbox" name="checkbox" disabled="false" />'+tempArr28[j]+'</td>';
								} else {
									lineHtml += '<td><input type="checkbox" name="checkbox" no="'+ (j+1) +'"/>'+tempArr28[j]+'</td>';
								}
							}else{
								lineHtml += '<td class="impossible"><input type="checkbox" name="checkbox" disabled="false" />'+tempArr28[j]+'</td>';
							}
							if(j == 8 || j == 9 || j == 18 || j == 27) lineHtml += "</tr>";
						}
					}else{
						for(j = 0 ; j < statusArr.length ; j++){
							if(j == 0 || j == 10 || j == 11 || j == 21) lineHtml += "<tr class='h28'>";
							if(j == 10) lineHtml += '<td class="notno" colspan="9">���</td>';
							if((statusArr[j] == "4")||(statusArr[j] == "8")){
								//lineHtml += '<td><input type="checkbox" name="checkbox"  />'+tempArr28[j]+'</td>';
								// ȭ���͹̳� �Ϻγ뼱 ���ͳ� ���� �Ϻ��¼� �ȵǵ��� ���� 20120307 ���뱸, �ϴ뱸, ����, ����, â��
								// �λ��ؿ�� �������� �Ϻ��¼� ���� �ȵǵ��� ���� 20120521
								if ( 
									(tempArr28[j]>14 && ( "101038923501" == $('#routecode').val() || "101038920201" == $('#routecode').val() || "101038602801" == $('#routecode').val() ) )
									|| (tempArr28[j]>10 && "101038402401" == $('#routecode').val()) 
									|| (tempArr28[j]>10 && "101038900501" == $('#routecode').val())
									|| (tempArr28[j]>16 && "101038900101" == $('#routecode').val())
									|| (tempArr28[j]>20 && "101038700601" == $('#routecode').val())
									|| (tempArr28[j]==4 && "909007000103" == $('#routecode').val())
									|| (tempArr28[j]==5 && "909007000103" == $('#routecode').val())
									|| (tempArr28[j]==6 && "909007000103" == $('#routecode').val())
									|| (tempArr28[j]>24 && "909007000103" == $('#routecode').val())
								){
									lineHtml += '<td class="impossible"><input type="checkbox" name="checkbox" disabled="false" />'+tempArr28[j]+'</td>';
								} else {
									lineHtml += '<td><input type="checkbox" name="checkbox" no="'+ (j+1) +'"/>'+tempArr28[j]+'</td>';
								}
							}else{
								lineHtml += '<td class="impossible"><input type="checkbox" name="checkbox" disabled="false" />'+tempArr28[j]+'</td>';
							}
							if(j == 9 || j == 10 || j == 20 || j == 30) lineHtml += "</tr>";
						}
					}
					lineHtml += "</tbody>";
					$('#seat28').html(lineHtml);
					$('#seat28').show();

					$(':checkbox').each(function(){

						$(this).click(function(){
							if(seatNo == ""){
								seatNo = $(this).parent().text();
							}else{

								if(chkCnt < $('#totCnt').val()) seatNo += ","+$(this).parent().text();
							}
							if($(this).attr('checked') == true) chkCnt++;
							else chkCnt--;
							if(chkCnt > $('#totCnt').val() && $(this).attr('checked') == true){
								chkCnt--;

								alert('���̻� �¼��� ���� �� �� �����ϴ�');
								return false;
							}else{

								if($(this).attr('checked') == true) setBusSeat($(this).parent().text(),"2");//����
								else setBusSeat($(this).parent().text(),"3");
							}
						});
					});
				}else{
					lineHtml = "<colgroup>";
					for( i=0; i<splitScode_length; i++ ){
						lineHtml += '<col width="50px" />';
					}
					lineHtml += "</colgroup>";
					lineHtml += "<tbody>";
					if(statusLen == 45){
						for(j = 0 ; j < statusArr.length ; j++){
							if(j == 0 || j == 11 || j == 23 || j == 34) lineHtml += "<tr class='h45'>";
							if(j == 22) lineHtml += '<td class="notno" colspan="10">���</td>';
							if((statusArr[j] == "4")||(statusArr[j] == "8")){
								//lineHtml += '<td><input type="checkbox" name="checkbox" no="'+ (j+1) +'"/>'+tempArr45[j]+'</td>';
								// ȭ���͹̳� �Ϻγ뼱 ���ͳ� ���� �Ϻ��¼� �ȵǵ��� ���� 20120307 ���뱸, �ϴ뱸, ����, ����, â��
								// 20131028 ��� �Ϻγ뼱 �Ϻ��¼� �ȵǵ��� ���� 
								if ( 
									(tempArr45[j]>14 && ( "101038923501" == $('#routecode').val() || "101038920201" == $('#routecode').val() || "101038602801" == $('#routecode').val() ) )
									|| (tempArr45[j]>10 && "101038402401" == $('#routecode').val()) 
									|| (tempArr45[j]>10 && "101038900501" == $('#routecode').val())
									|| (tempArr45[j]>16 && "101038900101" == $('#routecode').val())
									|| (tempArr45[j]>20 && "101038700601" == $('#routecode').val())
									|| (tempArr45[j]>20 && "101782700601" == $('#routecode').val())
								){
									lineHtml += '<td class="impossible"><input type="checkbox" name="checkbox" disabled="false" />'+tempArr45[j]+'</td>';
								} else {
									lineHtml += '<td><input type="checkbox" name="checkbox" no="'+ (j+1) +'"/>'+tempArr45[j]+'</td>';
								}
							}else{
								lineHtml += '<td class="impossible"><input type="checkbox" name="checkbox" disabled="false" />'+tempArr45[j]+'</td>';
							}
							if( j == 10 || j == 21 || j == 22 || j == 33 || j == 44 ) lineHtml += "</tr>";
						}
					}else if(statusLen == 37){
						for(j = 0 ; j < statusArr.length ; j++){
							if(j == 0 || j == 9 || j == 19 || j == 28) lineHtml += "<tr class='h45'>";
							if(j == 18) lineHtml += '<td class="notno" colspan="8">���</td>';
							if((statusArr[j] == "4")||(statusArr[j] == "8")){
									lineHtml += '<td><input type="checkbox" name="checkbox" no="'+ (j+1) +'"/>'+tempArr45[j]+'</td>';
							}else{
								lineHtml += '<td class="impossible"><input type="checkbox" name="checkbox" disabled="false" />'+tempArr45[j]+'</td>';
							}
							if( j == 8 || j == 17 || j == 27 ) lineHtml += "</tr>";
						}
					}else{
						for(j = 0 ; j < statusArr.length ; j++){
							if(j == 0 || j == 10 || j == 21 || j == 31) lineHtml += "<tr class='h45'>";
							if(j == 20) lineHtml += '<td class="notno" colspan="9">���</td>';
							if((statusArr[j] == "4")||(statusArr[j] == "8")){
								//lineHtml += '<td><input type="checkbox" name="checkbox" no="'+ (j+1) +'"/>'+tempArr45[j]+'</td>';
								// ȭ���͹̳� �Ϻγ뼱 ���ͳ� ���� �Ϻ��¼� �ȵǵ��� ���� 20120307 ���뱸, �ϴ뱸, ����, ����, â��
								// 20131028 ��� �Ϻγ뼱 �Ϻ��¼� �ȵǵ��� ���� 
								if ( 
									(tempArr45[j]>14 && ( "101038923501" == $('#routecode').val() || "101038920201" == $('#routecode').val() || "101038602801" == $('#routecode').val() ) )
									|| (tempArr45[j]>10 && "101038402401" == $('#routecode').val()) 
									|| (tempArr45[j]>10 && "101038900501" == $('#routecode').val())
									|| (tempArr45[j]>16 && "101038900101" == $('#routecode').val())
									|| (tempArr45[j]>20 && "101038700601" == $('#routecode').val())
									|| (tempArr45[j]>20 && "101782700601" == $('#routecode').val())
								){
									lineHtml += '<td class="impossible"><input type="checkbox" name="checkbox" disabled="false" />'+tempArr45[j]+'</td>';
								} else {
									lineHtml += '<td><input type="checkbox" name="checkbox" no="'+ (j+1) +'"/>'+tempArr45[j]+'</td>';
								}
							}else{
								// 20120313 �ּ�ȣ �¼�Ÿ�� r �߰�
								if( tempArr45[j] == "-1" ){
									lineHtml += '<td class="impossible"><input type="checkbox" name="checkbox" disabled="false" />&nbsp;</td>';
								}else{
									lineHtml += '<td class="impossible"><input type="checkbox" name="checkbox" disabled="false" />'+tempArr45[j]+'</td>';
								}
							}
							if( j == 9 || j == 19 ||  j == 20 || j == 30 || j == 40 ) lineHtml += "</tr>";
						}
					}

					$('#seat45').html(lineHtml);
					$('#seat45').show();

					$(':checkbox').each(function(){
						$(this).click(function(){
							//alert($(this).parent().text());
							if(seatNo == ""){
								seatNo = $(this).parent().text();
								//alert($(this).parent().text());
							}else{

								if(chkCnt < $('#totCnt').val()) seatNo += ","+$(this).parent().text();
							}
							if($(this).attr('checked') == true) chkCnt++;
							else chkCnt--;
							if(chkCnt > $('#totCnt').val() && $(this).attr('checked') == true){
								chkCnt--;
								alert('���̻� �¼��� ���� �� �� �����ϴ�');
								return false;
							}else{
								if($(this).attr('checked') == true){
									setBusSeat($(this).parent().text(),"2");
								}else{
									setBusSeat($(this).parent().text(),"3");
								}
							}
						});
					});
				}
			}
		};
	$("#frmSubmit").ajaxSubmit(opt);
}

function setBusSeat(idx,type){
	//alert(idx+" "+type);
	var sURL = "/newweb/advance/order.do";

	$('#mode').val("setBusSeat");
	$('#jsType').val(type);
	$('#seatNo').val(idx);

	if(type == 2){
		if(seatNos == ""){

			seatNos = idx;
		}else{

			seatNos += ","+idx;
		}
	}else{
		seatNos = seatNos.replace(","+idx, "");
		seatNos = seatNos.replace(idx, "");

	}

	if(seatNos.substring(0,1) == ","){
		seatNos = seatNos.replace(",","");
	}

	$('#seatNos').val(seatNos);
}

//��������ð�
function getServerTime(){
	$.ajax({
		type: "post",
		url: "thistime.jsp",
		success: function(time){
			var stetime  = time;
			$('#startDate').val(stetime);
		}
	});
}

function setSessionSeat(seatno){
	$('#MSTR').val(seatno+"!"+$('#adults').val()+"!"+$('#student').val()+"!"+$('#children').val()+"!"+$('#mAdults').val()+"!"+$('#mStudent').val()+"!"+$('#mChildren').val()+"!"+$('#startTime').val());

	if($('#selWay').val() == 2){
		//�պ��߱ǽ� ������ setp04_ret �������� �Ѱ���
		var businfo = "";
		businfo = $('#selWay').val()+"!"+$('#edate').val()+"!"+$('#etime').val()+"!"+$('#elvl').val();
		businfo += "!"+$('#adults').val()+"!"+$('#student').val()+"!"+$('#children').val()+"!"+$('#sterCode').val();
		businfo += "!"+$('#eterCode').val()+"!"+$('#sterName').val()+"!"+$('#eterName').val();
		$('#MSTR2').val(businfo);
		// �ѱ�ó�� �߰� 20111015
		var tempstr = $('#uname').val();
		$('#uname').val(fncEnCode(tempstr));

		$('#frmSubmit').attr('target','proc');
		$('#frmSubmit').attr('action','step04_ret.jsp');
		$('#frmSubmit').submit();
	}else{
		$('#frmSubmit').attr('target','');
		$('#frmSubmit').attr('action','step05.jsp');
		$('#frmSubmit').submit();
	}
}

//-- �ѱ۹��ڸ� Char Code ������ Encode, Decode �ϴ� �Լ�
function fncEnCode(param){
    var encode = '';

    for(i=0; i<param.length; i++){
        var len  = ''+param.charCodeAt(i);
        var token = '' + len.length;
        encode  += token + param.charCodeAt(i);
    }
    return encode;
}

function fncDeCode(param){
    var sb = '';
    var pos = 0;
    var flg = true;

    if(param != null){
        if(param.length>1){
            while(flg){
                var sLen = param.substring(pos,++pos);
                var nLen = 0;

                try{
                    nLen = parseInt(sLen);
                }catch(e){
                    nLen = 0;
                }

                var code = '';

                if((pos+nLen)>param.length)
                    code = param.substring(pos);
                else
                    code = param.substring(pos,(pos+nLen));

                pos  += nLen;
                sb += String.fromCharCode(code);

                if(pos >= param.length)
                    flg = false;
            }
        }
    }
    return sb;
}
//----------------------------------------

//�׽�Ʈ�� ���� ������ �ڵ��Է�
function setTest(){
	$('#uname').val("�׽���");
	$('#jumin').val('821112');
	$('#hp1').val('010');
	$('#hp2').val('2424');
	$('#hp3').val('1515');
	$('#email1').val('marsqw12');
	$('#email2').val('naver.com');
}

function moveNext(event, pFLD1,pFLD2,pLng){
	var keyCode = (event) ? event.keyCode : winodw.event.keyCode;
	var fld = $(pFLD1).val();

	if((keyCode!="8" && keyCode!="46") && fld.length==pLng){
		$(pFLD2).focus();
	}
}
</script>
<script language="javascript" type="text/javascript">
<!--
function setPng24(obj) {
    obj.width=obj.height=1;
    obj.className=obj.className.replace(/\bpng24\b/i,'');
    obj.style.filter =
    "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+ obj.src +"',sizingMethod='image');";
    obj.src='';
    return '';
}

function MM_showHideLayers() { //v9.0
var i,p,v,obj,args=MM_showHideLayers.arguments;
for (i=0; i<(args.length-2); i+=3)
with (document) if (getElementById && ((obj=getElementById(args[i]))!=null)) { v=args[i+2];
if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
obj.visibility=v; }
}
//-->
</script>
</head>
<body>
	<div id="Wrap">
		<!--header -->
		<div id="header">
			<script language="javascript" type="text/javascript">
<!--
	// �����ʸ��콺,�巡�� ����
	document.ondragstart = function(){
		if(event.srcElement.type != "text" && event.srcElement.type != "textarea"){
			return false;
		}
	}
	document.onselectstart = function(){
		if(event.srcElement.type != "text" && event.srcElement.type != "textarea"){
			return false;
		}
	}
	document.oncontextmenu = function(){
		if(event.srcElement.type != "text" && event.srcElement.type != "textarea"){
			return false;
		}
	}

	var dep1 = "2";

	$(document).ready(function(){
		if(dep1 == "1"){
			$('#subdepth1').show();
		}
		if(dep1 == "2"){
			$('#subdepth2').show();
		}
		if(dep1 == "3"){
			$('#subdepth3').show();
		}
		if(dep1 == "4"){

		}
		if(dep1 == "5"){
			$('#subdepth5').show();
		}

		$('.menuset li').each(function(i){

			$(this).mouseover(function(){
				$('#subdepth1').hide();
				$('#subdepth2').hide();
				$('#subdepth3').hide();
				$('#subdepth4').hide();
				$('#subdepth5').hide();
				if(i == 0){
					$('#subdepth1').show();

				}else if(i == 1){
					$('#subdepth2').show();

				}else if(i == 2){
					$('#subdepth3').show();

				}else if(i == 3){
					$('#subdepth4').show();

				}else if(i == 4){
					$('#subdepth5').show();
				}
			});
		});

		$('.lineType').each(function(){
			$(this).click(function(){
				$('#cityVal').val($(this).attr('no'));
				$('#frmLineType').attr('action','/newweb/ter/info.jsp');
				$('#frmLineType').submit();
			});
		});

		$('.lineType2').each(function(){
			$(this).click(function(){
				$('#cityVal').val($(this).attr('no'));
				$('#frmLineType').attr('action','/newweb/info/place.jsp');
				$('#frmLineType').submit();
			});
		});
	});
//-->
</script>

			
			<form id='frmLineType' name='frmLineType' method='post'>
				<input type='hidden' id='cityVal' name='cityVal' />
			</form>
			
		</div>
		<!--//header -->
		<div id="contents">
			<!--quick menu -->
			<script type="text/javascript">
var quick_top = 0;
$(document).ready(function(){
	//���޴� ��Ʈ��
	$('#quick').animate({"top":$(document).scrollTop() + quick_top +"px"},500);
	$(window).scroll(function(){
		$('#quick').stop();
		$('#quick').animate( { "top": $(document).scrollTop() + quick_top + "px" }, 1000 );

	});

	$('#selc').change(function(){
		var val = $(this).val();
		//alert('val='+val);
			$('#number').val(val);
			$('#frmLineType').attr('action','/newweb/ter/terminal.jsp?number='+val);
			$('#frmLineType').submit();
	});
});
</script>
			<div id="quick">
				<ul class="ulset">
					<li class=""><a href="/newweb/informa/information_01.jsp"><img
							src="/newweb/images/common/quick_01.gif" alt="�̿�ȳ�"
							align="bottom" /><img
							src="/newweb/images/common/quick_01over.gif" alt="�̿�ȳ�"
							class="over" /></a></li>
					<li><a href="/newweb/advance/searchline.jsp"><img
							src="/newweb/images/common/quick_02.gif" alt="�뼶�˻�" /><img
							src="/newweb/images/common/quick_02over.gif" alt="�뼶�˻�"
							class="over" /></a></li>
					<li class="city"><img src="/newweb/images/common/quick_03.gif"
						alt="�����ÿܹ����͹̳�" /> <select name="selc" id="selc"
						class="selterminal">
							<option value=''>�����ϼ���</option>
							<option value="00">����</option>
							<option value="90">�λ�</option>
							<option value="92">�뱸</option>
							<option value="93">��õ</option>
							<option value="94">����</option>
							<option value="95">����</option>
							<option value="96">���</option>
							<option value="10">���</option>
							<option value="20">����</option>
							<option value="30">���</option>
							<option value="40">�泲</option>
							<option value="70">����</option>
							<option value="80">����</option>
							<option value="50">���</option>
							<option value="60">�泲</option>
							<option value="97">����</option>
					</select></li>
				</ul>
			</div>





			<div class="contarea">

				<table width="699" border="0" cellpadding="0" cellspacing="0"
					class="tbl_sty04 mt10 floatL" summary="������ �����Դϴ�">
					<colgroup>
						<col width="110px" />
						<col width="250px" />
						<col width="110px" />
						<col width="*" />
					</colgroup>
					<tbody>
						<tr>
							<th class="titlete">�����</th>
							<td class="titlete">����</td>
							<th class="titlete">������</th>
							<td class="titlete">����</td>
						</tr>
						<tr>
							<th class="contate">�������</th>
							<td class="contate1">2014�� 05�� 08�� �����</td>
							<th class="contate">��߽ð�</th>
							<td class="contate1">07�� 30��</td>
						</tr>
						<tr>
							<th class="contate">�ο�</th>
							<td class="contate1">�� 1�� (�Ϲ� :1 �� , �߰�� :0 ��, �Ƶ� :0 ��)</td>
							<td class="contate">���</td>
							<td class="contate1">�Ϲ�:14,700��, �߰��:11,800��,</br> �Ƶ�:7,400��
							</td>
						</tr>
						<tr>
							<th class="contate">�ѱݾ�</th>
							<td class="contate1">14,700��</td>
							<th class="contate">�ҿ�ð�/�Ÿ�</th>
							<td class="contate1" id='mkm'>�� / km</td>
						</tr>
						<tr>
							<th class="contate">�뼱��</th>
							<td class="contate1" colspan="3" id='busLine'></td>
						</tr>
					</tbody>
				</table>

				<form id="frmSubmit" name="frmSubmit" method="post">
					<fieldset class="floatL">
						<table width="699" border="0" cellspacing="0"
							class="tbl_sty04 mt10 floatL" summary="�����������ȳ��Դϴ�.">
							<colgroup>
								<col width="110px" />
								<col width="205px" />
								<col width="110px" />
								<col width="*" />
							</colgroup>
							<tbody>
								<tr>
									<th>* ����</th>
									<td colspan="3"><input id='uname' name="uname" type="text"
										size="15" class="" value="" /></td>
								</tr>
								<tr>
									<th>* �������</th>
									<td colspan="3"><input type="text" name="jumin" id='jumin'
										size="15" maxlength='6' value="" /> <span class="point">ó��6���ڸ�
											�Է����ֽʽÿ�</span></td>
								</tr>
								<tr>
									<th>* ����ó(�ڵ���)</th>
									<td colspan="3"><input type="text" name="hp1" id='hp1'
										size="15" maxlength='3' value=""
										onkeyup="moveNext(event,'#hp1','#hp2',3)" /> - <input
										type="text" name="hp2" id='hp2' size="15" maxlength='4'
										value="" onkeyup="moveNext(event,'#hp2','#hp3',4)" /> - <input
										type="text" name="hp3" id='hp3' size="15" maxlength='4'
										value="" /> <span class="point">�߱ǽ� ī���ȣ ��� �̿�</span></td>
								</tr>
								<tr>
									<th>�̸���</th>
									<td colspan="3" class="contate1"><input type="text"
										name="email1" id='email1' size="15" value="" /> @ <input
										type="text" name="email2" id='email2' size="15" value="" /></td>
								</tr>
							</tbody>
						</table>
					</fieldset>
					<input type="hidden" id="RETSTR2" name="RETSTR1" value="null" /> <input
						type="hidden" id="RETSTR2" name="RETSTR2" value="null" /> <input
						type="hidden" id="uname" name="uname" value="" /> <input
						type="hidden" id="hp1" name="hp1" value="" /> <input
						type="hidden" id="hp2" name="hp2" value="" /> <input
						type="hidden" id="hp3" name="hp3" value="" /> <input
						type="hidden" id="email1" name="email1" value="" /> <input
						type="hidden" id="email2" name="email2" value="" /> <input
						type="hidden" id="jumin" name="jumin" value="" /> <input
						type="hidden" id="selWay" name="selWay" value="1" /> <input
						type="hidden" id="sdate" name="sdate" value="20140508" /> <input
						type="hidden" id="edate" name="edate" value="" /> <input
						type="hidden" id="stime" name="stime" value="0000" /> <input
						type="hidden" id="etime" name="etime" value="null" /> <input
						type="hidden" id="slvl" name="slvl" value="0" /> <input
						type="hidden" id="elvl" name="elvl" value="null" /> <input
						type="hidden" id="starttime" name="starttime" value="0730" /> <input
						type="hidden" id="adults" name="adults" value="1" /> <input
						type="hidden" id="student" name="student" value="0" /> <input
						type="hidden" id="children" name="children" value="0" /> <input
						type="hidden" id="mAdults" name="mAdults" value="14700" /> <input
						type="hidden" id="mStudent" name="mStudent" value="11800" /> <input
						type="hidden" id="mChildren" name="mChildren" value="7400" /> <input
						type="hidden" id="sterCode" name="sterCode" value="2051" /> <input
						type="hidden" id="eterCode" name="eterCode" value="1012" /> <input
						type="hidden" id="sterName" name="sterName" value="����" /> <input
						type="hidden" id="eterName" name="eterName" value="����" /> <input
						type="hidden" id="mode" name="mode" value="" /> <input
						type="hidden" id="routecode" name="routecode" value="202051101201" />
					<input type="hidden" id="selectlvl" name="selectlvl" value="" /> <input
						type="hidden" id="startTime" name="startTime" value="0730" />
					<!-- // 20111010 �ּ�ȣ �¼���ġ ���� ȣ�� ���ν����� ���� -->
					<input type="hidden" id="changNo" name="changNo" value="99" /> <input
						type="hidden" id="sjType" name="sjType" value="" /> <input
						type="hidden" id="seatNo" name="seatNo" value="" /> <input
						type="hidden" id="totCnt" name="totCnt" value="1" /> <input
						type="hidden" id="totFee" name="totFee" value="14700" /> <input
						type="hidden" id="bizr_id" name="bizr_id" value="0000000" /> <input
						type="hidden" id="seatNos" name="seatNos" value="" /> <input
						type="hidden" id="seatState" name="seatState"
						value="888888888888b888888888888888888888888888" /> <input
						type="hidden" id="reserveNo" name="reserveNo" /> <input
						type="hidden" id="jsType" name="jsType" /> <input type="hidden"
						id="startDate" name="startDate" value="20140508" /> <input
						type="hidden" id="reserveTime" name="reserveTime" value="000200" />
					<input type="hidden" id="totalSeat" name="totalSeat" value="40" />
					<input type="hidden" id="CcNameOnCard" name="CcNameOnCard" /> <input
						type="hidden" id="PhoneNO" name="PhoneNO" /> <input type="hidden"
						id="email" name="email" /> <input type="hidden" id="MSTR"
						name="MSTR" /> <input type="hidden" id="MSTR2" name="MSTR2" />
				</form>


				<!--�¼�ǥ -->
				<div class="seat mt20">
					<!-- 45�ν� -->
					<table class="seat_type3" border="0" cellspacing="0"
						summary="45�ν¿��¼��Դϴ�." style="visibility: h; display: none;"
						id='seat45'>
						<colgroup>
							<col width="50px" />
							<col width="50px" />
							<col width="50px" />
							<col width="50px" />
							<col width="50px" />
							<col width="50px" />
							<col width="50px" />
							<col width="50px" />
							<col width="50px" />
							<col width="50px" />
							<col width="50px" />
						</colgroup>
						<!-- ����Ұ� css = impossible ����Ұ��� üũ�ڽ� üũ�ȵ� -->
						<tbody>
							<tr class="h45">
								<td class="impossible"><input type="checkbox"
									name="checkbox" /> 1</td>
								<td><input type="checkbox" name="checkbox" /> 5</td>
								<td><input type="checkbox" name="checkbox" /> 9</td>
								<td><input type="checkbox" name="checkbox" /> 13</td>
								<td><input type="checkbox" name="checkbox" /> 17</td>
								<td><input type="checkbox" name="checkbox" /> 21</td>
								<td><input type="checkbox" name="checkbox" /> 25</td>
								<td><input type="checkbox" name="checkbox" /> 29</td>
								<td><input type="checkbox" name="checkbox" /> 33</td>
								<td><input type="checkbox" name="checkbox" /> 37</td>
								<td><input type="checkbox" name="checkbox" /> 41</td>
							</tr>
							<tr class="h45">
								<td><input type="checkbox" name="checkbox" /> 2</td>
								<td><input type="checkbox" name="checkbox" /> 6</td>
								<td><input type="checkbox" name="checkbox" /> 10</td>
								<td><input type="checkbox" name="checkbox" /> 14</td>
								<td><input type="checkbox" name="checkbox" /> 18</td>
								<td><input type="checkbox" name="checkbox" /> 22</td>
								<td><input type="checkbox" name="checkbox" /> 26</td>
								<td><input type="checkbox" name="checkbox" /> 30</td>
								<td><input type="checkbox" name="checkbox" /> 34</td>
								<td><input type="checkbox" name="checkbox" /> 38</td>
								<td><input type="checkbox" name="checkbox" /> 42</td>
							</tr>
							<tr class="h45">
								<td class="notno" colspan="10">���</td>
								<td><input type="checkbox" name="checkbox" /> 43</td>
							</tr>
							<tr class="h45">
								<td><input type="checkbox" name="checkbox" /> 3</td>
								<td><input type="checkbox" name="checkbox" /> 7</td>
								<td><input type="checkbox" name="checkbox" /> 11</td>
								<td><input type="checkbox" name="checkbox" /> 15</td>
								<td><input type="checkbox" name="checkbox" /> 19</td>
								<td><input type="checkbox" name="checkbox" /> 23</td>
								<td><input type="checkbox" name="checkbox" /> 27</td>
								<td><input type="checkbox" name="checkbox" /> 31</td>
								<td><input type="checkbox" name="checkbox" /> 35</td>
								<td><input type="checkbox" name="checkbox" /> 39</td>
								<td><input type="checkbox" name="checkbox" /> 44</td>
							</tr>
							<tr class="h45">
								<td><input type="checkbox" name="checkbox" /> 4</td>
								<td><input type="checkbox" name="checkbox" /> 8</td>
								<td><input type="checkbox" name="checkbox" /> 12</td>
								<td><input type="checkbox" name="checkbox" /> 16</td>
								<td><input type="checkbox" name="checkbox" /> 20</td>
								<td><input type="checkbox" name="checkbox" /> 24</td>
								<td><input type="checkbox" name="checkbox" /> 28</td>
								<td><input type="checkbox" name="checkbox" /> 32</td>
								<td><input type="checkbox" name="checkbox" /> 36</td>
								<td><input type="checkbox" name="checkbox" /> 40</td>
								<td><input type="checkbox" name="checkbox" /> 45</td>
							</tr>
						</tbody>
					</table>
					<!-- 45�ν� -->
					<!-- 28�ν� -->
					<table class="seat_type3" border="0" cellspacing="0"
						summary="28�ν¿��¼��Դϴ�." id="seat28" style="display: none;">
						<colgroup>
							<col width="61px" />
							<col width="61px" />
							<col width="61px" />
							<col width="61px" />
							<col width="61px" />
							<col width="61px" />
							<col width="61px" />
							<col width="61px" />
							<col width="61px" />
							<col width="61px" />
							<col width="62px" />
						</colgroup>
						<!--  ����Ұ� css = impossible ����Ұ��� üũ�ڽ� üũ�ȵ� -->
						<tbody>
							<tr class="h28">
								<td class="impossible"><input type="checkbox"
									name="checkbox" /> 1</td>
								<td><input type="checkbox" name="checkbox" /> 4</td>
								<td><input type="checkbox" name="checkbox" /> 7</td>
								<td><input type="checkbox" name="checkbox" /> 10</td>
								<td><input type="checkbox" name="checkbox" /> 13</td>
								<td><input type="checkbox" name="checkbox" /> 16</td>
								<td><input type="checkbox" name="checkbox" /> 19</td>
								<td><input type="checkbox" name="checkbox" /> 22</td>
								<td><input type="checkbox" name="checkbox" /> 25</td>
							</tr>
							<tr class="h28">
								<td class="notno" colspan="8">���</td>
								<td><input type="checkbox" name="checkbox" /> 26</td>
							</tr>
							<tr class="h28">
								<td><input type="checkbox" name="checkbox" /> 2</td>
								<td><input type="checkbox" name="checkbox" /> 5</td>
								<td><input type="checkbox" name="checkbox" /> 8</td>
								<td><input type="checkbox" name="checkbox" /> 11</td>
								<td><input type="checkbox" name="checkbox" /> 14</td>
								<td><input type="checkbox" name="checkbox" /> 17</td>
								<td><input type="checkbox" name="checkbox" /> 20</td>
								<td><input type="checkbox" name="checkbox" /> 23</td>
								<td><input type="checkbox" name="checkbox" /> 27</td>
							</tr>
							<tr class="h28">
								<td><input type="checkbox" name="checkbox" /> 3</td>
								<td><input type="checkbox" name="checkbox" /> 6</td>
								<td><input type="checkbox" name="checkbox" /> 9</td>
								<td><input type="checkbox" name="checkbox" /> 12</td>
								<td><input type="checkbox" name="checkbox" /> 15</td>
								<td><input type="checkbox" name="checkbox" /> 18</td>
								<td><input type="checkbox" name="checkbox" /> 21</td>
								<td><input type="checkbox" name="checkbox" /> 24</td>
								<td><input type="checkbox" name="checkbox" /> 28</td>
							</tr>
						</tbody>
					</table>
					<!-- //28�ν� -->
				</div>
				<!--//�¼�ǥ -->
				<!-- �ݾ׹� �ż� ���� -->



			</div>
			<!--//contents -->
		</div>
		<iframe name="proc" id="proc" style="width: 0; height: 0;"></iframe>
</body>
</html>
