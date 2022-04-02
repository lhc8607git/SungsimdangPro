package persistence.manager;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import domain.NoticeManageDTO;


public interface INotice {
		// 7. 페이징 처리된 게시글 목록 반환하는 메서드 선언
		//ArrayList<FaqManageDTO> select( int currentPage, int numberPerPage ) throws SQLException;
		
		// 1. 글목록 
		List<NoticeManageDTO> selectList(Connection con) throws SQLException;
		
		// 2. 글쓰기
		int insert( Connection con, NoticeManageDTO dto) throws SQLException;
		
		// 3. 조회수 1증가
		int updateReadCount( Connection con, String notice_code) throws SQLException;
		
		// 4. 글내용 
		NoticeManageDTO selectOne( Connection con, String notice_code) throws SQLException;
		
		
		
		// 6. 삭제
		int delete(Connection con, String notice_code) throws SQLException;
		
		// 7. 수정
		int edit(Connection con, String notice_code, String manager_code, String title, String content, int is_fix, String img) throws SQLException;
	
		
	
}
