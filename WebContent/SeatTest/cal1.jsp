<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" href="./include/css/jquery-ui-1.8.21.custom.css" rel="stylesheet" />
<script type="text/javascript" src="./include/js/jquery-1.7.2.min.js"></script>    
<script type="text/javascript" src="./include/js/jquery-ui-1.8.21.custom.min.js"></script><!--�޷¿�-->1
<script type="text/javascript" src="./include/js/jquery.ui.datepicker-ko.js"></script><!--�޷¿�-->
 <script>
 $(function() {
  $( "#datepicker" ).datepicker({
    changeMonth: true,    //�޷� ����Ʈ �ڽ� ����
    changeYear: true     //�� ����Ʈ �ڽ� ����
    showButtonPanel: true,   //�޷¾Ʒ� �ݱ� ��ư ���ð��� ��ư ���
    dateFormat: "yy-mm-dd" //��¥ ��� ����
    maxDate : '+1m'   //---�Ѵ� ���� ������ ���ð���
  });
//   $( "#datepicker2" ).datepicker({   //�޷� 2���� �ʿ��� �� ���
             showOn: 'button'       //��ưŬ�� �� �޷� ��. both�� ����ϸ� input�̳� ��ư �Ѵ� Ŭ�� �� �޷� ��.
             buttonImage: 'url'       //�̹��� url
//   });
 });
 </script>
</head>
<body>
  <div>
   <input type="text" id="datepicker">
<!--    <input type="text" id="datepicker2"> --><!-- �޷� �� �� ��� �� -->
  </div>
</body>
</html>