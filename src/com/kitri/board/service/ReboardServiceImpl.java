package com.kitri.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kitri.board.model.ReboardDto;
import com.kitri.board.model.dao.NoticeDaoImpl;
import com.kitri.board.model.dao.ReboardDaoImpl;
import com.kitri.util.Constant;
import com.kitri.util.PageNavigation;

public class ReboardServiceImpl implements ReboardService {
	// /////////////싱글톤패턴(객체를 하나만 생성하게 하는것)//////////////
	private static ReboardServiceImpl service;

	static {
		service = new ReboardServiceImpl();
	}

	private ReboardServiceImpl() {
	}

	public static ReboardServiceImpl getInstance() {
		return service;
	}

	// /////////////싱글톤패턴(객체를 하나만 생성하게 하는것)//////////////

	@Override
	public int writeArticle(ReboardDto reboardDto) {
		int seq = ReboardDaoImpl.getInstance().getNextSeq();
		if (seq != 0) {
			reboardDto.setSeq(seq);
			reboardDto.setRef(seq);

			seq = ReboardDaoImpl.getInstance().writeArticle(reboardDto);
		}
		return seq;
	}

	@Override
	public List<ReboardDto> listArticle(int bcode, int pg, String key,
			String word) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("bcode", bcode + "");
		int end = pg * Constant.LIST_COUNT;
		int start = end - Constant.LIST_COUNT;
		map.put("start", start + "");
		map.put("end", end + "");
		map.put("key", key + "");
		map.put("word", word + "");

		return ReboardDaoImpl.getInstance().listArticle(map);
	}

	@Override
	public PageNavigation makePageNavi(int bcode, int pg, String key,
			String word) {
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
		pageNavi.setTotalPageCount(totalPageCount);
		
		pageNavi.setCurrentPage(pg);
		pageNavi.setNowFirst(pg<=Constant.PAGE_COUNT);
		pageNavi.setNowEnd((totalPageCount-1)/Constant.PAGE_COUNT*Constant.PAGE_COUNT+1 <= pg);	
		
		return pageNavi;
	}

	@Override
	public ReboardDto getArticle(int seq, String nickname) {
		ReboardDto reboardDto = ReboardDaoImpl.getInstance().getArticle(seq);
		if (nickname!=null && !reboardDto.getNickname().equals(nickname)) {
			ReboardDaoImpl.getInstance().updateHit(reboardDto.getSeq());
		}

		return reboardDto;
	}

	@Override
	public int replyArticle(ReboardDto reboardDto) {
		int seq = ReboardDaoImpl.getInstance().getNextSeq();
		if (seq != 0) {
			reboardDto.setSeq(seq);

			seq = ReboardDaoImpl.getInstance().replyArticle(reboardDto);
		}
		return seq;
	}

	@Override
	public int modifyArticle(ReboardDto reboardDto) {
		return ReboardDaoImpl.getInstance().modifyArticle(reboardDto);
	}

	@Override
	public int deleteArticle(int seq) {
		System.out.println("서비스 삭제 입장");
		// 만약 리플라이가 0일경우만 실행
		int reply = ReboardDaoImpl.getInstance().replyCount(seq);
		int count =0;
		if(reply==0){
			System.out.println("서비스 이프문 입장");
			count = ReboardDaoImpl.getInstance().deleteArticle(seq);
		}
		System.out.println("서비스에서 카운트 결과값:"+count);
		return count;
	}

}
