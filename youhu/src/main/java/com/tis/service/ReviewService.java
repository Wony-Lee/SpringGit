package com.tis.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.tis.domain.ReviewVO;

@Service
public interface ReviewService {

	int reviewInsert(ReviewVO revo);
	List<ReviewVO> getReviewList();
	int getReviewCount();
}
