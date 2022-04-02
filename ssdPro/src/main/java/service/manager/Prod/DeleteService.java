package service.manager.Prod;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import persistence.manager.ProdDAO;

public class DeleteService {
	
	// 1. �̱���
	private DeleteService() {}

	private static DeleteService instance = new DeleteService();

	public static DeleteService getInstance() {
		return instance;
	}

	public int delete(String prd_code){
		
		Connection con = null;
		int rowCount = -1;

 		try {
			con = ConnectionProvider.getConnection();
			ProdDAO dao = ProdDAO.getInstance();
			
			con.setAutoCommit(false);
	
			rowCount = dao.delete2(con, prd_code);

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
