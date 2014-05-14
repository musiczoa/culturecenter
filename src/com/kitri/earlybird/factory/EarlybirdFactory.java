package com.kitri.earlybird.factory;

import com.kitri.action.Action;
import com.kitri.earlybird.create.action.ListAction;

public class EarlybirdFactory {

	private static Action listAction;

	static {

		listAction = new ListAction();

	}

	private EarlybirdFactory() {
	}

	public static Action getListAction() {
		return listAction;
	}
	
	
}
