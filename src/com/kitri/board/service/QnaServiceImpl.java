package com.kitri.board.service;

import java.util.*;

import com.kitri.board.model.ReboardDto;
import com.kitri.board.model.dao.QnaDaoImpl;
import com.kitri.util.Constant;


public class QnaServiceImpl implements QnaService{
	
	private static QnaServiceImpl service;
	
	static{
		service = new QnaServiceImpl();
	}
	
	private QnaServiceImpl(){}
	
	public static QnaServiceImpl getInstance(){
		return service;
	}

	@Override
	public List<ReboardDto> listArticle(int pg) {
		List<ReboardDto> list = new ArrayList<ReboardDto>();
		int end = pg * Constant.LIST_COUNT;
		int start = end - Constant.LIST_COUNT;
		
		return QnaDaoImpl.getInstance().listArticle(start,end);
	}

	@Override
	public List<ReboardDto> searchArticle(int pg, int bcode, String key, String word) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ReboardDto getArticle(int seq, String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int replyArticle(ReboardDto qnaDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyArticle(ReboardDto qnaDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteArticle(int seq) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int writeArticle(ReboardDto qnaDto) {
		int seq;
		seq = QnaDaoImpl.getInstance().getNextSeq();
		if(seq!=0){
			qnaDto.setSeq(seq);
			qnaDto.setRef(seq);
			seq = QnaDaoImpl.getInstance().writeArticle(qnaDto);
		}
		
		return seq;
	}

}
