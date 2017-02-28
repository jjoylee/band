package com.band.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.band.domain.Post;
@Service
public interface PostService {
	public void insert(Post vo) throws Exception;
	
	public void update(Post vo) throws Exception;
	
	public void delete(Post vo) throws Exception;
	
	public List<Post> findPostList(int id) throws Exception;
}
