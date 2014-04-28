package com.kitri.board.service;

import java.util.*;

import com.kitri.board.model.ReboardDto;
import com.kitri.board.model.dao.ReboardDaoImpl;
import com.kitri.util.Constant;

public class ReboardServiceImpl implements ReboardService {
	
//////////////////// 싱글톤패턴 ////////////////////////// 객체를 하나만 만들자
	
	private static ReboardServiceImpl service;
	
	static {
		service = new ReboardServiceImpl();
	}
	
	private ReboardServiceImpl(){}
	
	public static ReboardServiceImpl getInstance() {
		return service;
	}
////////////////////////////////////////////////////////////////////////////

	@Override
	public int writeArticle(ReboardDto reboardDto) {
		int seq = ReboardDaoImpl.getInstance().getNextSeq();
		if(seq != 0){
			reboardDto.setSeq(seq);
			reboardDto.setRef(seq);
			
			seq = ReboardDaoImpl.getInstance().writeArticle(reboardDto);
		}
		return seq;
	}

	@Override
	public List<ReboardDto> listArticle(int bcode, int pg, String key, String word) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("bcode", bcode+"");
		int end = pg * Constant.LIST_COUNT;
		int start = end - Constant.LIST_COUNT;
		map.put("start", start+"");
		map.put("end", end+"");
		map.put("key", key);
		map.put("word", word);
		return ReboardDaoImpl.getInstance().listArticle(map); // 데이터가 유동적으로 바뀔수있어. 그때마다 맵안에 추가하면 되니까 맵써야돼
	}

	@Override
	public ReboardDto getArticle(int seq, String id) {
//		ReboardDaoImpl.getInstance().updateHit(seq); // 자기것도 조회수 업데이트에 포함
//		return ReboardDaoImpl.getInstance().getArticle(seq);
		
//		ReboardDto reboardDto = ReboardDaoImpl.getInstance().getArticle(seq);
//		ReboardDaoImpl.getInstance().updateHit(seq); // 자기것도 조회수 업데이트에 포함되지만 자기한텐 안보여. 글보고 나면 올라감
//		return reboardDto;
		
		ReboardDto reboardDto = ReboardDaoImpl.getInstance().getArticle(seq);
		if(!reboardDto.getId().equals(id))
			ReboardDaoImpl.getInstance().updateHit(seq); // 자기것도 조회수 업데이트에 포함되지만 자기한텐 안보여. 글보고 나면 올라감
		return reboardDto;
	}

	@Override
	public int replyArticle(ReboardDto reboardDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyArticle(ReboardDto reboardDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteArticle(int seq) {
		// TODO Auto-generated method stub
		return 0;
	}

}
