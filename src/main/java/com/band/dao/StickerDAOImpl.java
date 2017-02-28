package com.band.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.band.domain.Sticker;
@Repository
public class StickerDAOImpl implements StickerDAO{
	private static final String namespace ="com.band.mapper.StickerMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void insert(Sticker vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	@Override
	public void update(Sticker vo) throws Exception {
		sqlSession.update(namespace + ".update" , vo); 
	}

	@Override
	public void delete(Sticker vo) throws Exception {
		sqlSession.delete(namespace + ".delete", vo);
	}

	@Override
	public Sticker findSticker(Sticker vo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".findSticekr", vo);
	}

}
