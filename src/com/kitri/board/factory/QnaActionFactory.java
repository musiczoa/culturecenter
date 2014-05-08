package com.kitri.board.factory;

import com.kitri.board.action.Action;
import com.kitri.board.qna.action.*;

public class QnaActionFactory {
	
	private static Action writeAction;
	private static Action viewAction;
	private static Action listAction;
	private static Action replyAction;
	private static Action mvReplyAction;
	private static Action mvModifyAction;
	private static Action modifyAction;
	private static Action deleteAction;
	
	static {
		writeAction = new WriteAction();
		viewAction = new ViewAction();
		listAction = new ListAction();
		replyAction = new ReplyAction();
		mvReplyAction = new MvReplyAction();
		mvModifyAction = new MvModifyAction();
		modifyAction = new ModifyAction();
//		deleteAction = new DeleteAction();	
	}
	
	private QnaActionFactory (){} //�ܺο��� �����Ҽ������� �ϱ� ����
	//Ŭ������ �������� �ʾƵ� ������ ����ƽ�̱� ������ �����ִ�.

	public static Action getWriteAction() {
		return writeAction;
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

	public static Action getMvReplyAction() {
		return mvReplyAction;
	}

	public static Action getMvModifyAction() {
		return mvModifyAction;
	}
	
	
	
}
