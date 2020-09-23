package com.tis.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.tis.domain.ApplicationVO;


@Service
public interface ApplicationService {

	// �Խñ� �޾ƿ���
	public List<ApplicationVO> getAppList();
	
	int getAppCount();
	
	 int applicationInsert(ApplicationVO appInsert); // �۵��
	 int applicationUpdate(ApplicationVO appUpdate); // �ۼ���

	ApplicationVO AppInfo(int aidx);


	
	
}
