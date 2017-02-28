package com.band.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.band.dao.BandImgDAO;
import com.band.domain.BandImg;
@Service
public class BandImgServiceImpl implements BandImgService{

	@Inject
	private BandImgDAO dao;
	
	@Override
	public void insert(BandImg vo) throws Exception {
		dao.insert(vo);
	}

	@Override
	public void update(BandImg vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void delete(BandImg vo) throws Exception {
		dao.delete(vo);
	}

	@Override
	public BandImg findByImgUrl(String bandImgUrl) throws Exception {
		// TODO Auto-generated method stub
		return dao.findByImgUrl(bandImgUrl);
	}
}
