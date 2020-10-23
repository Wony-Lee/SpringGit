package com.tis.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tis.domain.BoardVO;
import com.tis.domain.PagingVO;
import com.tis.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardMapper boardMapper;
	
	@Override
	public List<BoardVO> getBoardList() {
		
		return this.boardMapper.getBoardList();
	}

	@Override
	public int boardInsert(BoardVO bvo) {
		
		return this.boardMapper.boardInsert(bvo);
	}

	@Override
	public int getBoardCount() {
		
		return this.boardMapper.getBoardCount();
	}

	@Override
	public BoardVO boardInfo(int bidx) {
		
		return this.boardMapper.boardInfo(bidx);
	}

	@Override
	public int boardEdit(BoardVO bEdit) {
		return this.boardMapper.boardEdit(bEdit);
	}

	@Override
	public List<BoardVO> selectAllBoard(PagingVO paging) {
		return this.boardMapper.selectAllBoard(paging);
	}

	@Override
	public List<BoardVO> selectAllBoard(Map<String, Integer> map) {
		return this.boardMapper.selectAllBoard(map);
	}

	@Override
	public int getBoardCount(PagingVO page) {
		return this.boardMapper.getBoardCount();
	}
	
}
