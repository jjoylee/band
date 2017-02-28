package com.band.web;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.band.dao.BandDAO;
import com.band.domain.Band;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
	locations={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})

public class BandDAOTest {
	
	@Inject
	private BandDAO dao;
	
	@Test
	public void testInsert()throws Exception{
		Band vo = new Band();
		vo.setName("그리스도");
		vo.setLeaderAccountId(2);
		dao.insert(vo);
	}
	
	@Test
	public void testUpdate()throws Exception{
		Band vo = new Band();
		vo.setId(13);
		vo.setLeaderAccountId(2);
		vo.setName("name");
		dao.update(vo);
	}
	
	@Test
	public void testDelete()throws Exception{
		Band vo = new Band();
		vo.setId(13);
		dao.delete(vo);
	}
}
