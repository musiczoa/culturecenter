package com.kitri.member.factory;

public class MemberFactory {
	
	private static Action joinAction;
	private static Action modifyAction;
	private static Action deleteAction;
	
	static{
		joinAction=new JoinAction(); //°¡ÀÔ
		modifyAction=new ModifyAction(); //¼öÁ¤
		deleteAction=new DeleteAction(); //Å»Åð

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
