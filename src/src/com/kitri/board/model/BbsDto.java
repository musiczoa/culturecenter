package com.kitri.board.model;

public class BbsDto extends BoardDto {
	private int bseq;
	private String orignFile;
	private String saveFile;
	private long filesize;
	private String saveFolder;
	
	public int getBseq() {
		return bseq;
	}
	public void setBseq(int bseq) {
		this.bseq = bseq;
	}
	public String getOrignFile() {
		return orignFile;
	}
	public void setOrignFile(String orignFile) {
		this.orignFile = orignFile;
	}
	public String getSaveFile() {
		return saveFile;
	}
	public void setSaveFile(String saveFile) {
		this.saveFile = saveFile;
	}
	public long getFilesize() {
		return filesize;
	}
	public void setFilesize(long filesize) {
		this.filesize = filesize;
	}
	public String getSaveFolder() {
		return saveFolder;
	}
	public void setSaveFolder(String saveFolder) {
		this.saveFolder = saveFolder;
	}
	
	
	
}
