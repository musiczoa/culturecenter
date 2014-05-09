/**
 * 
 */
var root = "/culturecenter";

function goPopup() {
	var popwidth   = "800";
    var popheight  = "600"; 
    var leftPos       = (screen.width)  ? (screen.width-popwidth)/2   : 0;
    var topPos      = (screen.height) ? (screen.height-popheight)/2 : 0;   
    var winName   = "øπ∏≈√¢";
 
    var features   = 'left='+ leftPos+', top='+ topPos;
          features  += ',location=no, directories=no, menubar=no, scrollbars=auto';
          features  += ',width='+ popwidth+ ',height='+ popheight;
          
    var reqUrl       = root+"/SeatTest-KH/seatMaker/ch.jsp";
    window.open(reqUrl, winName, features);
}