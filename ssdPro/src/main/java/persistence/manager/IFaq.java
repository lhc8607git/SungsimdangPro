package persistence.manager;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import domain.FaqManageDTO;

public interface IFaq {
		// 7. ����¡ ó���� �Խñ� ��� ��ȯ�ϴ� �޼��� ����
		//ArrayList<AdManageDTO> select( int currentPage, int numberPerPage ) throws SQLException;
		
		// 1. �۸�� : ����¡ ó�� X
		List<FaqManageDTO> selectList(Connection con) throws SQLException;
		
		// 2. �۾��� = ���� + ���
		int insert( Connection con, FaqManageDTO dto) throws SQLException;
		
		
		// 4. �۳��� 
		FaqManageDTO selectOne( Connection con, String faq_code) throws SQLException;
		
		
		// 6. ����
		int delete(Connection con, String faq_code) throws SQLException;
		
		// 7. ����
		int edit(Connection con, String faq_code, String manager_code, String title, String content) throws SQLException;

	
}
