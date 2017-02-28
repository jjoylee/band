package com.band.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.band.domain.BandAccount;

@Repository
public class BandAccountDAOImpl implements BandAccountDAO{
	private static final String namespace ="com.band.mapper.BandAccountMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void insert(BandAccount vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	@Override
	public void update(BandAccount vo) throws Exception {
		sqlSession.update(namespace + ".update" , vo); 
	}

	@Override
	public void delete(BandAccount vo) throws Exception {
		sqlSession.delete(namespace + ".delete", vo);
	}

	@Override
	public int countBand(int id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".countBand",id);
	}

}
