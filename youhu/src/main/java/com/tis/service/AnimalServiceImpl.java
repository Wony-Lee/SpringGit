package com.tis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tis.domain.AnimalVO;
import com.tis.mapper.AnimalMapper;
@Service
public class AnimalServiceImpl implements AnimalService {

	//맵퍼(자바) 인젝트
	@Inject
	private AnimalMapper animalMapper;

	//보호동물 리스트 불러오기
	@Override
	public List<AnimalVO> selectByFormS(String form) {
		return this.animalMapper.selectByFormS(form);
	}

	//입양동물 리스트 불러오기
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

	//인서트 액션 컨트롤러 - 서비스 - 서비스임플 - 맵퍼자바 - 맵퍼xml - 완료
	@Override
	public int animInsert(AnimalVO anim) {
		return this.animalMapper.animInsert(anim);
	}

	//리스트에서 상세정보 표기
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
