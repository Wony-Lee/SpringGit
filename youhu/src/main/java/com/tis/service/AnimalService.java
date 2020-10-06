package com.tis.service;

import java.util.List;

import com.tis.domain.AnimalVO;
import com.tis.domain.BoardVO;

public interface AnimalService {

	//보호중인 동물 불러오기 완료
	public List<AnimalVO> selectByFormS(String form);
	
	//입양완료 동물 불러오기 완료
	public List<AnimalVO> selectByFormA(String form);
	
	//public int getAnimSecureCount();
	//public int getAnimAdoptCount();
	
	//인서트 완료
	public int animInsert(AnimalVO anim);
	
	//저장된 동물 정보를 상세하게 불러오기
	public AnimalVO animInfo(String iidx);
	
	//상세보기 - 업데이트 폼 - 수정하기
	public Integer animUpdate(AnimalVO anim);
	
	//상세보기에서 삭제하기 - 바로실행
	public int animDelete(String iidx);

	//글 번호(iidx)로 업데이트 폼에 저장된 정보를 불러오기 
	public List<AnimalVO> selectByUpdForm(String iidx);

	

	

//	AnimalVO animInsert(AnimalVO anim);

}
