package com.band.domain;

public class Account {
	private int id;
	private String name;
	private String email;
	private String password;
	private String imgUrl;
	private String profile;
	
	public int getId(){ return id; }
	public void setId(int id){ this.id = id; }
	
	public String getName(){ return name; }
	public void setName(String name){ this.name = name; }
	
	public String getEmail(){ return email; }
	public void setEmail(String email){ this.email = email; }
	
	public String getPassword(){ return password; }
	public void setPassword(String password){ this.password = password; }
	
	public String getImgUrl(){ return imgUrl; }
	public void setImgUrl(String imgUrl){ this.imgUrl = imgUrl; }
	
	public String getProfile() { return profile; }
	public void setProfile(String profile) { this.profile = profile; }
}
