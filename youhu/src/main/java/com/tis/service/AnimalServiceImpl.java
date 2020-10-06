package com.tis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tis.domain.AnimalVO;
import com.tis.mapper.AnimalMapper;
@Service
public class AnimalServiceImpl implements AnimalService {

	//����(�ڹ�) ����Ʈ
	@Inject
	private AnimalMapper animalMapper;

	//��ȣ���� ����Ʈ �ҷ�����
	@Override
	public List<AnimalVO> selectByFormS(String form) {
		return this.animalMapper.selectByFormS(form);
	}

	//�Ծ絿�� ����Ʈ �ҷ�����
	@Override
	public List<AnimalVO> selectByFormA(String form) {
		return this.animalMapper.selectByFormA(form);
	}
	
	/*@Override
	public int getAnimSecureCount() {
		
		return this.animalMapper.getAnimSecureCount();
	}

	@Override
	public int getAnimAdoptCount() {
		
		return this.animalMapper.getAnimAdoptCount();
	}*/

	//�μ�Ʈ �׼� ��Ʈ�ѷ� - ���� - �������� - �����ڹ� - ����xml - �Ϸ�
	@Override
	public int animInsert(AnimalVO anim) {
		return this.animalMapper.animInsert(anim);
	}

	//����Ʈ���� ������ ǥ��
	@Override
	public AnimalVO animInfo(String iidx) {
		return this.animalMapper.animInfo(iidx);
	}

	@Override
	public int animDelete(String iidx) {
		
		return this.animalMapper.animDelete(iidx);
	}

	@Override
	public Integer animUpdate(AnimalVO anim) {
		
		return this.animalMapper.animUpdate(anim);
	}

	@Override
	public List<AnimalVO> selectByUpdForm(String iidx) {
		
		return this.animalMapper.selectByUpdForm(iidx);
	}

}
