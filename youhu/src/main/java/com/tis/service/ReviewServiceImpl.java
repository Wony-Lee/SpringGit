package com.tis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tis.domain.ReviewVO;
import com.tis.mapper.ReviewMapper;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Inject
	private ReviewMapper reviewmapper;
	
	@Override
	public int reviewInsert(ReviewVO revo) {
		
		return this.reviewmapper.reviewInsert(revo);
	}

	@Override
	public List<ReviewVO> getReviewList() {
		
		return this.reviewmapper.getReviewList();
	}

	@Override
	public int getReviewCount() {
		
		return this.reviewmapper.getReviewCount();
	}

}
