package com.kitri.member.factory;

public class MemberFactory {
	
	private static Action joinAction;
	private static Action modifyAction;
	private static Action deleteAction;
	
	static{
		joinAction=new JoinAction(); //����
		modifyAction=new ModifyAction(); //����
		deleteAction=new DeleteAction(); //Ż��

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

	
	
	
}
