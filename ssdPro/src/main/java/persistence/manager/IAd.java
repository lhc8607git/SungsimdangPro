package persistence.manager;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import domain.AdManageDTO;


public interface IAd {
		// 1. �۸�� : ����¡ ó�� X
		List<AdManageDTO> selectList(Connection con) throws SQLException;
		
		// 2. �۾��� 
		int insert( Connection con, AdManageDTO dto) throws SQLException;
		
		// 3. �۳��� 
		AdManageDTO selectOne( Connection con, String ad_code) throws SQLException;
		
		// 4. ��� �ʿ��� ����
		//int updateRefStep( Connection con, int parentRef, int parentStep) throws SQLException;
		
		// 5. ����
		int delete(Connection con, String ad_code) throws SQLException;
		
		// 6. ����
		int edit(Connection con, String ad_code, String manager_code, String title, String content) throws SQLException;

		// 7. �˻� �޼��� ����
		//ArrayList<BoardDTO> search( int currentPage, int numberPerPage, int searchCondition, String searchWord) throws SQLException;

		// 8. �� ���ڵ���� ��ȯ�ϴ� �޼��� ����
		int getTotalRecords() throws SQLException;

		// 9. �˻��� �� ���ڵ���� ��ȯ�ϴ� �޼��� ���� +  �˻�����/�˻���
		//int getTotalRecords(int searchCondition, String searchWord) throws SQLException;
	
		// 7. ����¡ ó���� �Խñ� ��� ��ȯ�ϴ� �޼��� ����
		//ArrayList<AdManageDTO> select( int currentPage, int numberPerPage ) throws SQLException;
		
}
