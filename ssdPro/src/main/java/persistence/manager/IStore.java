package persistence.manager;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import domain.StoManageDTO;

public interface IStore {

		// 7. 페이징 처리된 게시글 목록 반환하는 메서드 선언
		//ArrayList<AdManageDTO> select( int currentPage, int numberPerPage ) throws SQLException;
		
		// 1. 글목록 : 페이징 처리 X
		List<StoManageDTO> selectList(Connection con) throws SQLException;
		
		// 2. 글쓰기 = 새글 + 답글
		int insert( Connection con, StoManageDTO dto) throws SQLException;
		
		
		// 4. 글내용 
		StoManageDTO selectOne( Connection con, String store_code) throws SQLException;
		
		
		// 6. 삭제
		int delete(Connection con, String store_code) throws SQLException;
		
		// 7. 수정
		int edit(Connection con, String store_code, String manager_code, Integer is_global, String region, String name,String brand,String tel,String address,String operating_time,String lat, String lng) throws SQLException;

		
	
}
