package service.manager.faq;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import persistence.manager.FaqDAO;

public class DeleteService {
	
	// 1. ΩÃ±€≈Ê
	private DeleteService() {}
	private static DeleteService instance = new DeleteService();
	public static DeleteService getInstance() {
		return instance;
	}

	public int delete(String faq_code){
		
		Connection con = null;
		int rowCount = -1;
 		try {
			con = ConnectionProvider.getConnection();
			FaqDAO dao = FaqDAO.getInstance();
			
			con.setAutoCommit(false);
	
			rowCount = dao.delete(con, faq_code);

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
