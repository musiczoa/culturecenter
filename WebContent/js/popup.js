/**
 * 
 */
var root = "/culturecenter";

function goSpace1(ctype, seq) {
	var popwidth   = "800";
    var popheight  = "600"; 
    var leftPos    = (screen.width)  ? (screen.width-popwidth)/2   : 0;
    var topPos     = (screen.height) ? (screen.height-popheight)/2 : 0;   
    var winName    = "예매창";
 
    var features   = 'left='+ leftPos+', top='+ topPos;
          features  += ',location=no, directories=no, menubar=no, scrollbars=auto';
          features  += ',width='+ popwidth+ ',height='+ popheight;
          
    var reqUrl       = root+"/SeatTest/space1/note.jsp?ctype="+ctype+"&seq="+seq;
//    var Url       = root+"/perform?act=infoPop&ctype="+ctype+"&seq="+seq;
//    document.location = root+"/perform?act=infoPop&ctype="+ctype+"&seq="+seq;
//    alert(Url);
//    var reqUrl    = reqUrl;
//    window.open(document.location, winName, features);
    window.open(reqUrl, winName, features);
}

function goSpace2(summary, date, space, time, age, price) {
	var popwidth   = "800";
    var popheight  = "600"; 
    var leftPos    = (screen.width)  ? (screen.width-popwidth)/2   : 0;
    var topPos     = (screen.height) ? (screen.height-popheight)/2 : 0;   
    var winName    = "예매창";
 
    var features   = 'left='+ leftPos+', top='+ topPos;
          features  += ',location=no, directories=no, menubar=no, scrollbars=auto';
          features  += ',width='+ popwidth+ ',height='+ popheight;
          
//	document.infoForm.action = root + "/SeatTest/space1/ch_form.jsp";
//	document.infoForm.submit();
          alert(space);
          
    var reqUrl       = root+"/SeatTest/space1/note.jsp?date="+date+"&summary="+summary+"&space="+space
    +"&time="+time+"&age="+age+"&price="+price;
    
//    var Url       = root+"/perform?act=infoPop&ctype="+ctype+"&seq="+seq;
//    document.location = root+"/perform?act=infoPop&ctype="+ctype+"&seq="+seq;
//    alert(Url);
//    var reqUrl    = reqUrl;
//    window.open(document.location, winName, features);
    window.open(reqUrl, winName, features);
}