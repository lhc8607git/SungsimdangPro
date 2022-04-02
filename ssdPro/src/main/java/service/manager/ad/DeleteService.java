package service.manager.ad;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import persistence.manager.AdDAO;

public class DeleteService {
	
	// 1. ΩÃ±€≈Ê
	private DeleteService() {}

	private static DeleteService instance = new DeleteService();

	public static DeleteService getInstance() {
		return instance;
	}

	public int delete(String ad_code){
		
		Connection con = null;

		int rowCount = -1;

 		try {
			con = ConnectionProvider.getConnection();
			AdDAO dao = AdDAO.getInstance();
			
			con.setAutoCommit(false);
	
			rowCount = dao.delete(con, ad_code);

			con.commit();		
	
			return rowCount;

		} catch (NamingException | SQLException e) { 
			JdbcUtil.rollback(con);			
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
}
