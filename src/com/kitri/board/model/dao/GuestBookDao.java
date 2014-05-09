package com.kitri.board.model.dao;

import java.util.List;
import java.util.Map;

import com.kitri.board.model.GuestBookDto;

public interface GuestBookDao {

   public int getNextSeq(); // 글번호가져오기

   public int writeArticle(GuestBookDto guestbookDto); //글쓰기

   public List<GuestBookDto> listArticle(Map<String, String> map); //방명록뿌리기

   public GuestBookDto getArticle(int seq); 

   public int modifyArticle(GuestBookDto guestbookDto); //수정
 
   public int deleteArticle(int seq,int bcode); //삭제

}