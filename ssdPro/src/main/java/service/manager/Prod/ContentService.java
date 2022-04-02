package service.manager.Prod;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.ProdManageDTO;
import persistence.manager.ProdDAO;

public class ContentService {
	

	private ContentService() {}

	private static ContentService instance = new ContentService();

	public static ContentService getInstance() {
		return instance;
	}

	public ProdManageDTO selectOne(String prd_code){
		
		Connection con = null;

 		try {
			con = ConnectionProvider.getConnection();
			ProdDAO dao = ProdDAO.getInstance();

			 // 1 + 2  트占쏙옙占쏙옙占� 처占쏙옙 占실댐옙 占싸깍옙 占쏙옙占쏙옙
			con.setAutoCommit(false);			

			// 2. 占쌔댐옙 占쌉시깍옙 占쏙옙占쏙옙
			ProdManageDTO dto = null;
			dto = dao.selectOne(con, prd_code);

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
