package com.tis.persistence;

import java.util.List;

import com.tis.domain.ReviewVO;

public interface ReviewDAO {

	int reviewInsert(ReviewVO revo);
	List<ReviewVO> getReviewList();
	int getReviewCount();
}
