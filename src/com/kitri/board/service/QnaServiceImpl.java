package com.kitri.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import com.kitri.board.model.BoardListDto;
import com.kitri.board.model.QnaDto;
import com.kitri.board.model.dao.QnaDaoImpl;
import com.kitri.util.Constant;
import com.kitri.util.PageNavigation;

public class QnaServiceImpl implements QnaService {
	// /////////////싱글톤패턴(객체를 하나만 생성하게 하는것)//////////////
	private static QnaServiceImpl service;

	static {
		service = new QnaServiceImpl();
	}

	private QnaServiceImpl() {
	}

	public static QnaServiceImpl getInstance() {
		return service;
	}

	// /////////////싱글톤패턴(객체를 하나만 생성하게 하는것)//////////////

	@Override
	public int writeArticle(QnaDto reboardDto) {
		int seq = QnaDaoImpl.getInstance().getNextSeq();
		if (seq != 0) {
			reboardDto.setSeq(seq);
			reboardDto.setRef(seq);

			seq = QnaDaoImpl.getInstance().writeArticle(reboardDto);
		}
		return seq;
	}

	@Override
	public List<QnaDto> listArticle(int bcode, int pg, String key,
			String word) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("bcode", bcode + "");
		int end = pg * Constant.LIST_COUNT;
		int start = end - Constant.LIST_COUNT;
		map.put("start", start + "");
		map.put("end", end + "");
		map.put("key", key + "");
		map.put("word", word + "");

		return QnaDaoImpl.getInstance().listArticle(map);
	}

	@Override
	public PageNavigation makePageNavi(int bcode, int pg, String key,
			String word) {
		PageNavigation pageNavi = new PageNavigation();
		int newArticleCount = QnaDaoImpl.getInstance().getNewArticleCount(
				bcode);
		pageNavi.setNewArticleCount(newArticleCount);

		Map<String, String> map = new HashMap<String, String>();
		map.put("bcode", bcode + "");
		map.put("key", key + "");
		map.put("word", word + "");
		int totalArticleCount = QnaDaoImpl.getInstance()
				.getTotalArticleCount(map);
		pageNavi.setTotalArticleCount(totalArticleCount);
		
		int totalPageCount = (totalArticleCount-1)/Constant.LIST_COUNT+1;
		pageNavi.setTotalpageCount(totalPageCount);

		
		pageNavi.setCurrentPage(pg);
		
		pageNavi.setNowFirst(pg<=Constant.PAGE_COUNT);
		pageNavi.setNowEnd(pg >= (totalPageCount-1)/Constant.PAGE_COUNT*Constant.PAGE_COUNT+1);

		return pageNavi;
	}

	@Override
	public QnaDto getArticle(int seq, String id) {
		QnaDto reboardDto = QnaDaoImpl.getInstance().getArticle(seq);
		if (id!=null && !reboardDto.getId().equals(id)) {
			QnaDaoImpl.getInstance().updateHit(reboardDto.getSeq());
		}

		return reboardDto;
	}

	@Override
	public int replyArticle(QnaDto reboardDto) {
		int seq = QnaDaoImpl.getInstance().getNextSeq();
		if (seq != 0) {
			reboardDto.setSeq(seq);

			seq = QnaDaoImpl.getInstance().replyArticle(reboardDto);
		}
		return seq;
	}

	@Override
	public int modifyArticle(QnaDto reboardDto) {
		return QnaDaoImpl.getInstance().modifyArticle(reboardDto);
	}

	@Override
	public int deleteArticle(int seq) {
		// 만약 리플라이가 0일경우만 실행
		int reply = QnaDaoImpl.getInstance().replyCount(seq);
		int count =0;
		if(reply==0){
			count = QnaDaoImpl.getInstance().deleteArticle(seq);
		}
		return count;
	}

}
