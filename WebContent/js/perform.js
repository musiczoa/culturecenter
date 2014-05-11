var root = "/culturecenter";
//var root = request.getContextPath();


function goPage(pg) {
//	document.location.href = root + "/reboard?act=list&bcode=" + bcode + "&pg="	+ pg;
	document.commonForm.act.value = "perList";
	document.commonForm.pg.value = pg;
	document.commonForm.action = root + "/perform";
	document.commonForm.submit();
}

function goFirstPage() {
//	document.location.href = root + "/reboard?act=list&bcode=" + bcode + "&pg="	+ pg;
	document.commonForm.act.value = "perList";
	document.commonForm.pg.value = "1";	
	document.commonForm.word.value = "";
	document.commonForm.action = root + "/perform";
	document.commonForm.submit();
}

function perList(){
	  if(document.searchForm.word.value ==""){
			alert("검색어를 입력하시오");
			return;
		}else{		
		document.searchForm.action = root + "/perform";
		document.searchForm.submit();
		}	  
}



