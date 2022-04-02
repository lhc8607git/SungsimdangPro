package service.manager.ad;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.AdManageDTO;
import persistence.manager.AdDAO;

public class WriteService {

		// 1. ΩÃ±€≈Ê
		private WriteService() {}

		private static WriteService instance = new WriteService();

		public static WriteService getInstance() {
			return instance;
		}

		
		public int write( AdManageDTO dto ){
			
			Connection con = null;
			int rowCount = 0;

	 		try {
				con = ConnectionProvider.getConnection();
				AdDAO dao = AdDAO.getInstance();
				
				con.setAutoCommit(false);

				rowCount = dao.insert(con, dto);
				 
				con.commit();

			} catch (NamingException | SQLException e) {
				JdbcUtil.rollback(con);
			} finally {
				JdbcUtil.close(con);
			}
	 		return rowCount;
		}
	
}
