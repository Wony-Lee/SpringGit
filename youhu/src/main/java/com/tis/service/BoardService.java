package com.tis.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.tis.domain.BoardVO;
import com.tis.domain.PagingVO;

@Service
public interface BoardService {

	public List<BoardVO> getBoardList();
	int boardInsert(BoardVO bvo);
	int getBoardCount(PagingVO page);
	BoardVO boardInfo(int bidx);
	int boardEdit(BoardVO bEdit);
	List<BoardVO> selectAllBoard(PagingVO paging);
	List<BoardVO> selectAllBoard(Map<String,Integer> map);
	int getBoardCount();
}
