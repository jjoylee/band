package com.band.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.band.domain.Band;
@Repository
public class BandDAOImpl implements BandDAO{
	private static final String namespace ="com.band.mapper.BandMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void insert(Band vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	@Override
	public void update(Band vo) throws Exception {
		sqlSession.update(namespace + ".update" , vo); 
	}

	@Override
	public void delete(Band vo) throws Exception {
		sqlSession.delete(namespace + ".delete", vo);
	}

	@Override
	public Band findBand(Band vo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".findBand", vo);
	}

	@Override
	public List<Band> findBandList(int id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".findBandList", id);
	}

	@Override
	public Band findBandForBoard(int id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".findBandForBoard", id);
	}
	
}
