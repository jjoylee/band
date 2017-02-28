package com.band.dao;

import com.band.domain.Sticker;

public interface StickerDAO {
	public void insert(Sticker vo) throws Exception;
	
	public void update(Sticker vo) throws Exception;
	
	public void delete(Sticker vo) throws Exception;
	
	public Sticker findSticker(Sticker vo) throws Exception;
}
