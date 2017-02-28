package com.band.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.band.domain.Post;
@Repository
public class PostDAOImpl implements PostDAO{
	private static final String namespace ="com.band.mapper.PostMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void insert(Post vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	@Override
	public void update(Post vo) throws Exception {
		sqlSession.update(namespace + ".update" , vo); 
	}

	@Override
	public void delete(Post vo) throws Exception {
		sqlSession.delete(namespace + ".delete", vo);
	}

	@Override
	public List<Post> findPostList(int id) throws Exception {

		return sqlSession.selectList(namespace + ".findPostList", id);
	}

}
