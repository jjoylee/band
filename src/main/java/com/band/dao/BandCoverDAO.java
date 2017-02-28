package com.band.dao;

import com.band.domain.BandCover;

public interface BandCoverDAO {
	public void insert(BandCover vo) throws Exception;
	
	public void update(BandCover vo) throws Exception;
	
	public void delete(BandCover vo) throws Exception;
	
	public BandCover findBandCover(BandCover vo) throws Exception;
}
