package com.kitri.board.model;

public class AlbumDto extends BoardDto {
	private int aseq;
	private String orignPicture;
	private String savePicture;
	private String saveFloder;
	private int type;
	
	public int getAseq() {
		return aseq;
	}
	public void setAseq(int aseq) {
		this.aseq = aseq;
	}
	public String getOrignPicture() {
		return orignPicture;
	}
	public void setOrignPicture(String orignPicture) {
		this.orignPicture = orignPicture;
	}
	public String getSavePicture() {
		return savePicture;
	}
	public void setSavePicture(String savePicture) {
		this.savePicture = savePicture;
	}
	public String getSaveFloder() {
		return saveFloder;
	}
	public void setSaveFloder(String saveFloder) {
		this.saveFloder = saveFloder;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	
	

}
