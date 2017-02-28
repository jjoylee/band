package com.band.domain;

import java.util.Calendar;

public class Post {
	private int id;
	private int bandId;
	private int accountId;
	private String text;
	private String writer;
	private Calendar writeDate;
	
	public int getId(){ return id; }
	public void setId(int id){ this.id = id; }
	
	public int getBandId(){ return bandId; }
	public void setBandId(int bandId){ this.bandId = bandId; }
	
	public int getAccountId(){ return accountId; }
	public void setAccountId(int accountId){ this.accountId = accountId; }
	
	public String getText(){ return text; }
	public void setText(String text){ this.text = text; }
	
	public String getWriter(){ return writer; }
	public void setWriter(String writer){ this.writer = writer; } 
	
	public Calendar getWriteDate(){ return writeDate; }
	public void setWriteDate(Calendar writeDate){ this.writeDate = writeDate; }
	
}
