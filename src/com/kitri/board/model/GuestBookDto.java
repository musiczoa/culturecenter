package com.kitri.board.model;

public class GuestBookDto {

	private int gseq;  //�۹�ȣ 
	private String content; //����
	private String name;  //�۾��� �̸�
	private String id;    //���̵�
	private String logtime;  //�ۼ�����
	
	public int getGseq() {
		return gseq;
	}
	public void setGseq(int gseq) {
		this.gseq = gseq;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLogtime() {
		return logtime;
	}
	public void setLogtime(String logtime) {
		this.logtime = logtime;
	}
	
	
}
