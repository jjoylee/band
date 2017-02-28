package com.band.dao;

import java.util.List;

import com.band.domain.Post;

public interface PostDAO {
	public void insert(Post vo) throws Exception;
	
	public void update(Post vo) throws Exception;
	
	public void delete(Post vo) throws Exception;
	
	public List<Post> findPostList(int id) throws Exception;
}
