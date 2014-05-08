package com.kitri.board.factory;

import com.kitri.board.action.Action;
import com.kitri.board.notice.action.DeleteAction;
import com.kitri.board.notice.action.ListAction;
import com.kitri.board.notice.action.ModifyAction;
import com.kitri.board.notice.action.ViewAction;
import com.kitri.board.notice.action.WriteAction;



public class ReviewActionFactory {
	
	private static Action writeAction;
	private static Action viewAction;
	private static Action listAction;
	private static Action replyAction;
	private static Action modifyAction;
	private static Action deleteAction;
	
	static{
		writeAction = new WriteAction();
		viewAction = new ViewAction();
		listAction = new ListAction();
		modifyAction = new ModifyAction();
		deleteAction = new DeleteAction();		
	}
	
	public static Action getWriteAction() {
		return writeAction;//실질적으로 writeAction은 WriteAction()이다.
	}

	public static Action getViewAction() {
		return viewAction;
	}

	public static Action getListAction() {
		return listAction;
	}

	public static Action getReplyAction() {
		return replyAction;
	}

	public static Action getModifyAction() {
		return modifyAction;
	}

	public static Action getDeleteAction() {
		return deleteAction;
	}
	 

}
