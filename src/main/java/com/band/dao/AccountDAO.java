package com.band.dao;

import com.band.domain.Account;

public interface AccountDAO {
	public void insert(Account vo) throws Exception;
	
	public void update(Account vo) throws Exception;
	
	public void changePwd(Account vo) throws Exception;
	
	public void delete(Account vo) throws Exception;
	
	public String findPwd(Account vo) throws Exception;
	
	public Account findByEmail (String email) throws Exception;
	
	public Account findByAccountId (int id) throws Exception;
}
