package persistence.manager;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import domain.StoManageDTO;

public interface IStore {

		// 7. ����¡ ó���� �Խñ� ��� ��ȯ�ϴ� �޼��� ����
		//ArrayList<AdManageDTO> select( int currentPage, int numberPerPage ) throws SQLException;
		
		// 1. �۸�� : ����¡ ó�� X
		List<StoManageDTO> selectList(Connection con) throws SQLException;
		
		// 2. �۾��� = ���� + ���
		int insert( Connection con, StoManageDTO dto) throws SQLException;
		
		
		// 4. �۳��� 
		StoManageDTO selectOne( Connection con, String store_code) throws SQLException;
		
		
		// 6. ����
		int delete(Connection con, String store_code) throws SQLException;
		
		// 7. ����
		int edit(Connection con, String store_code, String manager_code, Integer is_global, String region, String name,String brand,String tel,String address,String operating_time,String lat, String lng) throws SQLException;

		
	
}
