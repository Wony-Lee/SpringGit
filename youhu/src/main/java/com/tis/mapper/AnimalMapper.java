package com.tis.mapper;

import java.util.List;

import com.tis.domain.AnimalVO;

public interface AnimalMapper {

	//동물 종류로 정보리스트 가져오기 보호동물, 입양완료 동물
	public List<AnimalVO> selectByFormS(String form);
	public List<AnimalVO> selectByFormA(String form);
	
	//각 리스트별로 총 저장갯수 가져오기
	//public int getAnimSecureCount();
	//public int getAnimAdoptCount();
	
	//보호중인 동물, 입양완료 동물 인서트
	/*public AnimalVO anim1InputForm(int astate);
	public AnimalVO anim2InputForm(int astate);*/
	
	//인서트 폼
	public int animInsert(AnimalVO anim);
	
	//Secure이랑 Adopt에서 클릭시 상세정보 불러오기
	public AnimalVO animInfo(String iidx); //매개변수 iidx로 지정
	
	//상세정보에서 수정 폼 불러오기
	public List<AnimalVO> selectByUpdForm(String iidx);
	
	//수정 시 나오는 msg
	public Integer animUpdate(AnimalVO anim);
	
	//삭제하기 누르면 삭제되기
	public int animDelete(String iidx);
}
