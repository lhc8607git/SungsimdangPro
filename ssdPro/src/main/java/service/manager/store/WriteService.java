package service.manager.store;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;



import domain.StoManageDTO;
import persistence.manager.StoDAO;


public class WriteService {

		private WriteService() {}

		private static WriteService instance = new WriteService();

		public static WriteService getInstance() {
			return instance;
		}

		
		public int write( StoManageDTO dto ){
			
			Connection con = null;
			int rowCount = 0;

	 		try {
				con = ConnectionProvider.getConnection();
				StoDAO dao = StoDAO.getInstance();
				
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
