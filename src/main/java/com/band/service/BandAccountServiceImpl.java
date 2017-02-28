package com.band.service;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.band.dao.BandAccountDAO;
import com.band.domain.BandAccount;
@Service
public class BandAccountServiceImpl implements BandAccountService{

	@Inject
	private BandAccountDAO dao;
	
	@Override
	public void insert(BandAccount vo) throws Exception {
		dao.insert(vo);
	}

	@Override
	public void update(BandAccount vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void delete(BandAccount vo) throws Exception {
		dao.delete(vo);
	}

	@Override
	public int countBand(int id) throws Exception {
		// TODO Auto-generated method stub
		return dao.countBand(id);
	}

}
