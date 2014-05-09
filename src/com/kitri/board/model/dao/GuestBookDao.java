package com.kitri.board.model.dao;

import java.util.List;
import java.util.Map;

import com.kitri.board.model.GuestBookDto;

public interface GuestBookDao {

   public int getNextSeq(); // �۹�ȣ��������

   public int writeArticle(GuestBookDto guestbookDto); //�۾���

   public List<GuestBookDto> listArticle(Map<String, String> map); //���ϻѸ���

   public GuestBookDto getArticle(int seq); 

   public int modifyArticle(GuestBookDto guestbookDto); //����
 
   public int deleteArticle(int seq,int bcode); //����

}