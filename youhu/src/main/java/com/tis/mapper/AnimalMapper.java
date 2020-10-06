package com.tis.mapper;

import java.util.List;

import com.tis.domain.AnimalVO;

public interface AnimalMapper {

	//���� ������ ��������Ʈ �������� ��ȣ����, �Ծ�Ϸ� ����
	public List<AnimalVO> selectByFormS(String form);
	public List<AnimalVO> selectByFormA(String form);
	
	//�� ����Ʈ���� �� ���尹�� ��������
	//public int getAnimSecureCount();
	//public int getAnimAdoptCount();
	
	//��ȣ���� ����, �Ծ�Ϸ� ���� �μ�Ʈ
	/*public AnimalVO anim1InputForm(int astate);
	public AnimalVO anim2InputForm(int astate);*/
	
	//�μ�Ʈ ��
	public int animInsert(AnimalVO anim);
	
	//Secure�̶� Adopt���� Ŭ���� ������ �ҷ�����
	public AnimalVO animInfo(String iidx); //�Ű����� iidx�� ����
	
	//���������� ���� �� �ҷ�����
	public List<AnimalVO> selectByUpdForm(String iidx);
	
	//���� �� ������ msg
	public Integer animUpdate(AnimalVO anim);
	
	//�����ϱ� ������ �����Ǳ�
	public int animDelete(String iidx);
}
