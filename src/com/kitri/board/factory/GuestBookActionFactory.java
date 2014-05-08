package com.kitri.board.factory;

import com.kitri.action.Action;
import com.kitri.board.guestbook.action.DeleteAction;
import com.kitri.board.guestbook.action.ListAction;
import com.kitri.board.guestbook.action.ModifyAction;
import com.kitri.board.guestbook.action.WriteAction;

public class GuestBookActionFactory {

	private static Action writeAction;
	private static Action listAction; //�ۺ���
	private static Action modifyAction; // ����
	private static Action deleteAction; //����
	
	
	static{
		
		writeAction=new WriteAction();
		listAction=new ListAction();
		modifyAction=new ModifyAction();
		deleteAction=new DeleteAction();
		
	}
	
private GuestBookActionFactory(){}

public static Action getWriteAction() {
	return writeAction;
}

public static Action getListAction() {
	return listAction;
}

public static Action getModifyAction() {
	return modifyAction;
}

public static Action getDeleteAction() {
	return deleteAction;
}

}
