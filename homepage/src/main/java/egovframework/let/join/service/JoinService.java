package egovframework.let.join.service;


public interface JoinService {
	
	//회원가입
	public String insertJoin(JoinVO vo) throws Exception;
	
	//아이디 중복체크
	public int duplicateCheck(JoinVO vo) throws Exception;
	
	
}