package com.band.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.band.domain.BandCover;
@Repository
public class BandCoverDAOImpl implements BandCoverDAO{
	private static final String namespace ="com.band.mapper.BandCoverMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void insert(BandCover vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	@Override
	public void update(BandCover vo) throws Exception {
		sqlSession.update(namespace + ".update" , vo); 
	}

	@Override
	public void delete(BandCover vo) throws Exception {
		sqlSession.delete(namespace + ".delete", vo);
	}

	@Override
	public BandCover findBandCover(BandCover vo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".findBandCover", vo);
	}

}
