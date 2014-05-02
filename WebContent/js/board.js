var root = "/culturecenter";

function goWrite(bcode){
	document.location.href = root+"/notice?act=mvwrite&bcode="+bcode+"&pg=1";
}

function goView(bcode, pg, seq){
	document.location.href = root+"/notice?act=view&bcode="+bcode+"&pg="+pg+"&seq="+seq;
}

function goPage(bcode, pg){
	documnet.location.href = root+"/notice?act=noticeList&bcode="+bcode+"&pg="+pg;
	
}