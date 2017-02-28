package com.band.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.band.dao.StickerPostDAO;
import com.band.domain.StickerPost;
@Service
public class StickerPostServiceImpl implements StickerPostService{

	@Inject
	private StickerPostDAO dao;
	
	@Override
	public void insert(StickerPost vo) throws Exception {
		dao.insert(vo);
	}

	@Override
	public void update(StickerPost vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void delete(StickerPost vo) throws Exception {
		dao.delete(vo);
	}

	@Override
	public StickerPost findSticker(StickerPost vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.findStickerPost(vo);
	}
}