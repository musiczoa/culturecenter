package com.kitri.member.factory;

import com.kitri.action.Action;
import com.kitri.member.action.DeleteAction;
import com.kitri.member.action.JoinAction;
import com.kitri.member.action.LoginAction;
import com.kitri.member.action.ModifyAction;
import com.kitri.member.action.MvLoginAction;

public class MemberFactory {
	
	private static Action joinAction;
	private static Action modifyAction;
	private static Action deleteAction;
	private static Action loginAction;
	private static Action mvloginAction;
	
	static{
		joinAction=new JoinAction(); //°¡ÀÔ
		modifyAction=new ModifyAction(); //¼öÁ¤
		deleteAction=new DeleteAction(); //Å»Åð
		loginAction=new LoginAction();
		mvloginAction= new MvLoginAction();
		
	}
	
	
	
	private MemberFactory(){}

	public static Action getJoinAction() {
		return joinAction;
	}

	public static Action getModifyAction() {
		return modifyAction;
	}

	public static Action getDeleteAction() {
		return deleteAction;
	}

	public static Action getLoginAction() {
		return loginAction;
	}

	public static Action getMvloginAction() {
		return mvloginAction;
	}

	
	

	
	
	
}
