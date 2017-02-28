package com.band.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.band.dao.BandCoverDAO;
import com.band.domain.BandCover;
@Service
public class BandCoverServiceImpl implements BandCoverService{

	@Inject
	private BandCoverDAO dao;
	
	@Override
	public void insert(BandCover vo) throws Exception {
		dao.insert(vo);
	}

	@Override
	public void update(BandCover vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void delete(BandCover vo) throws Exception {
		dao.delete(vo);
	}

	@Override
	public BandCover findBandCover(BandCover vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.findBandCover(vo);
	}
}
