package com.kitri.culture.factory;

import com.kitri.action.Action;
import com.kitri.culture.action.*;

public class PerActionFactory {
	
	private static Action listAction;
	private static Action infoAction;
	private static Action infoPop;
	
	static{
		listAction = new PerListAction();
		infoAction = new perInfoAction();
		infoPop = new infoPopAction();
	}
	
	private PerActionFactory(){}	

	public static Action getListAction() {
		return listAction;
	}

	public static Action getInfoAction() {
		return infoAction;
	}

	public static Action getInfoPop() {
		return infoPop;
	}
}
