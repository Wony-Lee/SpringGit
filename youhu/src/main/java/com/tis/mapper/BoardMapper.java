package com.tis.mapper;

import java.util.List;
import java.util.Map;

import com.tis.domain.BoardVO;
import com.tis.domain.PagingVO;

public interface BoardMapper {
	
	int boardInsert(BoardVO bvo);
	List<BoardVO> getBoardList();
	int getBoardCount();
	BoardVO boardInfo(int bidx);
	int boardEdit(BoardVO bEdit);
	
	// 게시물 가져오기
	List<BoardVO> selectAllBoard(PagingVO paging);
	List<BoardVO> selectAllBoard(Map<String,Integer>map);
	
}
