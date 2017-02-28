package com.band.dao;

import com.band.domain.Comment;

public interface CommentDAO {
	public void insert(Comment vo) throws Exception;
	
	public void update(Comment vo) throws Exception;
	
	public void delete(Comment vo) throws Exception;
}
