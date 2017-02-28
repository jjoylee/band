package com.band.domain;

public class Comment {
	private int id;
	private int accountId;
	private int postId;
	private String comment;
	
	public int getId(){ return id; }
	public void setId(int id){ this.id = id; }
	
	public int getAccountId(){ return accountId; }
	public void setAccountId(int accountId){ this.accountId = accountId; }
	
	public int getPostId(){ return postId; }
	public void setPostId(int postId){ this.postId = postId; }

	public String getComment(){ return comment; }
	public void setComment(String comment){ this.comment = comment; }
}
