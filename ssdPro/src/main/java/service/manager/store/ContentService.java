package service.manager.store;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.StoManageDTO;
import persistence.manager.StoDAO;

public class ContentService {
	
	// 1. �̱���
	private ContentService() {}

	private static ContentService instance = new ContentService();

	public static ContentService getInstance() {
		return instance;
	}

	public StoManageDTO selectOne(String store_code){
		
		Connection con = null;

 		try {
			con = ConnectionProvider.getConnection();

			StoDAO dao = StoDAO.getInstance();
			// 1 + 2  Ʈ����� ó�� �Ǵ� �α� ����
			con.setAutoCommit(false);			

			// 2. �ش� �Խñ� ����
			StoManageDTO dto = null;
			dto = dao.selectOne(con, store_code);

			con.commit();			

			return dto;
		} catch (NamingException | SQLException e) { 
			JdbcUtil.rollback(con);			
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
}
