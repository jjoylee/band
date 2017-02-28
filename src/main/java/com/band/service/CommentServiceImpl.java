package com.band.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.band.dao.CommentDAO;
import com.band.domain.Comment;
@Service
public class CommentServiceImpl implements CommentService{

	@Inject
	private CommentDAO dao;
	
	@Override
	public void insert(Comment vo) throws Exception {
		dao.insert(vo);
	}

	@Override
	public void update(Comment vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void delete(Comment vo) throws Exception {
		dao.delete(vo);
	}
}