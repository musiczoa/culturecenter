package com.kitri.util;

public class PageNavigation {
	
	private String root;
	private int newArticleCount;
	private int totalArticleCount;
	private int currentPage;
	private int totalPageCount;
	private boolean NowFirst;
	private boolean NowEnd;
	private String navigator;
	
	public String getRoot() {
		return root;
	}
	public void setRoot(String root) {
		this.root = root;
	}
	public int getNewArticleCount() {
		return newArticleCount;
	}
	public void setNewArticleCount(int newArticleCount) {
		this.newArticleCount = newArticleCount;
	}
	public int getTotalArticleCount() {
		return totalArticleCount;
	}
	public void setTotalArticleCount(int totalArticleCount) {
		this.totalArticleCount = totalArticleCount;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getTotalpageCount() {
		return totalPageCount;
	}
	public void setTotalpageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}
	public boolean isNowFirst() {
		return NowFirst;
	}
	public void setNowFirst(boolean nowFirst) {
		NowFirst = nowFirst;
	}
	public boolean isNowEnd() {
		return NowEnd;
	}
	public void setNowEnd(boolean nowEnd) {
		NowEnd = nowEnd;
	}
	public String getNavigator() {
		return navigator;
	}
	public void setNavigator() {
		StringBuffer tmpNavigator = new StringBuffer();

		tmpNavigator.append("<table cellpadding='0' cellspacing='0' border='0'>\n");
		tmpNavigator.append(" <tr>\n");
		if (this.isNowFirst()) {//현재 페이지가 첫페이지 속해있으면 최신목록은 살아있지만 이전은 클릭 못하게 해야함.
			tmpNavigator.append("  <td><font color='#999999'>\n<a href=\"javascript:goFirstPage();\">");//최신목록을 불러옴.
			tmpNavigator.append("   <img src='" + root + "/img/board/icon_prev02.gif' width='7' height='11' border='0' align='absmiddle' hspace='3'>최신목록</a>\n");
			tmpNavigator.append("   <img src='" + root + "/img/board/icon_prev01_dim.gif' width='3' height='11' border='0' align='absmiddle' hspace='3'>\n");
			tmpNavigator.append("   이전</font>\n");
		} else {//현재 페이지가 첫페이지가 속해있지 않은 페이징이면 최신목록과 이전 버튼을 누를수 있게 해야함.
			tmpNavigator.append("  <td>\n<a href=\"javascript:goFirstPage();\">");//그 리스트의 처음으로 보내라
			tmpNavigator.append("   <img src='" + root + "/img/board/icon_prev02.gif' width='7' height='11' border='0' align='absmiddle' hspace='3'>최신목록 </a>\n");
			tmpNavigator.append("   <a href=\"javascript:goPage('"+((currentPage-1)/Constant.PAGE_COUNT*Constant.PAGE_COUNT)+"');\">");//전 페이징의 끝 페이지로 이동하는 공식
			tmpNavigator.append("   <img src='" + root + "/img/board/icon_prev01_dim.gif' width='3' height='11' border='0' align='absmiddle' hspace='3'>\n");
			tmpNavigator.append("   이전</a>");
		}
		tmpNavigator.append("  \n</td>\n");
		tmpNavigator.append("  <td style='padding: 0 5 0 5'>\n");
		tmpNavigator.append("   <table cellpadding='0' cellspacing='0' border='0'>\n");
		tmpNavigator.append("    <tr>\n");
		tmpNavigator.append("     <td width='1' nowrap><img src='" + root + "/img/board/n_tab.gif' width='1'");
		tmpNavigator.append(" height='11' border='0' align='absmiddle'><br>");
		tmpNavigator.append("     </td>\n");
		
		int startPage = (currentPage-1)/Constant.PAGE_COUNT*Constant.PAGE_COUNT+1;//한 페이징의 처음 페이지
		int endPage = startPage + Constant.PAGE_COUNT-1 ;//한 페이징의 끝 페이지
		if(endPage >= totalPageCount)//끝 페이징의 끝 페이지(딱 10,20,30으로 안끝날수도 있으니깐)
			endPage = totalPageCount;
		
		for (int i = startPage; i <= endPage; i++) {
			if (currentPage == i) {//현재 페이지이면 그 페이지는 특이하게 보이기
				tmpNavigator.append("     <td style='padding:0 7 0 7;' nowrap><font class='text_acc_02'><b>" + i + "</b></font></td>\n");
				tmpNavigator.append("     <td width='1' nowrap><img src='" + root + "/img/board/n_tab.gif' width='1'");
				tmpNavigator.append(" height='11' border='0' align='absmiddle'><br>\n");
			} else {//나머지 페이지는 그냥 기본 형식
				tmpNavigator.append("     <td style='padding:0 7 0 7;' nowrap><a href=\"javascript:goPage('" + i + "');\">" + i + "</td>\n");
				tmpNavigator.append("     <td width='1' nowrap><img src='" + root + "/img/board/n_tab.gif' width='1'");
				tmpNavigator.append(" height='11' border='0' align='absmiddle'><br>\n");
			}
		}
		tmpNavigator.append("     </td>\n");
		tmpNavigator.append("    </tr>\n");
		tmpNavigator.append("   </table>\n");
		tmpNavigator.append("  </td>\n");
		tmpNavigator.append("  <td>\n");
		
		if (this.isNowEnd()) {//마지막 페이징이면 다음이랑, 끝목록 안눌러지게 처리
			tmpNavigator.append("   <font color='#999999'>다음<img");
			tmpNavigator.append("   src='" + root + "/img/board/icon_next01_dim.gif' width='3' height='11'");
			tmpNavigator.append(" border='0' align='absmiddle' hspace='3'> \n");
			tmpNavigator.append("   끝목록<img src='" + root + "/img/board/icon_next02_dim.gif' width='7' height='11'");
			tmpNavigator.append(" border='0' align='absmiddle' hspace='3'></font>\n");
		} else {//마지막 페이징이 아니면 다음이랑, 끝 목록 눌러지게 처리
			tmpNavigator.append("   <a href=\"javascript:goPage('" + ((currentPage+Constant.PAGE_COUNT-1)/Constant.PAGE_COUNT*Constant.PAGE_COUNT+1) + "');\">다음<img");
									//다음 페이징의 첫번째 페이지를 선택하는 공식
			tmpNavigator.append(" src='" + root + "/img/board/icon_next01_dim.gif' width='3' height='11'");
			tmpNavigator.append(" border='0' align='absmiddle' hspace='3'></a>\n");
			tmpNavigator.append("   <a href=\"javascript:goPage('" + totalPageCount + "');\">끝목록<img src='" + root + "/img/board/icon_next02_dim.gif' width='7' height='11'");
									//완전 끝 페이지로 이동
			tmpNavigator.append(" border='0' align='absmiddle' hspace='3'>\n");
		}

		tmpNavigator.append("  </td>\n");
		tmpNavigator.append(" </tr>\n");
		tmpNavigator.append("</table>\n");

		this.navigator = tmpNavigator.toString();
	}
	

}
