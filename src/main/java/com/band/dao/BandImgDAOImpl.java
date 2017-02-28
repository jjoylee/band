package com.band.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.band.domain.BandImg;
@Repository
public class BandImgDAOImpl implements BandImgDAO{
	private static final String namespace ="com.band.mapper.BandImgMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void insert(BandImg vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	@Override
	public void update(BandImg vo) throws Exception {
		sqlSession.update(namespace + ".update" , vo); 
	}

	@Override
	public void delete(BandImg vo) throws Exception {
		sqlSession.delete(namespace + ".delete", vo);
	}

	@Override
	public BandImg findByImgUrl(String bandImgUrl) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".findByImgUrl", bandImgUrl);
	}

}
