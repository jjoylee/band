package com.band.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.band.domain.StickerPost;
@Repository
public class StickerPostDAOImpl implements StickerPostDAO{
	private static final String namespace ="com.band.mapper.StickerPostMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void insert(StickerPost vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	@Override
	public void update(StickerPost vo) throws Exception {
		sqlSession.update(namespace + ".update" , vo); 
	}

	@Override
	public void delete(StickerPost vo) throws Exception {
		sqlSession.delete(namespace + ".delete", vo);
	}

	@Override
	public StickerPost findStickerPost(StickerPost vo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".findStickerPost", vo);
	}

	
}
