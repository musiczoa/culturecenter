<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" href="./include/css/jquery-ui-1.8.21.custom.css" rel="stylesheet" />
<script type="text/javascript" src="./include/js/jquery-1.7.2.min.js"></script>    
<script type="text/javascript" src="./include/js/jquery-ui-1.8.21.custom.min.js"></script><!--달력용-->1
<script type="text/javascript" src="./include/js/jquery.ui.datepicker-ko.js"></script><!--달력용-->
 <script>
 $(function() {
  $( "#datepicker" ).datepicker({
    changeMonth: true,    //달력 셀렉트 박스 유무
    changeYear: true     //년 셀렉트 박스 유무
    showButtonPanel: true,   //달력아래 닫기 버튼 오늘가기 버튼 출력
    dateFormat: "yy-mm-dd" //날짜 출력 형식
    maxDate : '+1m'   //---한달 이후 까지만 선택가능
  });
//   $( "#datepicker2" ).datepicker({   //달력 2개가 필요할 때 사용
             showOn: 'button'       //버튼클릭 시 달력 뜸. both를 사용하면 input이나 버튼 둘다 클릭 시 달력 뜸.
             buttonImage: 'url'       //이미지 url
//   });
 });
 </script>
</head>
<body>
  <div>
   <input type="text" id="datepicker">
<!--    <input type="text" id="datepicker2"> --><!-- 달력 두 개 사용 시 -->
  </div>
</body>
</html>