package com.tis.service;

import java.util.List;

import com.tis.domain.AnimalVO;
import com.tis.domain.BoardVO;

public interface AnimalService {

	//��ȣ���� ���� �ҷ����� �Ϸ�
	public List<AnimalVO> selectByFormS(String form);
	
	//�Ծ�Ϸ� ���� �ҷ����� �Ϸ�
	public List<AnimalVO> selectByFormA(String form);
	
	//public int getAnimSecureCount();
	//public int getAnimAdoptCount();
	
	//�μ�Ʈ �Ϸ�
	public int animInsert(AnimalVO anim);
	
	//����� ���� ������ ���ϰ� �ҷ�����
	public AnimalVO animInfo(String iidx);
	
	//�󼼺��� - ������Ʈ �� - �����ϱ�
	public Integer animUpdate(AnimalVO anim);
	
	//�󼼺��⿡�� �����ϱ� - �ٷν���
	public int animDelete(String iidx);

	//�� ��ȣ(iidx)�� ������Ʈ ���� ����� ������ �ҷ����� 
	public List<AnimalVO> selectByUpdForm(String iidx);

	

	

//	AnimalVO animInsert(AnimalVO anim);

}
