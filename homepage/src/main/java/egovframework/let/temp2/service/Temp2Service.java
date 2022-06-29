package egovframework.let.temp2.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface Temp2Service {

	public Temp2VO selectTemp(Temp2VO vo) throws Exception;
	
	//임시데이터 목록 가져오기
	public List<EgovMap> selectTempList(Temp2VO vo) throws Exception;
	
	//임시데이터 등록하기
	public String insertTemp(Temp2VO vo) throws Exception;
	
	
	//임시데이터 수정하기
	public void updateTemp(Temp2VO vo)throws Exception;
	
	//임시데이터 삭제하기
	public void deleteTemp(Temp2VO vo)throws Exception;

	   // 임시데이터 목록 수
	   public int selectTempListCnt(Temp2VO vo) throws Exception;
}
