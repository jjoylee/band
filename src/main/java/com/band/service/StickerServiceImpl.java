package com.band.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.band.dao.StickerDAO;
import com.band.domain.Sticker;
@Service
public class StickerServiceImpl implements StickerService{

	@Inject
	private StickerDAO dao;
	
	@Override
	public void insert(Sticker vo) throws Exception {
		dao.insert(vo);
	}

	@Override
	public void update(Sticker vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void delete(Sticker vo) throws Exception {
		dao.delete(vo);
	}

	@Override
	public Sticker findSticker(Sticker vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.findSticker(vo);
	}
}