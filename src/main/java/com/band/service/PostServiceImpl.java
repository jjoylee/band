package com.band.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.band.dao.PostDAO;
import com.band.domain.Post;
@Service
public class PostServiceImpl implements PostService{

	@Inject
	private PostDAO dao;
	
	@Override
	public void insert(Post vo) throws Exception {
		dao.insert(vo);
	}

	@Override
	public void update(Post vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void delete(Post vo) throws Exception {
		dao.delete(vo);
	}

	@Override
	public List<Post> findPostList(int id) throws Exception {
		// TODO Auto-generated method stub
		return dao.findPostList(id);
	}
}