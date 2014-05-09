package com.kitri.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kitri.board.model.GuestBookDto;
import com.kitri.board.model.dao.GuestBookDaoImpl;
import com.kitri.util.Constant;
import com.kitri.util.PageNavigation;

public class GuestBookServiceImpl implements GuestBookService {

   
   private static GuestBookServiceImpl service;
   
   static{
      service = new GuestBookServiceImpl();
   }
   
   private GuestBookServiceImpl(){}
   
   public static GuestBookServiceImpl getInstance(){
      return service;
   }

   
   @Override
   public List<GuestBookDto> listGuest(int bcode, int pg) {
      Map<String,String> map =new HashMap<String,String>();
      map.put("bcode", bcode+"");
      int end=pg*Constant.LIST_COUNT;
      int start=end-Constant.LIST_COUNT;
      map.put("start", start+"");
      map.put("end", end+"");
      
      return GuestBookDaoImpl.getinstance().listArticle(map);
   }

   @Override
   public int writeGuestBook (GuestBookDto guestbookDto) {
      int seq = GuestBookDaoImpl.getinstance().getNextSeq();
      if(seq != 0){
         guestbookDto.setSeq(seq);
         seq = GuestBookDaoImpl.getinstance().writeArticle(guestbookDto);
      }
      
      return seq;
   }

   @Override
   public int deleteNotice(GuestBookDto guestbookDto) {
      int cnt = 0;
      int seq = guestbookDto.getSeq();
      int bcode =guestbookDto.getBcode();
      cnt = GuestBookDaoImpl.getinstance().deleteArticle(seq, bcode);
      return cnt;
   }

   @Override
   public int modifyNotice(GuestBookDto guestbookDto) {
	   int seq = guestbookDto.getSeq();
		if(seq != 0){
			seq = GuestBookDaoImpl.getinstance().modifyArticle(guestbookDto);
		}
		return seq;
	}

   @Override
   public GuestBookDto getGuest(int seq, String id) {
    System.out.println("guetserviceimpl=="+seq+"id:"+id);
    GuestBookDto guestbookDto= GuestBookDaoImpl.getinstance().getArticle(seq);
      return guestbookDto;
   }

   @Override
   public PageNavigation makePageNavi(int bcode, int pg) {
      // TODO Auto-generated method stub
      return null;
   }

//   @Override
//   public PageNavigation makePageNavi(int bcode, int pg) {
//   PageNavigation pageNavi = new PageNavigation();
//      
//      int newArticleCount = NoticeDaoImpl.getinstance().getNewArticleCount(bcode);
//      pageNavi.setNewArticleCount(newArticleCount);
//      
//      Map<String, String> map = new HashMap<String, String>();      
//      map.put("bcode", bcode+"");
//      
//      int totalArticleCount = NoticeDaoImpl.getinstance().getTotalArticleCount(map);
//      pageNavi.setTotalArticleCount(totalArticleCount);
//      
//      int totalPageCount = (totalArticleCount-1)/Constant.LIST_COUNT+1;
//      pageNavi.setTotalpageCount(totalPageCount);
//      
//      pageNavi.setCurrentPage(pg);
//      pageNavi.setNowFirst(pg<=Constant.PAGE_COUNT);
//      pageNavi.setNowEnd((totalPageCount-1)/Constant.PAGE_COUNT*Constant.PAGE_COUNT+1 <= pg);   
//      
//      return pageNavi;
//   }

}