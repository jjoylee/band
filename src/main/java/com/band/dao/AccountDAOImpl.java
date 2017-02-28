package com.band.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.band.domain.Account;

@Repository
public class AccountDAOImpl implements AccountDAO{

	private static final String namespace ="com.band.mapper.AccountMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void insert(Account vo) throws Exception {
		sqlSession.insert(namespace + ".insert", vo);
	}

	@Override
	public void update(Account vo) throws Exception {
		sqlSession.update(namespace + ".update", vo);
	}

	@Override
	public void changePwd(Account vo) throws Exception {
		sqlSession.update(namespace + ".changePwd", vo);
	}

	@Override
	public void delete(Account vo) throws Exception {
		sqlSession.delete(namespace + ".delete", vo);
	}

	@Override
	public String findPwd(Account vo) throws Exception {
		return sqlSession.selectOne(namespace+".findPwd", vo);
	}

	@Override
	public Account findByAccountId(int id) throws Exception {
		  return sqlSession.selectOne(namespace +".findByAccountId", id);
	}

	@Override
	public Account findByEmail(String email) throws Exception {
		  return sqlSession.selectOne(namespace +".findByEmail", email);
	}
}
