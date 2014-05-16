<%@page import="com.kitri.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
     <%@ include file="/menu_source/menubar.jsp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="content-type" content="text/html; charset=EUC-KR" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<title>:: 키트리문화회관 ::</title>
<link rel="stylesheet" type="text/css" media="screen" href="../jq.css" />
<link rel="stylesheet" type="text/css" media="screen" href="cycle.css" />
<style type="text/css">
#main h2 { text-align: center }
#right { cursor: pointer }
#c2 { margin: 20px 0; padding: 20px; background: #FFFFB2; font-size: 24px; text-align: center}
</style>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
<script type="text/javascript" src="http://malsup.github.com/chili-1.7.pack.js"></script>
<script type="text/javascript" src="http://malsup.github.com/jquery.cycle.all.js"></script>
<script type="text/javascript" src="http://malsup.github.com/jquery.easing.1.3.js"></script>
<script type="text/javascript">
$.fn.cycle.defaults.speed   = 800;
$.fn.cycle.defaults.timeout = 3000;

$(function() {
    // run the code in the markup!
    $('#demos pre code').each(function() {
        eval($(this).text());
    });

});
</script>
</head>
<body>
<center>
<div id="demos">
    <table cellspacing="20"><tr><td width="500">

        <div id="fade" class="pics">
            <img src="main/bgImages/1.gif" width="450" height="350" />
            <img src="main/bgImages/2.gif" width="450" height="350" />
            <img src="main/bgImages/3.jpg" width="450" height="350" />
            <img src="main/bgImages/4.jpg" width="450" height="350" />
            <img src="main/bgImages/5.jpg" width="450" height="350" />
            <img src="main/bgImages/6.jpg" width="450" height="350" />
            <img src="main/bgImages/7.jpg" width="450" height="350" />
        </div>
        <font color="white"><pre><code class="mix">$('#fade').cycle();</code></pre></font>
    </td>
    <td width="600">
    <a class="twitter-timeline"  href="https://twitter.com/search?q=%23%EC%84%B8%EC%A2%85%EB%AC%B8%ED%99%94%ED%9A%8C%EA%B4%80"  data-widget-id="463507045543464960">"#키트리문화회관" 관련 트윗</a>
    <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>

	
    </td>
    </tr>
    </table>
</div>

<script src="http://www.google-analytics.com/urchin.js" type="text/javascript"></script>
<script type="text/javascript">
_uacct = "UA-850242-2";
urchinTracker();
</script>
</center>
</body>
</html>