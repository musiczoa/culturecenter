var root = "/culturecenter";

function goWrite(bcode){
	document.location.href = root+"/notice?act=mvwrite&bcode="+bcode+"&pg=1";
}

function goView(bcode, pg, seq){
	document.location.href = root+"/notice?act=view&bcode="+bcode+"&pg="+pg+"&seq="+seq;
}