package com.band.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.band.dao.AccountDAO;
import com.band.domain.Account;

@Service
public class AccountServiceImpl implements AccountService{

	@Inject
	private AccountDAO dao;
	
	@Override
	public void insert(Account vo)throws Exception {
		dao.insert(vo);
	}

	@Override
	public void update(Account vo)throws Exception {
		dao.update(vo);
	}

	@Override
	public void changePwd(Account vo) throws Exception {
		dao.changePwd(vo);
	}

	@Override
	public void delete(Account vo) throws Exception {
		dao.delete(vo);
	}

	@Override
	public String findPwd(Account vo) throws Exception {
		return dao.findPwd(vo);
	}

	@Override
	public Account findByEmail(String email) throws Exception {
		return dao.findByEmail(email);
	}

	@Override
	public Account findByAccountId(int id) throws Exception {
		return dao.findByAccountId(id);
	}
}
