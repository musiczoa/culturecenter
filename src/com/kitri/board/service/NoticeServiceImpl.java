package com.kitri.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kitri.board.model.NoticeDto;
import com.kitri.board.model.dao.NoticeDaoImpl;
import com.kitri.util.Constant;
import com.kitri.util.PageNavigation;

public class NoticeServiceImpl implements NoticeService {
	
	private static NoticeServiceImpl service;
	
	static{
		service = new NoticeServiceImpl();
	}
	
	private NoticeServiceImpl(){}
	
	public static NoticeServiceImpl getInstance(){
		return service;
	}

	@Override
	public List<NoticeDto> listNotice(int bcode, int pg, String key, String word) {
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("bcode", bcode+"");
		int end = pg*Constant.LIST_COUNT;
		int start = end - Constant.LIST_COUNT;
		
		map.put("start", start+"");
		map.put("end", end+"");		
		map.put("key", key);
		map.put("word", word);
		
		return NoticeDaoImpl.getinstance().listArticle(map);
	}

	@Override
	public int writeNotice(NoticeDto noticeDto) {
		int seq = NoticeDaoImpl.getinstance().getNextSeq();
		if(seq != 0){
			noticeDto.setSeq(seq);
			seq = NoticeDaoImpl.getinstance().writeArticle(noticeDto);
		}
		
		return seq;
	}

	@Override
	public int deleteNotice(NoticeDto noticeDto) {
		int cnt = 0;
		int seq = noticeDto.getSeq();
		int bcode = noticeDto.getBcode();
		cnt = NoticeDaoImpl.getinstance().deleteArticle(seq, bcode);
		return cnt;
	}

	@Override
	public int modifyNotice(NoticeDto noticeDto) {
		int seq = noticeDto.getSeq();
		if(seq != 0){
			seq = NoticeDaoImpl.getinstance().modifyArticle(noticeDto);
		}
		return seq;
	}

	@Override
	public NoticeDto getNotice(int seq, String id) {
		System.out.println("서비스임플에서"+seq);
		
		NoticeDto noticeDto = NoticeDaoImpl.getinstance().getArticle(seq);
		if(id != null && !noticeDto.getId().equals(id))
			NoticeDaoImpl.getinstance().updateHit(seq);
		
		return noticeDto;
	}

	@Override
	public PageNavigation makePageNavi(int bcode, int pg, String key,String word) {
		PageNavigation pageNavi = new PageNavigation();
		
		int newArticleCount = NoticeDaoImpl.getinstance().getNewArticleCount(bcode);
		pageNavi.setNewArticleCount(newArticleCount);
		
		Map<String, String> map = new HashMap<String, String>();		
		map.put("bcode", bcode+"");
		map.put("key", key);
		map.put("word", word);
		
		int totalArticleCount = NoticeDaoImpl.getinstance().getTotalArticleCount(map);
		pageNavi.setTotalArticleCount(totalArticleCount);
		
		int totalPageCount = (totalArticleCount-1)/Constant.LIST_COUNT+1;
		pageNavi.setTotalpageCount(totalPageCount);
		
		pageNavi.setCurrentPage(pg);
		pageNavi.setNowFirst(pg<=Constant.PAGE_COUNT);
		pageNavi.setNowEnd((totalPageCount-1)/Constant.PAGE_COUNT*Constant.PAGE_COUNT+1 <= pg);	
		
		return pageNavi;
	}

}
