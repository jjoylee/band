package com.band.dao;

import com.band.domain.StickerPost;

public interface StickerPostDAO {
	public void insert(StickerPost vo) throws Exception;
	
	public void update(StickerPost vo) throws Exception;
	
	public void delete(StickerPost vo) throws Exception;
	
	public StickerPost findStickerPost(StickerPost vo) throws Exception;
}
