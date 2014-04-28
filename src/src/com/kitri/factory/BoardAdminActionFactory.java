package com.kitri.factory;

import com.kitri.board.action.Action;
import com.kitri.board.admin.action.*;

public class BoardAdminActionFactory {
	private static Action boardListAction;
	private static Action makeCategoryAction;
	private static Action makeBoardAction;

	static {
		boardListAction = new BoardListAction();
		makeCategoryAction = new MakeCategoryAction();
		makeBoardAction = new MakeBoardAction();
	}
	
	private BoardAdminActionFactory(){}

	public static Action getBoardListAction() {
		return boardListAction;
	}

	public static Action getMakeCategoryAction() {
		return makeCategoryAction;
	}

	public static Action getMakeBoardAction() {
		return makeBoardAction;
	}
}
