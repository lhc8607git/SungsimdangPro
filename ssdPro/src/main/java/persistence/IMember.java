package persistence;

import domain.Member;

public interface IMember {
	int checkId(String id) throws Exception;
	
	int join(Member member) throws Exception;
	
	Member login(String id, String pass) throws Exception;
	
	String getGrade(String memg_code) throws Exception;
	
	

}
