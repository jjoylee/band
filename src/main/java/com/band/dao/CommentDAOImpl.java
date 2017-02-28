package com.band.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.band.domain.Comment;
@Repository
public class CommentDAOImpl implements CommentDAO{
	private static final String namespace ="com.band.mapper.CommentMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void insert(Comment vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	@Override
	public void update(Comment vo) throws Exception {
		sqlSession.update(namespace + ".update" , vo); 
	}

	@Override
	public void delete(Comment vo) throws Exception {
		sqlSession.delete(namespace + ".delete", vo);
	}

}
