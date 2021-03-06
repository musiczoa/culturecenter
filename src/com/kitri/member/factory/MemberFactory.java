package com.kitri.member.factory;

import com.kitri.action.Action;
import com.kitri.member.action.DeleteAction;
import com.kitri.member.action.JoinAction;
import com.kitri.member.action.LoginAction;
import com.kitri.member.action.ModifyAction;
import com.kitri.member.action.MvLoginAction;
import com.kitri.member.action.SearchAction;

public class MemberFactory {
	
	private static Action joinAction;
	private static Action modifyAction;
	private static Action deleteAction;
	private static Action loginAction;
	private static Action mvloginAction;
	private static Action searchAction;
	
	static{
		joinAction=new JoinAction(); //����
		modifyAction=new ModifyAction(); //����
		deleteAction=new DeleteAction(); //Ż��
		loginAction=new LoginAction();
		mvloginAction= new MvLoginAction();
		searchAction=new SearchAction();
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

	public static Action getSearchAction() {
		return searchAction;
	}

	
	

	
	
	
}
