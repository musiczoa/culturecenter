<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

    
<% String root1 = request.getContextPath(); %>

<link rel='stylesheet' type='text/css' href='/board/boardmenustyles.css'/>

<style>
@import url(http://fonts.googleapis.com/css?family=Lato:300,400,700);
/* Starter CSS for Flyout Menu */
#boardmenu,
#boardmenu ul,
#boardmenu ul li,
#boardmenu ul ul {
  list-style: none;
  margin: 0;
  padding: 0;
  border: 0;
}
#boardmenu ul {
  position: relative;
  z-index: 597;
  float: left;
}
#boardmenu ul li {
  float: left;
  min-height: 1px;
  line-height: 1em;
  vertical-align: middle;
}
#boardmenu ul li.hover,
#boardmenu ul li:hover {
  position: relative;
  z-index: 599;
  cursor: default;
}
#boardmenu ul ul {
  margin-top: 1px;
  visibility: hidden;
  position: absolute;
  top: 1px;
  left: 99%;
  z-index: 598;
  width: 100%;
}
#boardmenu ul ul li {
  float: none;
}
#boardmenu ul ul ul {
  top: 1px;
  left: 99%;
}
#boardmenu ul li:hover > ul {
  visibility: visible;
}
#boardmenu ul li {
  float: none;
}
#boardmenu ul ul li {
  font-weight: normal;
}
/* Custom CSS Styles */
#boardmenu {
  font-family: 'Malgun', Gothic,dotum,sans-serif; 
  font-size: 15px;
  width: 170px;
}
#boardmenu ul a,
#boardmenu ul a:link,
#boardmenu ul a:visited {
  display: block;
  color: #848889;
  text-decoration: none;
  font-weight: 300;
}
#boardmenu > ul {
  float: none;
}
#boardmenu ul {
  background: #fff;
}
#boardmenu > ul > li {
  border-left: 3px solid #d7d8da;
}
#boardmenu > ul > li > a {
  padding: 10px 20px;
}
#boardmenu > ul > li:hover {
  border-left: 3px solid #5ecfeb;
}
#boardmenu ul li:hover > a {
  color: #5ecfeb;
}
#boardmenu > ul > li:hover {
  background: #f6f6f6;
}
/* Sub Menu */
#boardmenu ul ul a:link,
#boardmenu ul ul a:visited {
  font-weight: 400;
  font-size: 14px;
}
#boardmenu ul ul {
  width: 180px;
  background: none;
  border-left: 20px solid transparent;
}
#boardmenu ul ul a {
  padding: 8px 0;
  border-bottom: 1px solid #eeeeee;
}
#boardmenu ul ul li {
  padding: 0 20px;
  background: #fff;
}
#boardmenu ul ul li:last-child {
  border-bottom: 3px solid #d7d8da;
  padding-bottom: 10px;
}
#boardmenu ul ul li:first-child {
  padding-top: 10px;
}
#boardmenu ul ul li:last-child > a {
  border-bottom: none;
}
#boardmenu ul ul li:first-child:after {
  content: '';
  display: block;
  width: 0;
  height: 0;
  position: absolute;
  left: -20px;
  top: 13px;
  border-left: 10px solid transparent;
  border-right: 10px solid #fff;
  border-bottom: 10px solid transparent;
  border-top: 10px solid transparent;
}

</style>

</head>
<body>


<left>

<div id='boardmenu'>
<ul>
   <li class='active'><a href='<%=root1%>/notice?act=noticeList&bcode=1&pg=1'><span>공지사항</span></a></li>
   <li class='has-sub'><a href="<%=root1%>/notice?act=noticeList&bcode=1&pg=1"><span>커뮤니티</span></a>
      <ul>
         <li class='has-sub'><a href='#'><span>Product 1</span></a>
            <ul>
               <li><a href='#'><span>Sub Item</span></a></li>
               <li class='last'><a href='#'><span>Sub Item</span></a></li>
            </ul>
         </li>
         <li class='has-sub'><a href='#'><span>Product 2</span></a>
            <ul>
               <li><a href='#'><span>Sub Item</span></a></li>
               <li class='last'><a href='#'><span>Sub Item</span></a></li>
            </ul>
         </li>
      </ul>
   </li>
   <li><a href='#'><span>갤러리</span></a></li>
   <li><a href='<%=root1%>/guest?act=list&bcode=3&pg=1'><span>공연/전시 후기</span></a></li>
   <li><a href='#'><span>미디어게시판</span></a></li>
   <li><a href='<%=root1%>/reboard?act=list&pg=1'><span>QnA</span></a></li>
   <li><a href='<%=root1%>/guest?act=list&bcode=4&pg=1'><span>방명록</span></a></li>

</ul>
</div>

</left>


</body>
</html>