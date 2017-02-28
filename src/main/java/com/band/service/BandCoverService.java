package com.band.service;

import org.springframework.stereotype.Service;

import com.band.domain.BandCover;
@Service
public interface BandCoverService {
	public void insert(BandCover vo) throws Exception;
	
	public void update(BandCover vo) throws Exception;
	
	public void delete(BandCover vo) throws Exception;
	
	public BandCover findBandCover(BandCover vo) throws Exception;
}
