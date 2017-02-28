package com.band.domain;

public class BandAccount {
	private int id;
	private int accountId;
	private int bandId;
	private String bandAccountImgUrl;
	private String nickname;
	private String profile;
	
	public int getId(){ return id; }
	public void setId(int id){ this.id = id; }
	
	public int getAccountId(){ return accountId; }
	public void setAccountId(int accountId){ this.accountId = accountId; }
	
	public int getBandId(){ return bandId; }
	public void setBandId(int bandId){ this.bandId = bandId; }
	
	public String getBandAccountImgUrl(){ return bandAccountImgUrl; }
	public void setBandAccountImgUrl(String bandAccountImgUrl){ this.bandAccountImgUrl = bandAccountImgUrl; }
	
	public String getNickname(){ return nickname; }
	public void setNickname(String nickname){ this.nickname = nickname; }
	
	public String getProfile(){ return profile; }
	public void setProfile(String profile){ this.profile = profile;}
    
}
