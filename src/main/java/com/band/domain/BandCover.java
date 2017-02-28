package com.band.domain;

public class BandCover {
	private int id;
	private int bandImgId;
	private String color;
	
	public int getId(){ return id; }
	public void setId(int id){ this.id =id; }
	
	public int getBandImgId(){ return bandImgId; }
	public void setBandImgId(int bandImgId){ this.bandImgId = bandImgId; }
	
	public String getColor(){ return color; }
	public void setColor(String color){ this.color = color; }
}
