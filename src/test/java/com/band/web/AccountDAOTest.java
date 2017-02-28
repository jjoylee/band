package com.band.web;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.*;
import org.springframework.test.context.junit4.*;

import com.band.dao.AccountDAO;
import com.band.domain.Account;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
	locations={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})

public class AccountDAOTest {

	@Inject
	private AccountDAO dao;
	@Test
	public void testInsert()throws Exception{
		Account vo = new Account();
		vo.setEmail("user1@gmail.com");
		vo.setName("user01");
		vo.setPassword("user01");
		dao.insert(vo);
	}
	
	@Test
	public void testUpdate()throws Exception
	{
		Account vo = new Account();
		vo.setId(1);
		vo.setEmail("user0@gmail.com");
		vo.setName("user00");
		vo.setPassword("user00");
		dao.update(vo);
	}
	
	@Test
	public void testDelete()throws Exception
	{
		Account vo = new Account();
		vo.setId(1);
		dao.delete(vo);
	}
}
