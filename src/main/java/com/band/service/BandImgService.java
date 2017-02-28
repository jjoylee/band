package com.band.service;

import org.springframework.stereotype.Service;

import com.band.domain.BandImg;
@Service
public interface BandImgService {
	public void insert(BandImg vo) throws Exception;
	
	public void update(BandImg vo) throws Exception;
	
	public void delete(BandImg vo) throws Exception;
	
	public BandImg findByImgUrl(String bandImgUrl) throws Exception;
}
