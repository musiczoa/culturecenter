<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta name="Author" content="" />
<meta name="Keywords" content="" />
<meta name="Description" content="" />
<link rel="stylesheet" type="text/css" href="http://ticketimage.interpark.com/TicketImage/onestop/css/reset.css" />
<link rel="stylesheet" type="text/css" href="http://ticketimage.interpark.com/TicketImage/onestop/css/style.css" />
<script type="text/javascript" src="http://tickethtml.interpark.com/js/XmlRs.js"></script>
<script type="text/javascript" src="/Book/Inc/Js/common.js"></script>
<script type="text/javascript" src="http://tickethtml.interpark.com/js/block.js"></script>
<script type="text/javascript" src="http://tickethtml.interpark.com/js/prototype.js"></script>
<script type="text/javascript" src="http://tickethtml.interpark.com/js/Ajax.js"></script>
<script type="text/javascript" src="http://tickethtml.interpark.com/js/BookSeatConfig.js?v=20130530"></script>
<script type="text/javascript" src="http://ticketimage.interpark.com/TicketImage/onestop/css/common.js"></script>
<script type="text/javascript">
//<![CDATA[
   var nBookStep = 1;   //���� ���� �ܰ�

   document.observe("dom:loaded", fnInit);
   //window.observe("load", fnInit);

   //�ʱ�ȭ
   function fnInit(){
      parent.fnSetNextImage("");
      
      //�����ܰ�� �� ��� �ʱ�ȭ
      if (parent.nNowBookStep > nBookStep){
         parent.fnClearSeat();      
         parent.fnInitDiscount();      
         parent.fnInitDelivery();      
         parent.fnInitPayment();
         parent.fnSetNowBookStep(nBookStep);   //���� ���� ���� ����
         parent.fnUIRefresh();
      }else{
         parent.fnSetNowBookStep(nBookStep);   //���� ���� ���� ����
      }



      $("PlayDate").value = "20140823";

      $("PlaySeq").value = "001";

      //ȸ�� ��ȸ
      fnGetPlaySeq("20140823");

   }

   //������
   function fnChangeMonth(ym){
      $("YM").value = ym;
      $("PlayDate").value = "";
      $("formCalendar").submit();

      //BookMain ������, ȸ��, �����ð� �ʱ�ȭ
      parent.fnSetBookDateTime("", "", "");   
   }

   //������ ����
   function fnSelectPlayDate(nIndex, sPlayDate){
      if (sPlayDate != $F("PlayDate")){
         // ������ ���� className ����
         for(var i=0; i < $N("CellPlayDate").length; i++){
            $N("CellPlayDate")[i].className = "sel1";
         }      
         $N("CellPlayDate")[nIndex].className = "sel2";
         
         $("PlayDate").value = sPlayDate;
         
         //ȸ�� ����
         $("PlaySeq").value = "";

         parent.fnSetBookDateTime(sPlayDate, "", "");

         //ȸ�� ��ȸ
         fnGetPlaySeq(sPlayDate);
      }
   }

   //ȸ�� ��ȸ
   function fnGetPlaySeq(sPlayDate){
      var url = "/Book/Lib/BookInfoXml.asp?Flag=PlaySeq&GoodsCode=14004550&PlaceCode=14000508&OnlyDeliver=68001&DBDay=12&ExpressDelyDay=0&BizCode=WEBBR&BizMemberCode=052505421&PlayDate=" + sPlayDate;

      //fnAjaxRequest(url, fnGetPlaySeqCallBack);
      XmlRequest(url, fnGetPlaySeqCallBack);

      fnCastingReset();   //ĳ���� ����
   }

   //ȸ�� ��ȸ �ݹ�
/*
   function fnGetPlaySeqCallBack(request){
      if(request.readyState == 4){               
         if(request.status == 200){   
            var Rs = new XmlRs(request.responseXML);
*/
   function fnGetPlaySeqCallBack(){   
      if(XmlHttp.readyState == 4){
         if(XmlHttp.status == 200){            
            var Rs = new XmlRs(XmlHttp.responseXML);
            var sTag = "";
            var i = 0;
            var sTagClass = "";
            var nRsCount = Rs.RecordCount();
            var bGetRemainSeat = false;   //�ܿ��¼� ��ȸ ����
            var tIndex, tPlaySeq, tOnlineDate, tPlayTime, tBalanceSeatYN, tCancelableDate;

            if (nRsCount > 0){
               // ȸ������� ��ǰ
               if (fnTrim(Rs.Get("PlayTime")) == "��û�ǰ"){
                  sTag = "<div class=\"none\">ȸ��(�ð�)������<br/>����<br/>��û�ǰ�Դϴ�</div>";

                  tIndex = i;
                  tPlaySeq = Rs.Get("PlaySeq");
                  tOnlineDate = Rs.Get("OnlineDate");
                  tPlayTime = Rs.Get("PlayTime");
                  tBalanceSeatYN = Rs.Get("BalanceSeatYN");
                  tCancelableDate = Rs.Get("CancelableDate");
                  bGetRemainSeat = true;

                  // ȸ�� ����
                  //fnSetPlaySeq(Rs.Get("PlaySeq"), Rs.Get("PlayTime"), Rs.Get("CancelableDate"));

                  //BookMain ������, ȸ��, �����ð� ����
                  //parent.fnSetBookDateTime($F("PlayDate"), $F("PlaySeq"), $F("PlayTime"));
               }else{
                  sTag += "<ul>";
                  while (!Rs.Eof()){
                     // ������ ȸ���� �Ѿ�� ���, ������ ȸ���� 1���ۿ� ���� ��� class ����(���� ǥ��)
                     if ((fnTrim($F("PlaySeq")) != "" && ($F("PlaySeq") == Rs.Get("PlaySeq"))) || nRsCount == 1){
                        sTagClass = "class=\"sel\"";
                        $("PlaySeq").value = Rs.Get("PlaySeq");
                        bGetRemainSeat = true;
                        tIndex = i;
                        tPlaySeq = Rs.Get("PlaySeq");
                        tOnlineDate = Rs.Get("OnlineDate");
                        tPlayTime = Rs.Get("PlayTime");
                        tBalanceSeatYN = Rs.Get("BalanceSeatYN");
                        tCancelableDate = Rs.Get("CancelableDate");
                     }else{
                        sTagClass = "";
                     }

                     sTag += "<li><a id=\"CellPlaySeq\" name=\"CellPlaySeq\" " + sTagClass + " href=\"javascript:;\" onclick=\"fnSelectPlaySeq(" + i + ", '" + Rs.Get("PlaySeq") + "', '" + Rs.Get("OnlineDate") + "', '" + Rs.Get("PlayTime") + "', '" + Rs.Get("BalanceSeatYN") + "', '" + Rs.Get("CancelableDate") + "')\">" + Rs.Get("PlayTime") + "</a></li>";

                     Rs.MoveNext();
                     i++;
                  }
                  sTag += "</ul>";
               }
            }else{
               sTag = "<div class=\"none\">ȸ����<br/>�����ϴ�.</div>";
            }
            $("TagPlaySeq").innerHTML = sTag;

            // ������ ȸ���� �Ѿ�� ���, ������ ȸ���� 1���ۿ� ���� ���, ȸ������ ��� �ܿ��¼� ��ȸ
            if (bGetRemainSeat){
               fnSelectPlaySeq(tIndex, tPlaySeq, tOnlineDate, tPlayTime, tBalanceSeatYN, tCancelableDate);
            }else{
               $("TagRemainSeat").innerHTML = "<div class=\"none\">ȸ�� ���� ��<br/>Ȯ�� ���� �մϴ�.</div>";   //�ܿ��¼� �ʱ�ȭ
               parent.fnSetNextImage("N");   //�����ܰ��ư ����
            }
         }
      }
   }

   //ȸ�� ����
   function fnSelectPlaySeq(nIndex, sPlaySeq, sOnlineDate, sPlayTime, sBalanceSeatyn, sCancelableDate){
      // ������ ȸ�� className ����
      var objCellPlaySeq = $N("CellPlaySeq");
      if (objCellPlaySeq.length > 0){
         for(i=0; i < objCellPlaySeq.length; i++){
            objCellPlaySeq[i].className = "";
         }      
         objCellPlaySeq[nIndex].className = "sel";
      }

      // ȸ�� ����
      fnSetPlaySeq(sPlaySeq, sPlayTime, sCancelableDate);

      fnCastingReset();   //ĳ���� ����

      if (sBalanceSeatyn == 'Y' || "N" == "Y" || sPlayTime == "��û�ǰ"){
      }else{
         if ("N" == "Y"){
            $("RemainArea").innerHTML = "<div class=\"tip\"><strong>TIP</strong><p>������ ���� ���� 5������<br />(������� ���� 11��) �Ǵ� ������  <br />���Ͽ����Դϴ�. <br />���� �Ŀ��� ���/����/ȯ���� <br />�Ұ��մϴ�. </p></div>";
         }else{
            fnGetRemainSeat(sPlaySeq);
         }
      }
      parent.fnSetNextImage("C");   //�����ܰ��ư ����

      //BookMain ������, ȸ��, �����ð� ����
      parent.fnSetBookDateTime($F("PlayDate"), sPlaySeq, sPlayTime);
   }

   //�ܿ��¼� ��ȸ
   function fnGetRemainSeat(sPlaySeq){

      var url = "/Book/Lib/BookInfoXml.asp?Flag=SeatGrade&GoodsCode=14004550&PlaceCode=14000508&BizCode=WEBBR&PlaySeq=" + sPlaySeq;

      //fnAjaxRequest(url, fnGetRemainSeatCallBack);
      XmlRequest(url, fnGetRemainSeatCallBack);
   }

   //�ܿ��¼� ��ȸ �ݹ�
/*
   function fnGetRemainSeatCallBack(request){
      if(request.readyState == 4){               
         if(request.status == 200){   
            var Rs = new XmlRs(request.responseXML);
*/
   function fnGetRemainSeatCallBack(){   
      if(XmlHttp.readyState == 4){
         if(XmlHttp.status == 200){
            var Rs = new XmlRs(XmlHttp.responseXML);
            var str = "";
            var nRemainCnt = 0;

            str += "<ul>";
            while (!Rs.Eof()){
               if(parseInt(Rs.Get("RemainCnt"), 10) < 0 ){
                  nRemainCnt = 0
               }else{
                  if (Rs.Get("RemainCnt") != ""){
                     nRemainCnt = parseInt(Rs.Get("RemainCnt"), 10);
                  }else{
                     nRemainCnt = "";
                  }
               }
               str += "<li><div class=\"lv\" style=\"background:" + fnSeat_Bg_Color(Rs.Get("SeatGrade"), "14000508") + ";\"></div><div class=\"lv_det\">" + Rs.Get("SeatGradeName") + " | " + fnAddComma(nRemainCnt) + "��</div></li>";
               Rs.MoveNext();
            }
            str += "</ul>";
            
            $("TagRemainSeat").innerHTML = str;

         }
      }
   }
   
   // ĳ���� ��ȸ
   function fnGetCastingInfo(sPlaySeq){
      var url = "/Book/Lib/BookInfoXml.asp?Flag=Casting&GoodsCode=14004550&PlaceCode=14000508&BizCode=WEBBR&PlaySeq=" + sPlaySeq;

      XmlRequest(url, fnGetCastingInfoCallBack);
   }
   function fnGetCastingInfoCallBack(){   
      if(XmlHttp.readyState == 4){
         if(XmlHttp.status == 200){
            var Rs = new XmlRs(XmlHttp.responseXML);
            var castlist = "";
            var castinfo = "";

            while (!Rs.Eof()){
               castlist += "<li>" + Rs.Get("CharacterName") + " �� : <strong>" + Rs.Get("ManName") + "</strong></li>";

               if (Rs.Get("ManNo") != "0"){
                  castinfo += Rs.Get("ManName");
               }
               Rs.MoveNext();
               if (!Rs.Eof()){
                  if (Rs.Get("ManNo") != "0"){
                     castinfo += ", ";
                  }
               }
            }

            if (castinfo.length > 0){
               $("CastingInfoName").innerHTML = "<strong>�⿬</strong> : " + castinfo;
               $("CastingInfoDiv").style.display = "";

               $("CastingList").innerHTML = castlist;
               $("CastingDateInfo").innerHTML = "<strong>" + fnDisplayDateString($F("PlayDate"), "3") + " " + $F("PlayTime") + " ����</strong> �ֿ� �⿬��";
            }
         }
      }
   }

   // ȸ�� ����
   function fnSetPlaySeq(sPlaySeq, sPlayTime, sCancelableDate){
      $("PlaySeq").value = sPlaySeq;
      $("PlayTime").value = sPlayTime;
      $("CancelableDate").value = sCancelableDate;
   }

   //�����ܰ�
   function fnSelect(){
      var sPlayDateValue = $("PlayDate").value;
      var sPlaySeqValue = $("PlaySeq").value;
      var sPlayTImeValue = $("PlayTime").value;

      if (sPlayDateValue.length < 1){
         alert("�������� �����ϼ���.");
         return 0;
      }
      
      if (sPlaySeqValue.length < 1){
         alert("ȸ���� �����ϼ���.");
         return 0;
      }

      if (fnChkTodate()){
         //BookMain ������, ȸ��, �����ð� ����
         parent.fnSetBookDateTime(sPlayDateValue, sPlaySeqValue, sPlayTImeValue);
         return 1;
      }else{
         return 0;
      }
   }

   //   ���Ͽ��� �˷��ֱ� Alert
   function fnChkTodate(){
      //var strPlayDate = "20140823";
      var strPlayDate = $("PlayDate").value;
      var strPlayCancel = $("CancelableDate").value;
      
      if(strPlayDate.length == 8 && "20140508" >= strPlayDate){
         if (strPlayCancel != "" && "20140508" == (strPlayCancel.toString()).substr(0,8)){
            strPlayCancel = strPlayCancel.toString();
            var msg = "�ش� ȸ���� ����Ͻô� "+ fnDisplayDateString(strPlayCancel,2) +"���� �Դϴ�. \n"
            msg += "���Ŀ��� ���/����/ȯ���� �Ұ��մϴ�.\n\n"
            msg += "���Ÿ� �����Ͻðڽ��ϱ�?"
         }else{
            var msg = "������ ���� ���� 5�� ����(������� ���� 11��) �Ǵ� ������ ���� �����Դϴ�.\n"
            msg += "�̴� ���� �Ŀ� ���/����/ȯ���� �Ұ��մϴ�.\n\n"
            msg += "���Ÿ� �����Ͻðڽ��ϱ�?"
         }
           var ret = confirm(msg);
           
           return ret;
        }else{
           return true;
      }
   }

   //   ����ð� �����ֱ�
   function fnDisplayDateString(strDate, Type){
      var ret;
      if(strDate.length == 8){
         if(Type == 1){
            ret = strDate.substring(0,4) + "." + strDate.substring(4,6) + "." + strDate.substring(6,8)
         }else if(Type == 2){
            ret = strDate.substring(2,4) + "." + strDate.substring(4,6) + "." + strDate.substring(6,8)
         }else if(Type == 3){
            ret = strDate.substring(4,6) + "�� " + strDate.substring(6,8) + "��";
         }else{
            ret = strDate.substring(0,4) + "." + strDate.substring(4,6) + "." + strDate.substring(6,8)
         }
      }else if (strDate.length == 12){
         ret = strDate.substring(4,6) + "�� " + strDate.substring(6,8) + "�� " + strDate.substring(8,10) + ":" + strDate.substring(10,12);
      }
      return ret;
   }

   // ĳ����
   function fnCastingShow(bShow){
      if (bShow){
         $("CastingListDiv").style.display = "";
      }else{
         $("CastingListDiv").style.display = "none";
      }
   }

   // ĳ���� �ʱ�ȭ
   function fnCastingReset(){
      $("CastingInfoName").innerHTML = "";
      $("CastingInfoDiv").style.display = "none";
      $("CastingListDiv").style.display = "none";
   }
//]]>
</script>
</head>
         
<body>
   <div class="contFrame frameBg6">
      <!-- //������ ���� -->
      <div class="watch_select">
         <h3 class="title2"><img src="http://ticketimage.interpark.com/TicketImage/onestop/stit_date.gif" alt="�����ϼ���" /></h3>

         <div class="calHead">
            <div class="month">
               <span class="prev"></span>
               <span><em>2014</em>�� <em>8</em>��</span>
               <span class="next"><a href="javascript:fnChangeMonth('201409');"><img src="http://ticketimage.interpark.com/TicketImage/onestop/arrow_gr_next.gif" alt="����" /></a></span>
            </div>
         </div>
         <div class="calCont">
            <table>
               <thead>
                  <tr>
                     <th class="sun">��</th>
                     <th>��</th>
                     <th>ȭ</th>
                     <th>��</th>
                     <th>��</th>
                     <th>��</th>
                     <th>��</th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td>1</td>
<td>2</td>
</tr>
<tr>
<td class="sun">3</td>
<td>4</td>
<td>5</td>
<td>6</td>
<td>7</td>
<td>8</td>
<td>9</td>
</tr>
<tr>
<td class="sun">10</td>
<td>11</td>
<td>12</td>
<td>13</td>
<td>14</td>
<td>15</td>
<td>16</td>
</tr>
<tr>
<td class="sun">17</td>
<td>18</td>
<td>19</td>
<td>20</td>
<td>21</td>
<td>22</td>
<td><a id="CellPlayDate" name="CellPlayDate" class="sel2" href="javascript:;" onclick="fnSelectPlayDate(0, '20140823')">23</a></td>
</tr>
<tr>
<td class="sun">24</td>
<td>25</td>
<td>26</td>
<td>27</td>
<td>28</td>
<td>29</td>
<td>30</td>
</tr>
<tr>
<td class="sun">31</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>

               </tbody>
            </table>
         </div>
         <div class="calBtm">
            <p>
               <span class="info1">���� ������</span>
               <span class="info2">������ ������</span>
            </p>
            <p><span class="info3">���Ű��ɽð� : �������� 17��</span></p>
         </div>

      </div><!-- watch_select //-->
      <!-- ������ ���� //-->

      <div class="arrow"></div><!-- arrow //-->
      <!-- ver 1 -->
      <div class="ver1">
         <div class="watch_time">
            <h3 class="title2"><img src="http://ticketimage.interpark.com/TicketImage/onestop/stit_watch.gif" alt="ȸ�� (�����ð�)" /></h3>
            <div class="scrollY">
               <span id="TagPlaySeq" name="TagPlaySeq"><div class="none">���� ��������<br/>������ �ּ���.</div></span>
            </div>
         </div>
         
         <div id="RemainArea">
            <div class="watch_info">
               <h3 class="stit"><img src="http://ticketimage.interpark.com/TicketImage/onestop/stit_seat.gif" alt="�¼���� / �ܿ��� " /></h3>
               <div class="scrollY">
                  <span id="TagRemainSeat" name="TagRemainSeat"><div class="none">ȸ�� ���� ��<br/>Ȯ�� ���� �մϴ�.</div></span>
               </div>
            </div>
         </div>
      </div>
      <!-- ver 1 //-->
      <!-- //���ǻ��� -->
      <div class="watch_note">
         <h3 class="stit"><img src="http://ticketimage.interpark.com/TicketImage/onestop/stit_note.gif" alt="���ǻ���" /></h3>
         <ul>
            
            <li>�����, ���������� ���ε���� ��� ������ɸ� �����մϴ�.<br />����ε�����̳� ����ī�� Ȯ�� �� Ƽ���� ����մϴ�. �������� ���������� ������ �� �����ϴ�.</li>
            
            <li>���������� ����Ͽ� ������ Ƽ���� �κ���Ұ� �Ұ��մϴ�.</li>
            
            <li>������ ���� �Ʒ��ð������� ��� �����մϴ�.<br />
             - �������� ����/�Ͽ���/������ ���� 5��, ����� ���� 11�� (��,������� �������� ���� ���� 11��)<br />
             - ���ϰ��� ��ǰ���Žô� ��ҺҰ��մϴ�. <br />
              - ��Ҽ������ ��Ұ������ڴ� ��ǰ���� �ٸ���, ������ �ϴ� My���������� Ȯ�����ֽñ� �ٶ��ϴ�.</li>
            <li>ATM���δ� ��������Ա��� �� �Ǵ� ��찡 ������ ������ �Ա� ���Ե��� ���ͳ� ��ŷ, ����ŷ�� �����ø� �ٸ� ���������� ������ �ֽñ� �ٶ��ϴ�.</li>

         </ul>
      </div><!-- watch_note //-->
      <!-- ���ǻ��� //-->
      <!-- //�⿬�� -->
      <div class="CastingInfo" id="CastingInfoDiv" style="display:none;">
         <span id="CastingInfoName"></span>
         <a href="javascript:;" class="btnMore" onclick="fnCastingShow(true)"><span>������</span></a>
      </div>
      <!-- �⿬�� //-->
      <!-- //ĳ���� ���̾� -->
      <div class="CastingLayer" style="display:none;" id="CastingListDiv">
         <div class="ctTitle">
            <a href="javascript:;" class="btn_close" onclick="fnCastingShow(false)"><span>���̾�ݱ�</span></a>
            <span id="CastingDateInfo"></span>
            <a href="/Ticket/Goods/CastingBridge.asp?GoodsCode=14004550" class="btn_more" target="_blank"><span>��� �⿬�� ����</span></a>
         </div>
         <ul class="ctList">
            <span id="CastingList"></span>
         </ul>
         <p class="ctNotice">* ĳ���� ������ ��� �� ���ۻ��� ������ ���� �������� ���� ����� �� �ֽ��ϴ�.</p>
      </div>
      <!-- ĳ���� ���̾� //-->
   </div>
   <form id="formCalendar" name="formCalendar" method="get" action="BookDateTime.asp">
      <input type="hidden" id="GoodsCode" name="GoodsCode" value="14004550">
      <input type="hidden" id="PlaceCode" name="PlaceCode" value="14000508">
      <input type="hidden" id="OnlyDeliver" name="OnlyDeliver" value="68001">
      <input type="hidden" id="DBDay" name="DBDay" value="12">
      <input type="hidden" id="ExpressDelyDay" name="ExpressDelyDay" value="0">
      <input type="hidden" id="YM" name="YM" value="201408">
      <input type="hidden" id="PlayDate" name="PlayDate" value="20140823">
      <input type="hidden" id="KindOfGoods" name="KindOfGoods" value="01003">
      <input type="hidden" id="BizCode" name="BizCode" value="WEBBR">
      <input type="hidden" id="Tiki" name="Tiki" value="N">
      <input type="hidden" id="Always" name="Always" value="N">
      <input type="hidden" id="HotSaleOrNot" name="HotSaleOrNot" value="N">
      <input type="hidden" id="PlaySeq" name="PlaySeq" value="001">
      <input type="hidden" id="PlayTime" name="PlayTime" value="">
      <input type="hidden" id="CancelableDate" name="CancelableDate" value="">
   </form>
 </body>
</html>