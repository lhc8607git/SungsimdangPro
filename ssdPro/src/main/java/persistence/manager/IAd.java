package persistence.manager;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import domain.AdManageDTO;


public interface IAd {
		// 1. 글목록 : 페이징 처리 X
		List<AdManageDTO> selectList(Connection con) throws SQLException;
		
		// 2. 글쓰기 
		int insert( Connection con, AdManageDTO dto) throws SQLException;
		
		// 3. 글내용 
		AdManageDTO selectOne( Connection con, String ad_code) throws SQLException;
		
		// 4. 답글 필요한 쿼리
		//int updateRefStep( Connection con, int parentRef, int parentStep) throws SQLException;
		
		// 5. 삭제
		int delete(Connection con, String ad_code) throws SQLException;
		
		// 6. 수정
		int edit(Connection con, String ad_code, String manager_code, String title, String content) throws SQLException;

		// 7. 검색 메서드 선언
		//ArrayList<BoardDTO> search( int currentPage, int numberPerPage, int searchCondition, String searchWord) throws SQLException;

		// 8. 총 레코드수를 반환하는 메서드 선언
		int getTotalRecords() throws SQLException;

		// 9. 검색된 총 레코드수를 반환하는 메서드 선언 +  검색조건/검색어
		//int getTotalRecords(int searchCondition, String searchWord) throws SQLException;
	
		// 7. 페이징 처리된 게시글 목록 반환하는 메서드 선언
		//ArrayList<AdManageDTO> select( int currentPage, int numberPerPage ) throws SQLException;
		
}
