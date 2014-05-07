package com.kitri.board.service;

import java.util.*;

import com.kitri.board.model.QnaDto;
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
	public List<QnaDto> listArticle(int pg) {
		List<QnaDto> list = new ArrayList<QnaDto>();
		int end = pg * Constant.LIST_COUNT;
		int start = end - Constant.LIST_COUNT;
		
		return QnaDaoImpl.getInstance().listArticle(start,end);
	}

	@Override
	public List<QnaDto> searchArticle(int pg, int bcode, String key, String word) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public QnaDto getArticle(int seq, String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int replyArticle(QnaDto qnaDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyArticle(QnaDto qnaDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteArticle(int seq) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int writeArticle(QnaDto qnaDto) {
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
