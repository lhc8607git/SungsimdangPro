package persistence.manager;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import domain.NoticeManageDTO;


public interface INotice {
		// 7. ����¡ ó���� �Խñ� ��� ��ȯ�ϴ� �޼��� ����
		//ArrayList<FaqManageDTO> select( int currentPage, int numberPerPage ) throws SQLException;
		
		// 1. �۸�� 
		List<NoticeManageDTO> selectList(Connection con) throws SQLException;
		
		// 2. �۾���
		int insert( Connection con, NoticeManageDTO dto) throws SQLException;
		
		// 3. ��ȸ�� 1����
		int updateReadCount( Connection con, String notice_code) throws SQLException;
		
		// 4. �۳��� 
		NoticeManageDTO selectOne( Connection con, String notice_code) throws SQLException;
		
		
		
		// 6. ����
		int delete(Connection con, String notice_code) throws SQLException;
		
		// 7. ����
		int edit(Connection con, String notice_code, String manager_code, String title, String content, int is_fix, String img) throws SQLException;
	
		
	
}
