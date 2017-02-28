package com.band.dao;

import com.band.domain.BandAccount;

public interface BandAccountDAO {
	public void insert(BandAccount vo) throws Exception;
	
	public void update(BandAccount vo) throws Exception;
	
	public void delete(BandAccount vo) throws Exception;
	
	public int countBand(int id)throws Exception;
}
