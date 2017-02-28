package com.band.service;

import org.springframework.stereotype.Service;

import com.band.domain.StickerPost;
@Service
public interface StickerPostService {
	public void insert(StickerPost vo) throws Exception;
	
	public void update(StickerPost vo) throws Exception;
	
	public void delete(StickerPost vo) throws Exception;
	
	public StickerPost findSticker(StickerPost vo) throws Exception;
}
