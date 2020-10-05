package com.tis.youhu;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.tis.common.util.CommonUtil;
import com.tis.domain.ReviewVO;
import com.tis.service.ReviewService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class ReviewController {

	@Inject
	private ReviewService reSvc;
	
	@Inject
	private CommonUtil util;

	@RequestMapping("/reviewList")
	public String reviewList(Model model, @RequestParam(defaultValue = "0") int ridx) {
		int count = this.reSvc.getReviewCount();

		List<ReviewVO> reviewList = this.reSvc.getReviewList();

		model.addAttribute("ReviewList", reviewList);
		model.addAttribute("count", count);

		return "youhu/ReviewList";
	}

	@RequestMapping("/reWrite")
	public String reWrite(Model model) {

		return "youhu/ReviewWrite";
	}

	@PostMapping("/reWrite")
	public String reWriteEnd(Model model, HttpServletRequest req, @ModelAttribute("Review") ReviewVO revo,
			@RequestParam("mimage1") MultipartFile mimage1) {
		log.info("revo===>" + revo);

	

		ServletContext ctx = req.getServletContext();
		String upDir = ctx.getRealPath("/Upload");
		log.info("updir===>" + upDir);
		
		if(!mimage1.isEmpty()) {
			try {
				mimage1.transferTo(new File(upDir, mimage1.getOriginalFilename()));
				revo.setImage1(mimage1.getOriginalFilename());
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			revo.setImage1("noimage.png");
		}
		
		int n = reSvc.reviewInsert(revo);
		
		String str = (n > 0) ? "등록 성공" : "등록 실패";
		String loc = (n > 0) ? "reviewList" : "reWrite";

		model.addAttribute("message", str);
		model.addAttribute("loc", loc);

		return util.addMSgLoc(model, str, loc);
	}

}
