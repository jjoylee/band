package com.band.service;

import org.springframework.stereotype.Service;

import com.band.domain.Comment;
@Service
public interface CommentService {
	public void insert(Comment vo) throws Exception;
	
	public void update(Comment vo) throws Exception;
	
	public void delete(Comment vo) throws Exception;
	
}
