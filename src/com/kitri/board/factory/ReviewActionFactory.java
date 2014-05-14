package com.kitri.board.factory;


import com.kitri.board.action.Action;
import com.kitri.board.review.action.*;

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
		 replyAction = new ReplyAction();
		 modifyAction = new ModifyAction();
		 deleteAction = new DeleteAction();
	 }
	
	 private ReviewActionFactory(){}

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
	 
	 

}
