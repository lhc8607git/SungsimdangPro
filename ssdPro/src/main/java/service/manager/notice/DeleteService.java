package service.manager.notice;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import persistence.manager.NoticeDAO;


public class DeleteService {
	
	// 1. ΩÃ±€≈Ê
	private DeleteService() {}
	private static DeleteService instance = new DeleteService();
	public static DeleteService getInstance() {
		return instance;
	}

	public int delete(String notice_code){
		
		Connection con = null;
		int rowCount = -1;

 		try {
			con = ConnectionProvider.getConnection();
			NoticeDAO dao = NoticeDAO.getInstance();
			
			con.setAutoCommit(false);
	
			rowCount = dao.delete(con, notice_code);

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
