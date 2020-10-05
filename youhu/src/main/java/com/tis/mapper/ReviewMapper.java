package com.tis.mapper;

import java.util.List;

import com.tis.domain.ReviewVO;

public interface ReviewMapper {

	int reviewInsert(ReviewVO revo);
	List<ReviewVO> getReviewList();
	int getReviewCount();
}
