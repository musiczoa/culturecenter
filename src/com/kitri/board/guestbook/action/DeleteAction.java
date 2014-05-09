package com.kitri.board.guestbook.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.action.Action;
import com.kitri.board.model.GuestBookDto;
import com.kitri.board.service.GuestBookServiceImpl;
import com.kitri.util.StringCheck;

public class DeleteAction implements Action {

   @Override
   public String action(HttpServletRequest request,
         HttpServletResponse response) {
      GuestBookDto guestbookDto= new GuestBookDto();
      guestbookDto.setBcode(StringCheck.nullToZero(request.getParameter("bcode")));
      guestbookDto.setSeq(StringCheck.nullToZero(request.getParameter("seq")));
      
      int cnt=GuestBookServiceImpl.getInstance().deleteNotice(guestbookDto);
      
      return cnt ==0? "/community/guestbook/guestdeleteFail.jsp?" : "/community/guestbook/guestdeleteOk.jsp?";
   }
}