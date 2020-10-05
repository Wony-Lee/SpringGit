package com.tis.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ReviewVO {
	
	private int ridx;
	private String subject;
	private String name;
	private String content;
	private Timestamp indate;
	private String image1;
	private String imgInp1;
	private String center; 
	private int downcg_code;
	private int midx;
}
