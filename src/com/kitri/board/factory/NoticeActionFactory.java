package com.kitri.board.factory;

import com.kitri.board.action.Action;
import com.kitri.board.notice.action.*;



public class NoticeActionFactory {
	
	private static Action writeAction;
	private static Action viewAction;
	private static Action listAction;
	private static Action replyAction;
	private static Action modifyAction;
	private static Action MvModifyAction;
	private static Action deleteAction;
	
	static{
		writeAction = new WriteAction();
		viewAction = new ViewAction();
		listAction = new ListAction();
		modifyAction = new ModifyAction();
		deleteAction = new DeleteAction();
		MvModifyAction = new MvModifyAction();
	}
	
	public static Action getMvModifyAction() {
		return MvModifyAction;
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

