var root = "/culturecenter";


function goWrite() {
	//document.location.href = root + "/reboard?act=mvwrite&bcode=" + bcode + "&pg=1";
	document.commonForm.act.value = "mvwrite";
	document.commonForm.pg.value = "1";
	document.commonForm.key.value = "";
	document.commonForm.word.value = "";
	
	document.commonForm.action = root + "/rboard";
	document.commonForm.submit();
}

function goReply(seq) {
	document.commonForm.act.value = "mvreply";
	document.commonForm.seq.value = seq;
	
	document.commonForm.action = root + "/rboard";
	document.commonForm.submit();
}

function goView(seq, isl) {
	if(isl == 0) {
		alert("회원전용입니다.\n로그인후 글보기가능합니다.");
		return;
	} else {
		//document.location.href = root + "/reboard?act=view&bcode=" + bcode + "&pg=" + pg + "&seq=" + seq;
		document.commonForm.act.value = "view";
		document.commonForm.seq.value = seq;
		
		document.commonForm.action = root + "/rboard";
		document.commonForm.submit();
	}
}

function goPage(pg) {
	//document.location.href = root + "/reboard?act=list&bcode=" + bcode + "&pg=" + pg;
	document.commonForm.act.value = "list";
	document.commonForm.pg.value = pg;
	
	document.commonForm.action = root + "/rboard";
	document.commonForm.submit();
}

function goFirstPage() {
	//document.location.href = root + "/reboard?act=list&bcode=" + bcode + "&pg=" + pg;
	document.commonForm.act.value = "list";
	document.commonForm.pg.value = "1";
	document.commonForm.key.value = "";
	document.commonForm.word.value = "";
	
	document.commonForm.action = root + "/rboard";
	document.commonForm.submit();
}

function goMyList(id) {
	//document.location.href = root + "/reboard?act=list&bcode=" + bcode + "&pg=" + pg;
	document.commonForm.act.value = "list";
	document.commonForm.pg.value = "1";
	document.commonForm.key.value = "id";
	document.commonForm.word.value = id;
	
	document.commonForm.action = root + "/rboard";
	document.commonForm.submit();
}

function goBbsSearch() {
	if(document.searchForm.word.value == "") {
		alert("검색어를 입력하세요!!!");
		return;
	} else {
		document.searchForm.action = root + "/rboard";
		document.searchForm.submit();
	}
}

















