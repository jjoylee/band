package com.band.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.band.dao.BandDAO;
import com.band.domain.Band;
@Service
public class BandServiceImpl implements BandService{

	@Inject
	private BandDAO dao;
	
	@Override
	public void insert(Band vo) throws Exception {
		dao.insert(vo);
	}

	@Override
	public void update(Band vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void delete(Band vo) throws Exception {
		dao.delete(vo);
	}

	@Override
	public Band findBand(Band vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.findBand(vo);
	}
	

	@Override
	public List<Band> findBandList(int id) throws Exception {
		// TODO Auto-generated method stub
		return dao.findBandList(id);
	}

	@Override
	public Band findBandForBoard(int id) throws Exception {
		// TODO Auto-generated method stub
		return dao.findBandForBoard(id);
	}
}
