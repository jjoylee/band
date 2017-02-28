package com.band.domain;

public class Band {
	private int id;
	private String name;
	private int bandCoverId;
	private int leaderAccountId;
	private String color;
	private String imgUrl;
	
	public int getId(){ return id; }
	public void setId(int id){ this.id =id; }
	
	public String getName(){ return name; }
	public void setName(String name){ this.name = name; }
	
	public int getBandCoverId(){ return bandCoverId; }
	public void setBandCoverId(int bandCoverId){ this.bandCoverId = bandCoverId; }
	
	public int getLeaderAccountId(){ return leaderAccountId; }
	public void setLeaderAccountId(int leaderAccountId){ this.leaderAccountId = leaderAccountId; }

	public String getColor(){ return color; }
	public void setColor(String color){ this.color = color; }
	
	public String getImgUrl(){ return imgUrl; }
	public void setImgUrl(String imgUrl){ this.imgUrl = imgUrl; }
}
