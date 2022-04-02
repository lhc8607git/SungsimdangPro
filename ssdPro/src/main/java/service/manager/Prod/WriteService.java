package service.manager.Prod;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.ProdManageDTO;
import persistence.manager.ProdDAO;


public class WriteService {


		private WriteService() {}

		private static WriteService instance = new WriteService();

		public static WriteService getInstance() {
			return instance;
		}

		
		public int write( ProdManageDTO dto ){
			
			Connection con = null;
			int rowCount = 0;
			
	 		try {
				con = ConnectionProvider.getConnection();
				ProdDAO dao = ProdDAO.getInstance();
				
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
