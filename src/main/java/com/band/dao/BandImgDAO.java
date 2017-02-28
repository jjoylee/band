package com.band.dao;

import com.band.domain.BandImg;

public interface BandImgDAO {
	public void insert(BandImg vo) throws Exception;
	
	public void update(BandImg vo) throws Exception;
	
	public void delete(BandImg vo) throws Exception;
	
	public BandImg findByImgUrl(String bandImgUrl) throws Exception;
}
