package com.tis.domain;

import java.io.Serializable;
import java.sql.Date;

import lombok.Data;

@Data
public class AnimalVO implements Serializable {

	private String iidx;
	private String name;
	private String title;
	private String image;
	private String color;
	private String sex;
	private String weight;
	private String trans;
	private String addr;
	private String indate;
	private int astate;
	private String center;
	private String protect;
	private String tel;
	private Date intdate;
	private String form;
	
	private String filename;	 
	private String originFilename;	
	private long filesize;
	
	
}