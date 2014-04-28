package com.kitri.board.service;

import java.util.*;

import com.kitri.board.model.ReboardDto;
import com.kitri.board.model.dao.ReboardDaoImpl;
import com.kitri.util.Constant;

public class ReboardServiceImpl implements ReboardService {
	
//////////////////// �̱������� ////////////////////////// ��ü�� �ϳ��� ������
	
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
		return ReboardDaoImpl.getInstance().listArticle(map); // �����Ͱ� ���������� �ٲ���־�. �׶����� �ʾȿ� �߰��ϸ� �Ǵϱ� �ʽ�ߵ�
	}

	@Override
	public ReboardDto getArticle(int seq, String id) {
//		ReboardDaoImpl.getInstance().updateHit(seq); // �ڱ�͵� ��ȸ�� ������Ʈ�� ����
//		return ReboardDaoImpl.getInstance().getArticle(seq);
		
//		ReboardDto reboardDto = ReboardDaoImpl.getInstance().getArticle(seq);
//		ReboardDaoImpl.getInstance().updateHit(seq); // �ڱ�͵� ��ȸ�� ������Ʈ�� ���Ե����� �ڱ����� �Ⱥ���. �ۺ��� ���� �ö�
//		return reboardDto;
		
		ReboardDto reboardDto = ReboardDaoImpl.getInstance().getArticle(seq);
		if(!reboardDto.getId().equals(id))
			ReboardDaoImpl.getInstance().updateHit(seq); // �ڱ�͵� ��ȸ�� ������Ʈ�� ���Ե����� �ڱ����� �Ⱥ���. �ۺ��� ���� �ö�
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
