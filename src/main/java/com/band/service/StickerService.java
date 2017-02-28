package com.band.service;

import org.springframework.stereotype.Service;

import com.band.domain.Sticker;
@Service
public interface StickerService {
	public void insert(Sticker vo) throws Exception;
	
	public void update(Sticker vo) throws Exception;
	
	public void delete(Sticker vo) throws Exception;
	
	public Sticker findSticker(Sticker vo) throws Exception;
}
