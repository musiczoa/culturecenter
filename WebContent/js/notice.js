var root = "/culturecenter";
//var root = request.getContextPath();

function goWrite() {
	// document.location.href = root + "/reboard?act=mvwrite&bcode=" + bcode +
	// "&pg=1";
	document.commonForm.act.value = "mvwrite";
	document.commonForm.pg.value = "1";
	document.commonForm.key.value = "";
	document.commonForm.word.value = "";

	document.commonForm.action = root + "/notice";
	document.commonForm.submit();
}

function goView(bcode, pg, seq){
	document.location.href = root+"/notice?act=view&bcode="+bcode+"&pg="+pg+"&seq="+seq;
}

function goPage(pg) {
//	document.location.href = root + "/reboard?act=list&bcode=" + bcode + "&pg="	+ pg;
	document.commonForm.act.value = "noticeList";
	document.commonForm.pg.value = pg;

	document.commonForm.action = root + "/notice";
	document.commonForm.submit();
}

function goFirstPage() {
//	document.location.href = root + "/reboard?act=list&bcode=" + bcode + "&pg="	+ pg;
	document.commonForm.act.value = "noticeList";
	document.commonForm.pg.value = "1";
	document.commonForm.key.value = "";
	document.commonForm.word.value = "";

	document.commonForm.action = root + "/notice";
	document.commonForm.submit();
}

function goBbsSearch() {
	if(document.searchForm.word.value ==""){
		alert("검색어를 입력하시오");
		return;
	}else{
//	document.location.href = root + "/reboard?act=list&bcode=" + bcode + "&pg="	+ pg;
	document.searchForm.action = root + "/notice";
	document.searchForm.submit();}
}



