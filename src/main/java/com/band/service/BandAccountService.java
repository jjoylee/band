package com.band.service;

import org.springframework.stereotype.Service;

import com.band.domain.BandAccount;

@Service
public interface BandAccountService {
	public void insert(BandAccount vo) throws Exception;
	
	public void update(BandAccount vo) throws Exception;
	
	public void delete(BandAccount vo) throws Exception;

	public int countBand(int id) throws Exception;
}
