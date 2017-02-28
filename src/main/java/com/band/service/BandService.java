package com.band.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.band.domain.Band;
@Service
public interface BandService {
	public void insert(Band vo) throws Exception;
	
	public void update(Band vo) throws Exception;
	
	public void delete(Band vo) throws Exception;
	
	public Band findBand(Band vo) throws Exception;
	
	public List<Band> findBandList(int id) throws Exception;
	
	public Band findBandForBoard(int id) throws Exception;
}
