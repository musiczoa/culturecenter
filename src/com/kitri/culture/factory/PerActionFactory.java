package com.kitri.culture.factory;

import com.kitri.action.Action;
import com.kitri.culture.action.PerListAction;
import com.kitri.culture.action.perInfoAction;

public class PerActionFactory {
	
	private static Action listAction;
	private static Action infoAction;
	
	static{
		listAction = new PerListAction();
		infoAction = new perInfoAction();
	}
	
	private PerActionFactory(){}	

	public static Action getListAction() {
		return listAction;
	}

	public static Action getInfoAction() {
		return infoAction;
	}
	
	
	
	

}
