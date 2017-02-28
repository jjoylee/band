package com.band.domain;

public class StickerPost {
	private int id;
	private int stickerId;
	private int postId;
	
	public int getId(){ return id; }
	public void setId(int id){ this.id = id; }
	
	public int getStickerId(){ return stickerId; }
	public void setStickerId(int stickerId){ this.stickerId = stickerId; }
    
	public int getPostId(){ return postId; }
	public void setPostId(int postId){ this.postId = postId; }
}