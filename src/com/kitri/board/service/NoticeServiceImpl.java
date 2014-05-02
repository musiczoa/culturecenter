package com.kitri.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kitri.board.model.NoticeDto;
import com.kitri.board.model.dao.NoticeDaoImpl;
import com.kitri.util.Constant;

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
	public List<NoticeDto> listNotice(int bcode, int pg) {
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("bcode", bcode+"");
		int end = pg*Constant.LIST_COUNT;
		int start = end - Constant.LIST_COUNT;
		
		map.put("start", start+"");
		map.put("end", end+"");		
		
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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyNotice(NoticeDto noticeDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public NoticeDto getNotice(int seq, String id) {
		NoticeDto noticeDto = NoticeDaoImpl.getinstance().getArticle(seq);
		return noticeDto;
	}

}
